localPath = scriptPath()

----- DEFAULT FUNCTIONS -----
dofile(localPath .. "scripts/defaultValues.lua")
dofile(localPath .. "scripts/addFriends.lua")
dofile(localPath .. "scripts/dialogBoxes.lua")
dofile(localPath .. "scripts/manageUI.lua")
dofile(localPath .. "scripts/botUI.lua")

----- CAIROS -----
dofile(localPath .. "scripts/Cairos/navigation.lua")
dofile(localPath .. "scripts/Cairos/fight.lua")
dofile(localPath .. "scripts/Cairos/runes.lua")

----- LDREROLLER -----
dofile(localPath .. "scripts/LDReroller/main.lua")

----- MAIN ------
defaultValues() -- Initialise les variables
defaultBools() -- Initialise les booléens
defaultRegionLocation() -- Initialise les zones d'écran
dialogBox() -- Lance la séquence de boîtes de dialogue
choiceRedirecting() -- Redirige en fonction du choix des boîtes de dialogue