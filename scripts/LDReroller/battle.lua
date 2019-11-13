function emptyTeam()
	toast("emptyTeam")
	if slots == 3 then 
		click(monsterLocation31)
		click(monsterLocation32)
		click(monsterLocation33)
	elseif slots == 4 then
		click(monsterLocation41)
		click(monsterLocation42)
		click(monsterLocation43)
		click(monsterLocation44)
	end
end

-- Remplit l'équipe des 3 ou 4 premiers monstres
function fillTeam(number)
	toast("fillTeam")
	if slots == 3 then
		if useRep then
			click(monsterLocation1)
			click(repMonsterLocation)
			click(monsterLocation2)
		else
			click(monsterLocation1)
			click(monsterLocation2)
			click(monsterLocation3)
		end
	elseif slots == 4 then
		if useRep then
			click(monsterLocation1)
			click(repMonsterLocation)
			click(monsterLocation2)
			click(monsterLocation3)
		else
			click(monsterLocation1)
			click(monsterLocation2)
			click(monsterLocation3)
			click(monsterLocation4)
		end
	end
end

function handleBattle()
	toast("handleBattle")
	click(skipHint)
	click(skipHint)
	click(skipHint)
	click(skipHint)

	-- si Boss de Garen -> useRep = true
	if ((fightNumber % 7) == 0) then
		toast("BOSS FIGHT")
		if opponentsRegion:exists(Pattern("garenBoss.png"):similar(imgAccuracy), 1) then
			useRep = true
			desactivateAfter = true
		elseif opponentsRegion:exists(Pattern("sizBoss.png"):similar(imgAccuracy), 1) then
			useRep = true
			desactivateAfter = true
		elseif opponentsRegion:exists(Pattern("kabirBoss.png"):similar(imgAccuracy), 1) then
			useRep = true
			desactivateAfter = true
		elseif opponentsRegion:exists(Pattern("whiteBoss.png"):similar(imgAccuracy), 1) then
			useRep = true
			desactivateAfter = true
		end
	end

	emptyTeam()
	fillTeam()
	click(startBattleLocation)
	fight()
	if desactivateAfter then
		desactivateAfter = false
		useRep = false
	end
end

function fight()
	toast("fight " .. fightNumber)
	wait(8)
	click(Location(1740, 590))
	click(Location(1740, 590))
	click(Location(1740, 590))
	if not goodSpeed and (fightNumber > 1) then
		multiplierButtonRegion:existsClick(Pattern("x1.png"):similar(0.8), 8)
		multiplierButtonRegion:existsClick(Pattern("x2.png"):similar(0.8), 1)
		goodSpeed = true
		toast("Speed changed")
	end
	if not goodAuto and canAuto then
		autoButtonRegion:existsClick(Pattern("play.png"):similar(imgAccuracy), 8)
		goodAuto = true
		toast("Automation changed")
	end
	toast("START")
	while not victoryRegion:exists(Pattern("victory.png"):similar(imgAccuracy), 1) and not victoryRegion:exists(Pattern("defeated.png"):similar(imgAccuracy), 1) do
		if not canAuto then
			while targetArrowRegion:exists(Pattern("targetYellow.png"):similar(imgAccuracy), 1) or targetArrowRegion:exists(Pattern("targetGreen.png"):similar(imgAccuracy), 1) or targetArrowRegion:exists(Pattern("targetRed.png"):similar(imgAccuracy), 1) do
				targetArrowRegion:existsClick(Pattern("targetYellow.png"):targetOffset(Location(0, 210)))
				targetArrowRegion:existsClick(Pattern("targetGreen.png"):targetOffset(Location(0, 210)))
				targetArrowRegion:existsClick(Pattern("targetRed.png"):targetOffset(Location(0, 210)))
			end
		end
		handlePopupFight()
		if conversationRegion1:exists(Pattern("conversation.png"):similar(imgAccuracy), 1) or conversationRegion2:exists(Pattern("conversation.png"):similar(imgAccuracy), 1) then
			conversation()
		end
		if levelUpRegion:exists(Pattern("levelUp.png"):similar(imgAccuracy), 1) then
			if levelUpNumberRegion:existsClick(Pattern("level3.png"):similar(0.9), 1) then
				canAuto = true
				toast("You can auto now")
			else
				levelUpRegion:existsClick(Pattern("levelUp.png"):similar(imgAccuracy), 1)
				toast("GG for level up")
			end
		end
	end
	if victoryRegion:exists(Pattern("victory.png"):similar(imgAccuracy), 1) then
		toast("VICTORY")
		fightNumber = fightNumber + 1
		click(clickConversationLocation)
		wait(1)
		click(clickConversationLocation)
		wait(2)
		runeSellOkRegion:existsClick(Pattern("ok.png"):similar(imgAccuracy), 2)
		wait(1)
		click(skipHint)
		wait(1)
		click(skipHint)
		wait(1)
		if conversationRegion1:exists(Pattern("conversation.png"):similar(imgAccuracy), 1) or conversationRegion2:exists(Pattern("conversation.png"):similar(imgAccuracy), 1) then
			conversation()
		end
		if checkIfMax then
			if first3StarMaxRegion:exists(Pattern("first3StarMax.png"):similar(imgAccuracy), 1) then
				click(clickConversationLocation)
				toast("it was max")
				checkIfMax = false
			end
		end
		if replayNoRegion:existsClick(Pattern("next.png"):similar(imgAccuracy), 2) then
			handleBattle()
		end
	elseif victoryRegion:exists(Pattern("defeated.png"):similar(imgAccuracy), 1) then
		toast("DEFEAT")
		click(noReviveLocation)
		wait(1)
		if levelUpRegion:exists(Pattern("levelUp.png"):similar(imgAccuracy), 1) then
			if levelUpNumberRegion:existsClick(Pattern("level3.png"):similar(0.9), 1) then
				canAuto = true
				toast("You can auto now")
			else
				levelUpRegion:existsClick(Pattern("levelUp.png"):similar(imgAccuracy), 1)
				toast("GG for level up")
			end
		end
		wait(1)
		click(clickConversationLocation)
		wait(0.5)
		click(prepareButtonLocation)
		handleBattle()
	end
end