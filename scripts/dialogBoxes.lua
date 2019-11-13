function dialogBox()
	dialogInit() -- Pour initialiser la fenêtre
	addTextView("Welcome to RaklBot") -- Ecriture de texte simple
	newRow() -- Retour à la ligne
	addRadioGroup("menuChoice", 1) -- Créé un groupe de formulaire
	addRadioButton("Start primitive sequence", 10) -- 1er choix
	addRadioButton("Options", 11) -- 2e choix

	dialogShowFullScreen("Welcome") -- Appelle la page "Welcome" et la met en full screen

	-- Redirection en fonction du choix
	if (menuChoice == 10) then
		priSeqDialogBox()
	elseif (menuChoice == 11) then
		optionsDialogBox()
	else
		print("Error, choice "..menuChoice.." is unknown.")
	end
end

function optionsDialogBox()
	dialogInit()

	addCheckBox("stopOnDefeat", "Stop on defeat", false)
	newRow()
	addCheckBox("keep5Stars", "Keep 5 Stars runes", false)
	newRow()
	addCheckBox("keep6Stars", "Keep 6 Stars runes", true)
	newRow()
	addCheckBox("useCrystals", "Use crystals to refill energy", false)
	newRow()
	addCheckBox("useRewardBox", "Use reward box to refill energy", true)

	dialogShowFullScreen("Options")

	dialogBox() -- Appelle la fonction dialogBox()
end

function priSeqDialogBox()

	dialogInit()

	addTextView("Primitive Sequences")
	newRow()
	addRadioGroup("priSeq", 1)
	addRadioButton("Cairos/Scenario/Toa(H)/Rift", 10)
	addRadioButton("(WIP) Arena", 11)
	addRadioButton("(Works sometimes) LD-Reroller", 12)
	addRadioButton("Go back.", 13)

	dialogShowFullScreen("Primitive Sequence Configuration")

	if (priSeq == 10) then
		dialogBox10()
	elseif (priSeq == 12) then
		dialogLDReroller()
	elseif (priSeq == 13) then
		dialogBox()
	else
		toast("Error. Only Cairos available for now.")
	end
end

function dialogLDReroller()

	removePreference("confirmReset")
	dialogInit()

	spinnerLDStars = {
		"3+",
		"4+",
		"5"
	}

	addTextView("LD-Reroller:")
	newRow()
	addTextView("This sequence will reset your account.")
	newRow()
	addTextView("Please enter 'yes' to confirm you agree :")
	addEditText("confirmReset")
	newRow()
	addTextView("Enter your nickname:")
	addEditText("nickname")
	newRow()
	addTextView("Choose the stars wanted:")
	addSpinner("starsLD", spinnerLDStars, "3+")

	dialogShowFullScreen("LD-Reroller")

	if (confirmReset == "yes") then
		if (nickname ~= "") then
			ldReroller()
		else
			print("Please enter a valid nickname.")
		end
	else
		print("Please enter yes to start the sequence.")
	end
end

function dialogBox10()

	dialogInit()

	spinnerAreaCairos = {
		"Giant",
		"Dragon",
		"Necro",
		"Magic",
		"Light",
		"Dark",
		"Fire",
		"Water",
		"Wind"
	}

	spinnerAreaScenario = {
		"Garen Forest",
		"Mt. Siz",
		"Kabir Ruins",
		"Mt. White",
		"Telain Forest",
		"Hydeni Ruins",
		"Tamor Desert",
		"Vrofagus Ruins",
		"Faimon Volcano",
		"Aiden Forest",
		"Ferun Castle",
		"Mt. Runar",
		"Chiruka Remains"
	}

	spinnerStage = {
		"1",
		"2",
		"3",
		"4",
		"5",
		"6",
		"7",
		"8",
		"9",
		"10",
		
	}

	addRadioGroup("radioCairosScenario", 1)
	addRadioButton("Cairos", 10)
	addRadioButton("Scenario", 11)

	newRow()
	addTextView("-------------------- Cairos Options --------------------")
	newRow()
	addTextView("Boss: ")
	addSpinner("farmCairos", spinnerAreaCairos, "Giant")
	addTextView("Stage: B")
	addSpinner("stageCairos", spinnerStage, "10")

	newRow()
	addTextView("-------------------- Scenario Options --------------------")
	newRow()
	addSpinner("farmScenario", spinnerAreaScenario, "Garen Forest")

	dialogShowFullScreen("Cairos/Scenario/Toa(H)/Rift")
end

function choiceRedirecting()
	if (priSeq == 10) then
		goToMap()
		selectZone()
	end
end