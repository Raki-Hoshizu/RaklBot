function printBattleMessage()
	textSizeNum = 12
	setHighlightTextStyle(16777215, 4294967295, textSizeNum)
	
	local message = ""
	local totalBattle = loseCount + winCount
	local totalRuneCount = r6Count + r5Count + soldRunes
	message = message .. "Battle:" .. totalBattle .. "  W:" .. winCount .. "  L:" .. loseCount
	message = message .. [[
	Rune 6*:]] .. r6Count .. "  5*:" .. r5Count .. "  Sold:" .. soldRunes
	resultRegion:highlightOff()
	resultRegion:highlight(message)
end