function defaultValues()
	imgAccuracy = 0.7
	resetKeyAccuracy = 0.9
	winCount = 0
	loseCount = 0
	r6Count = 0
	r5Count = 0
	totalRuneCount = 0
	soldRunes = 0
	slots = 3
	fightNumber = 1
end

function defaultBools()
	useRep = false
	desactivateAfter = false
	canAuto = false
	goodSpeed = false
	goodAuto = false
	checkIfMax = false
	reroll = false
end

-- Initialise les zones d'écran Region(coordX, coordY, Largeur, Hauteur)
function defaultRegionLocation ()
	battleIconRegion = Region(980, 800, 192, 264) -- La zone où est l'icone pour aller sur la Map
	startRegion = Region(1435, 670, 350, 150) -- Zone du bouton start pour lancer une run
	dungeonListRegion = Region(235, 265, 550, 800) -- Liste des donjons à gauche dans Cairos
	dungeonBattleRegion = Region(800, 255, 850, 815) -- Liste des niveaux à droite dans Cairos
	victoryRegion = Region(635, 110, 700, 120) -- Là où est écrit Victory après une game
	victoryChestLocation = Location(940,620) -- Là ou est le coffre de fin de game
	runeStarRegion = Region(575, 340, 140, 45) -- Là où sont les étoiles de la rune
	runeSellOkRegion = Region(640, 795, 660, 140) -- La zone "Vendre / OK" quand on obtient une rune
	runeSellYesNoRegion = Region(640, 580, 290, 135) -- Le oui/non pour vendre la rune
	replayNoRegion = Region(295, 490, 1370, 175) -- La zone "Replay / No" quand on fini la game
	autoButtonRegion = Region(280, 940, 135, 125) -- Là où est le bouton auto
	multiplierButtonRegion = Region(140, 940, 125, 125)
	multiplierButtonLocation = Location(200, 1000)
	reviveNoRegion = Region(465, 615, 990, 165) -- La zone Revive / No quand on perd
	resultRegion = Region(1580, 200, 700, 250) -- La zone où sont affichées les infos

	-- for resetAccount()
	profileImageRegion = Region(22, 24, 196, 181) -- Image de profil
	optionsButtonRegion = Region(695, 150, 270, 93) -- Onglet options
	resetButtonRegion = Region(972, 755, 482, 115) -- Bouton reset game
	enterKeyLocation = Location(948, 640)
	doneButtonLocation = Location(1550, 80)
	secondResetButtonLocation = Location(798, 792)
	yesResetButtonLocation = Location(793, 657)

	-- for identifyKey()
	keyRegion = Region(876, 513, 225, 52)
	firstNumberRegion = Region(876, 513, 45, 52)
	secondNumberRegion = Region(900, 513, 45, 52)
	thirdNumberRegion = Region(925, 513, 45, 52)
	fourthNumberRegion = Region(957, 513, 45, 52)
	fifthNumberRegion = Region(979, 513, 45, 52)
	sixthNumberRegion = Region(1009, 513, 45, 52)

	-- for skipCinematic()
	skipRegion = Region(1660, 980, 260, 100)

	-- for nickname()
	nicknameRegion = Region(78, 37, 235, 57)
	okNicknameLocation = Location(1355, 300)

	-- for conversation()
	conversationRegion1 = Region(1800, 807, 48, 48)
	conversationRegion2 = Region(55, 800, 65, 65)
	clickConversationLocation = Location(956, 528)

	-- for summonTutorial()
	summonhedgeButtonLocation = Location(1450, 980)
	summonTutorialArrowRegion = Region(1422, 96, 150, 550)
	summonButtonLocation = Location(537, 957)
	yesSummonButtonLocation = Location(790, 720)
	okSummonButtonLocation = Location(1530, 860)

	-- for zoneUnlocked()
	okButtonZoneUnlocked = Location(950 ,930)

	-- to change into location
	zoneTutorialArrowRegion = Region(350, 350, 250, 250)
	setupBattleTutorialArrowRegion = Region(1660, 180, 210, 820)
	selectMonsterTutorialRegion = Region(0, 540, 742, 280)
	startBattleTutorialRegion = Region(1414, 550, 440, 215)
	targetArrowRegion = Region(588, 0, 1070, 190)
	closePopupRegion = Region(833, 825, 250, 115)
	monsterArrowTutorialRegion = Region(1175, 800, 190, 260)
	runeArrowTutorialRegion = Region(885, 365, 290, 230)
	energyArrowTutorialRegion = Region(1270, 580, 170, 215)
	energyRuneArrowTutorialRegion = Region(1120, 480, 170, 160)
	--engraveArrowTutorialRegion = Region(550, 630)

	-- for monsterRuneTutorial()

	-- for shopTutorial()
	shopButtonLocation = Location(1810, 980)
	powerupCircleShopLocation = Location(670, 570)
	buyButtonLocation = Location(780, 840)
	yesBuyLocation = Location(790,660)
	okPlaceCircleLocation = Location(1630, 980)
	powerupButtonLocation = Location(1445, 980)
	powerupHellhoundLocation = Location(1400, 290)
	giveMushroomLocation = Location(1770, 290)
	finalPowerupHellhoundLocation = Location(320, 960)
	acceptPowerupLocation = Location(790, 660)
	okAfterPowerupLocation = Location(1540, 870)

	-- popup handling
	skipHint = Location(950, 390)
	advertisingCloseLocation = Location(1680, 70)
	yesClosePopup = Location(790, 725)

	-- for collectBoxReward(numero)
	leftScreenIconsRegion = Region(9, 185, 205, 825)
	yesInboxLocation = Location(790, 650)
	inboxItemsRegion = Region(1130, 330, 95, 675)
	closeInboxButtonLocation = Location(1730, 160)
	closeNewUserButtonLocation = Location(1690, 110)

	-- for clearGarenForest()
	battleIconLocation = Location(1070, 990)
	garenForestLocation = Location(460, 560)
	battleButtonGaren2Location = Location(1760, 580)

	-- for clearMtSiz()
	mtSizLocation = Location(780, 415)
	battleButtonFirstZoneLocation = Location(1760, 380)

	-- for emptyTeam()
	monsterLocation31 = Location(490, 285)
	monsterLocation32 = Location(385, 490)
	monsterLocation33 = Location(590, 490)
	monsterLocation41 = Location(480, 290)
	monsterLocation42 = Location(290, 400)
	monsterLocation43 = Location(680, 400)
	monsterLocation44 = Location(480, 500)

	-- for fillTeam()
	repMonsterLocation = Location(108, 920)
	monsterLocation1 = Location(110, 740)
	monsterLocation2 = Location(270, 740)
	monsterLocation3 = Location(430, 740)
	monsterLocation4 = Location(600, 740)

	-- for handleBattle()
	startBattleLocation = Location(1610, 760)
	opponentsRegion = Region(1290, 255, 300, 275)

	-- for fight()
	levelUpRegion = Region(815, 510, 340, 120)
	levelUpNumberRegion = Region(875, 570, 185, 170)
	itemOkLocation = Location(955, 875)
	noReviveLocation = Location(1230, 700)
	prepareButtonLocation = Location(600, 580)

	-- for monsterRuneTutorial()
	engraveRuneLocation = Location(680, 800)
	yesEngraveButtonLocation = Location(785, 720)
	rune1Location = Location(1380, 220)
	powerupRuneLocation = Location(690, 360)
	powerupWindowRuneLocation = Location(560, 670)

	kabirRuinsLocation = Location(1100, 440)
	mtWhiteLocation = Location(1200, 160)

	popupRegion15 = Region(460, 500, 160, 290)
	telainForestLocation = Location(1560, 330)
	hydeniRuinsLocation = Location(1675, 525)
	tamorDesertLocation = Location(570, 900)
	vrofagusRuinsLocation = Location(1010, 880)

	first3StarMaxRegion = Region(890, 430, 1200, 700)

	faimonVolcanoLocation = Location(1170, 580) -- ?
	summonScrollsRegion = Region(1100, 190, 195, 720)
	monsterRarityRegion = Region(1320, 270, 500, 90)
	closeScrollsLocation = Location(1860, 90)

	closePurchaseLocation = Location(1715, 95)
	yesClosePurchaseLocation = Location(785, 720)
	islandRegion = Region(180, 200, 1620, 630)
	closeGrowthPackageLocation = Location(1690, 80)
	okGrowthPackageLocation = Location(960, 650)
	challengeLocation = Location(1440, 970)
	closeChallengesLocation = Location(1870, 45)

	noEnergyRegion = Region(750, 350, 290, 70)
end