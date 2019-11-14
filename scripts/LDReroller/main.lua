dofile(localPath .. "scripts/defaultValues.lua")
dofile(localPath .. "scripts/LDReroller/popups.lua")
dofile(localPath .. "scripts/LDReroller/battle.lua")
dofile(localPath .. "scripts/LDReroller/reset.lua")
dofile(localPath .. "scripts/LDReroller/tutorial.lua")
dofile(localPath .. "scripts/LDReroller/clearZone.lua")
dofile(localPath .. "scripts/LDReroller/openLD.lua")

function ldReroller()
	setImagePath(localPath .. "scripts/LDReroller/img")
	resetAccount()
	skipCinematic()
	enterNickname()

	-- Beginning of the tutorial
	conversation()
	wait(2)
	-- Summon the Hellhound
	summonTutorial()
	conversation()
	wait(2)
	-- Summon the Fairy
	summonTutorial()
	conversation()
	zoneUnlocked()
	wait(2)
	-- Clear la 1ere zone
	goToMap() 
	selectZoneTutorial()
	setupBattleTutorial()
	selectMonsterTutorial()
	startBattleTutorial()
	conversation()
	fight()
	wait(1)
	-- Summon the vagabond
	summonTutorial()
	conversation()
	closePopup()
	conversation()
	monsterRuneTutorial()
	shopTutorial()
	openDurandMessage()

	-- Début du "débrouille toi tout seul"
	goToMap()
	clearGarenForest()
	wait(2)
	click(clickConversationLocation) -- Confirme la récompense Archer Elfe
	conversation()
	wait(2)
	zoneUnlocked()
	wait(2)
	click(advertisingCloseLocation)
	wait(8)
	click(yesInboxLocation)
	click(yesInboxLocation)
	wait(1)
	collectBoxReward(1)

	slots = 4

	-- Chapitre 2
	wait(1)
	goToMap()
	clearMtSiz()
	wait(2)
	click(clickConversationLocation) -- Confirme la récompense Chevalier Magique
	conversation()
	wait(2)
	zoneUnlocked()
	wait(2)
	collectBoxReward(2)

	-- Chapitre 3
	wait(1)
	goToMap()
	click(advertisingCloseLocation)
	wait(1)
	click(yesClosePopup)
	wait(1)
	clearKabirRuins()
	wait(2)
	click(clickConversationLocation)
	conversation()
	wait(2)
	zoneUnlocked()
	conversation()
	wait(2)
	zoneUnlocked()

	-- Chapitre 4
	wait(1)
	goToMap()
	clearMtWhite()
	wait(2)
	click(clickConversationLocation)
	conversation()
	wait(2)
	zoneUnlocked()

	useRep = true

	-- Chapitre 5
	wait(1)
	goToMap()
	clearTelainForest()
	wait(2)
	click(clickConversationLocation)
	conversation()
	wait(2)
	zoneUnlocked()

	-- Chapitre 6
	wait(1)
	goToMap()
	clearHydeniRuins()
	wait(2)
	click(clickConversationLocation)
	conversation()
	wait(2)
	zoneUnlocked()

	-- Chapitre 7
	wait(1)
	goToMap()
	wait(2)
	click(closePurchaseLocation)
	wait(1)
	click(yesClosePurchaseLocation)
	wait(1)
	dragDrop(Location(1830, 625), Location(140, 600))
	clearTamorDesert()
	wait(2)
	click(clickConversationLocation)
	conversation()
	wait(2)
	zoneUnlocked()

	checkIfMax = true

	-- Chapitre 8
	wait(1)
	goToMap()
	wait(1)
	dragDrop(Location(1830, 625), Location(140, 600))
	clearVrofagusRuins()
	wait(2)
	click(clickConversationLocation)
	conversation()
	wait(2)
	zoneUnlocked()

	checkIfMax = false

	-- Chapitre 9
	wait(1)
	goToMap()
	wait(1)
	dragDrop(Location(1830, 625), Location(140, 600))
	clearFaimonVolcano()
	wait(2)
	click(clickConversationLocation)
	conversation()
	wait(2)
	zoneUnlocked()

	-- Ouverture du vélin
	wait(1)
	openLD()

	if reroll then
		defaultValues() -- Initialise les variables
		defaultBools() -- Initialise les booléens
		ldReroller()
	end
end