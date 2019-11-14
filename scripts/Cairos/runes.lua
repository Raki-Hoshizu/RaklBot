function sellRune()
	if runeStarRegion:exists(Pattern("6stars.png"):similar(0.9), 1) then
		if not keep6Stars then
			toast("Selling 6 stars rune...")
			runeSellOkRegion:existsClick(Pattern("sell.png"):similar(imgAccuracy), 2)
			runeSellYesNoRegion:existsClick(Pattern("yes.png"):similar(imgAccuracy), 2)
			soldRunes = soldRunes+1
		else
			toast("Keeping 6 stars rune...")
			r6Count = r6Count+1
			runeSellOkRegion:existsClick(Pattern("ok.png"):similar(imgAccuracy), 2)
		end
	elseif runeStarRegion:exists(Pattern("5stars.png"):similar(0.9), 1) then
		if not keep5Stars then
			toast("Selling 5 stars rune...")
			runeSellOkRegion:existsClick(Pattern("sell.png"):similar(imgAccuracy), 2)
			runeSellYesNoRegion:existsClick(Pattern("yes.png"):similar(imgAccuracy), 2)
			soldRunes = soldRunes+1
		else
			toast("Keeping 5 stars rune...")
			r5Count = r5Count+1
			runeSellOkRegion:existsClick(Pattern("ok.png"):similar(imgAccuracy), 2)
		end
	else
		runeSellOkRegion:existsClick(Pattern("ok.png"):similar(imgAccuracy), 2)
	end
end