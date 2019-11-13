function startDungeon()
	if startRegion:existsClick(Pattern("startDungeon.png"):similar(0.5), 2) then
		wait(10) -- Attend que le combat soit bien commencé
		autoButtonRegion:existsClick(Pattern("play.png"):similar(imgAccuracy), 2)
		restartDungeon()
	else
		print ("Couldn't find Start button.")
	end
end

function restartDungeon()
	printBattleMessage()
	while not victoryRegion:exists(Pattern("victory.png"):similar(imgAccuracy), 1) and not victoryRegion:exists(Pattern("defeated.png"):similar(imgAccuracy), 1) do
	end
	if victoryRegion:existsClick(Pattern("victory.png"):similar(imgAccuracy), 1) then
		winCount = winCount + 1
		wait(3) -- Attend sur le coffre de fin
		click(victoryChestLocation)
		wait(2) -- Attend la fin de l'animation
		sellRune()
		if replayNoRegion:exists(Pattern("replay.png"):similar(imgAccuracy), 5) then
			if noEnergyRegion:exists(Pattern("noEnergy.png"):similar(imgAccuracy), 2) then
				refillEnergy()
			end
			replayNoRegion:existsClick(Pattern("replay.png"):similar(imgAccuracy), 5)
			restartDungeon()
		else
			print ("Replay button not found")
		end
	elseif victoryRegion:existsClick(Pattern("defeated.png"):similar(imgAccuracy), 1) then
		loseCount = loseCount + 1
		if not stopOnDefeat then
			if reviveNoRegion:existsClick(Pattern("bigNo.png"):similar(imgAccuracy), 5) then
				if replayNoRegion:existsClick(Pattern("bigPrepare.png"):similar(imgAccuracy), 2) then
					restartDungeon()
				else
					print ("Replay button not found")
				end
			else
				print ("Couldn't find the No button in reviveNoRegion")
			end
		else
			print ("Bot stopped: You lost a run")
		end
	end
end