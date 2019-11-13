function clearGarenForest()
	toast("clearGarenForest")
	click(garenForestLocation)
	wait(2)
	click(clickConversationLocation) -- Dismiss the popup
	wait(2)
	click(clickConversationLocation) -- Dismiss the elven archer popup
	wait(1)
	click(battleButtonGaren2Location)
	click(clickConversationLocation) -- Dismiss the Durand's monster popup
	click(clickConversationLocation) -- Dismiss the Durand's monster popup
	handleBattle()
end
-- Vide l'équipe

function clearMtSiz()
	toast("clearMtSiz")
	click(mtSizLocation)
	wait(4)
	click(clickConversationLocation) -- Dismiss the Magic Knight popup
	wait(2)
	click(battleButtonFirstZoneLocation)
	handleBattle()
end

function clearKabirRuins()
	toast("clearKabirRuins")
	click(kabirRuinsLocation)
	wait(4)
	click(clickConversationLocation)
	wait(2)
	click(battleButtonFirstZoneLocation)
	handleBattle()
end

function clearMtWhite()
	toast("clearMtWhite")
	click(mtWhiteLocation)
	wait(4)
	click(clickConversationLocation)
	wait(2)
	click(battleButtonFirstZoneLocation)
	handleBattle()
end

function clearTelainForest()
	toast("clearTelainForest")
	click(telainForestLocation)
	wait(4)
	click(clickConversationLocation)
	wait(2)
	click(battleButtonFirstZoneLocation)
	handleBattle()
end

function clearHydeniRuins()
	toast("clearHydeniRuins")
	click(hydeniRuinsLocation)
	wait(4)
	click(clickConversationLocation)
	wait(2)
	click(battleButtonFirstZoneLocation)
	handleBattle()
end

function clearTamorDesert()
	toast("clearTamorDesert")
	click(tamorDesertLocation)
	wait(4)
	click(clickConversationLocation)
	wait(2)
	click(battleButtonFirstZoneLocation)
	handleBattle()
end

function clearVrofagusRuins()
	toast("clearVrofagusRuins")
	click(vrofagusRuinsLocation)
	wait(4)
	click(clickConversationLocation)
	wait(2)
	click(battleButtonFirstZoneLocation)
	handleBattle()
end

function clearFaimonVolcano()
	toast("clearFaimonVolcano")
	click(faimonVolcanoLocation)
	wait(4)
	click(clickConversationLocation)
	wait(2)
	click(battleButtonFirstZoneLocation)
	handleBattle()
end