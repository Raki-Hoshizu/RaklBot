function selectZoneTutorial()
	toast("selectZoneTutorial")
	zoneTutorialArrowRegion:existsClick(Pattern("tutorialArrow3.png"):targetOffset(Location(0, 90)))
end

function setupBattleTutorial()
	toast("setupBattleTutorial")
	setupBattleTutorialArrowRegion:existsClick(Pattern("tutorialArrow3.png"):targetOffset(Location(0, 90)))
end

function selectMonsterTutorial()
	toast("selectMonsterTutorial")
	selectMonsterTutorialRegion:existsClick(Pattern("tutorialArrow3.png"):targetOffset(Location(0, 90)))
	wait(1)
	selectMonsterTutorialRegion:existsClick(Pattern("tutorialArrow3.png"):targetOffset(Location(0, 90)))
end

function startBattleTutorial()
	toast("startBattleTutorial")
	startBattleTutorialRegion:existsClick(Pattern("tutorialArrow3.png"):targetOffset(Location(0, 90)))
end

function monsterRuneTutorial()
	toast("monsterRuneTutorial")
	monsterArrowTutorialRegion:existsClick(Pattern("tutorialArrow3.png"):targetOffset(Location(0, 90)))
	runeArrowTutorialRegion:existsClick(Pattern("tutorialArrow3.png"):targetOffset(Location(0,150)))
	energyArrowTutorialRegion:existsClick(Pattern("tutorialArrow3.png"):targetOffset(Location(0,90)))
	energyRuneArrowTutorialRegion:existsClick(Pattern("tutorialArrow3.png"):targetOffset(Location(0,90)))
	wait(1)
	click(engraveRuneLocation)
	wait(1)
	click(yesEngraveButtonLocation)
	conversation()
	click(rune1Location)
	wait(1)
	click(powerupRuneLocation)
	wait(1)
	click(powerupWindowRuneLocation)
	conversation()
end

function shopTutorial()
	toast("shopTutorial")
	click(shopButtonLocation)
	wait(1)
	click(powerupCircleShopLocation)
	wait(1)
	click(buyButtonLocation)
	wait(1)
	click(yesBuyLocation)
	wait(1)
	click(okPlaceCircleLocation)
	conversation()
	click(powerupButtonLocation)
	wait(1)
	click(powerupHellhoundLocation)
	wait(1)
	click(giveMushroomLocation)
	wait(1)
	click(finalPowerupHellhoundLocation)
	wait(1)
	click(acceptPowerupLocation)
	skipCinematic()
	wait(4)
	click(okAfterPowerupLocation)
	conversation()
end

function openDurandMessage()
	toast("openDurandMessage")
	leftScreenIconsRegion:existsClick(Pattern("tutorialArrow3.png"):targetOffset(Location(0,150)))
	conversation()
end

function summonTutorial()
	toast("summonTutorial")
	click(summonhedgeButtonLocation)
	summonTutorialArrowRegion:existsClick(Pattern("tutorialArrow3.png"):targetOffset(Location(0, 90)))
	wait(1)
	click(summonButtonLocation)
	wait(1)
	click(yesSummonButtonLocation)
	wait(6)
	skipCinematic()
	wait(1)
	click(okSummonButtonLocation)
end

function collectBoxReward(numero)
	toast("collectBoxReward")
	wait(1)
	leftScreenIconsRegion:existsClick(Pattern("giftBox.png"):similar(imgAccuracy), 1)
	if (numero == 1) then
		inboxItemsRegion:existsClick(Pattern("rangerPreview.png"):targetOffset(Location(380, 0)))
	elseif (numero == 2) then
		inboxItemsRegion:existsClick(Pattern("lapisPreview.png"):targetOffset(Location(380, 0)))
	end
	if (numero == 1) or (numero == 2) then
		skipCinematic()
		wait(1)
		click(okSummonButtonLocation)
		wait(1)
		click(closeNewUserButtonLocation)
		wait(1)
		click(closeNewUserButtonLocation)
		wait(1)
		click(closeInboxButtonLocation)
	end
	if (numero == 3) then
		inboxItemsRegion:existsClick(Pattern("ldPreview.png"):targetOffset(Location(380, 0)))
		wait(1)
		click(closeInboxButtonLocation)
	end
end