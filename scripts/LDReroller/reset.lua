function identifyKey()
	key = ""
	firstNumberRegion:highlightOff()
	toast("First number...")
	firstNumberRegion:highlight()
	if firstNumberRegion:exists(Pattern("num1.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "1"
	elseif firstNumberRegion:exists(Pattern("num2.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "2"
	elseif firstNumberRegion:exists(Pattern("num3.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "3"
	elseif firstNumberRegion:exists(Pattern("num4.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "4"
	elseif firstNumberRegion:exists(Pattern("num5.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "5"
	elseif firstNumberRegion:exists(Pattern("num6.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "6"
	elseif firstNumberRegion:exists(Pattern("num7.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "7"
	elseif firstNumberRegion:exists(Pattern("num8.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "8"
	elseif firstNumberRegion:exists(Pattern("num9.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "9"
	elseif firstNumberRegion:exists(Pattern("num0.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "0"
	else
		print ("couldn't find first number")
	end
	firstNumberRegion:highlightOff()
	toast("Second number...")
	secondNumberRegion:highlight()
	if secondNumberRegion:exists(Pattern("num1.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "1"
	elseif secondNumberRegion:exists(Pattern("num2.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "2"
	elseif secondNumberRegion:exists(Pattern("num3.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "3"
	elseif secondNumberRegion:exists(Pattern("num4.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "4"
	elseif secondNumberRegion:exists(Pattern("num5.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "5"
	elseif secondNumberRegion:exists(Pattern("num6.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "6"
	elseif secondNumberRegion:exists(Pattern("num7.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "7"
	elseif secondNumberRegion:exists(Pattern("num8.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "8"
	elseif secondNumberRegion:exists(Pattern("num9.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "9"
	elseif secondNumberRegion:exists(Pattern("num0.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "0"
	else
		print ("couldn't find second number")
	end
	secondNumberRegion:highlightOff()
	toast("Third number...")
	thirdNumberRegion:highlight()
	if thirdNumberRegion:exists(Pattern("num1.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "1"
	elseif thirdNumberRegion:exists(Pattern("num2.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "2"
	elseif thirdNumberRegion:exists(Pattern("num3.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "3"
	elseif thirdNumberRegion:exists(Pattern("num4.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "4"
	elseif thirdNumberRegion:exists(Pattern("num5.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "5"
	elseif thirdNumberRegion:exists(Pattern("num6.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "6"
	elseif thirdNumberRegion:exists(Pattern("num7.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "7"
	elseif thirdNumberRegion:exists(Pattern("num8.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "8"
	elseif thirdNumberRegion:exists(Pattern("num9.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "9"
	elseif thirdNumberRegion:exists(Pattern("num0.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "0"
	else
		print ("couldn't find third number")
	end
	thirdNumberRegion:highlightOff()
	toast("Fourth number...")
	fourthNumberRegion:highlight()
	if fourthNumberRegion:exists(Pattern("num1.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "1"
	elseif fourthNumberRegion:exists(Pattern("num2.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "2"
	elseif fourthNumberRegion:exists(Pattern("num3.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "3"
	elseif fourthNumberRegion:exists(Pattern("num4.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "4"
	elseif fourthNumberRegion:exists(Pattern("num5.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "5"
	elseif fourthNumberRegion:exists(Pattern("num6.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "6"
	elseif fourthNumberRegion:exists(Pattern("num7.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "7"
	elseif fourthNumberRegion:exists(Pattern("num8.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "8"
	elseif fourthNumberRegion:exists(Pattern("num9.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "9"
	elseif fourthNumberRegion:exists(Pattern("num0.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "0"
	else
		print ("couldn't find fourth number")
	end
	fourthNumberRegion:highlightOff()
	toast("Fifth number...")
	fifthNumberRegion:highlight()
	if fifthNumberRegion:exists(Pattern("num1.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "1"
	elseif fifthNumberRegion:exists(Pattern("num2.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "2"
	elseif fifthNumberRegion:exists(Pattern("num3.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "3"
	elseif fifthNumberRegion:exists(Pattern("num4.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "4"
	elseif fifthNumberRegion:exists(Pattern("num5.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "5"
	elseif fifthNumberRegion:exists(Pattern("num6.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "6"
	elseif fifthNumberRegion:exists(Pattern("num7.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "7"
	elseif fifthNumberRegion:exists(Pattern("num8.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "8"
	elseif fifthNumberRegion:exists(Pattern("num9.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "9"
	elseif fifthNumberRegion:exists(Pattern("num0.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "0"
	else
		print ("couldn't find fifth number")
	end
	fifthNumberRegion:highlightOff()
	toast("Sixth number...")
	sixthNumberRegion:highlight()
	if sixthNumberRegion:exists(Pattern("num1.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "1"
	elseif sixthNumberRegion:exists(Pattern("num2.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "2"
	elseif sixthNumberRegion:exists(Pattern("num3.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "3"
	elseif sixthNumberRegion:exists(Pattern("num4.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "4"
	elseif sixthNumberRegion:exists(Pattern("num5.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "5"
	elseif sixthNumberRegion:exists(Pattern("num6.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "6"
	elseif sixthNumberRegion:exists(Pattern("num7.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "7"
	elseif sixthNumberRegion:exists(Pattern("num8.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "8"
	elseif sixthNumberRegion:exists(Pattern("num9.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "9"
	elseif sixthNumberRegion:exists(Pattern("num0.png"):similar(resetKeyAccuracy), 1) then
		key = key .. "0"
	else
		print ("couldn't find sixth number")
	end
	sixthNumberRegion:highlightOff()

	return key
end

function enterNickname()
	toast("enterNickname")
	if nicknameRegion:exists(Pattern("nickname.png"):similar(imgAccuracy), 10) then
		type(nickname)
		click(doneButtonLocation)
		click(okNicknameLocation)
	else
		print("Couldn't find the nickname zone")
	end
end

function resetAccount()
	toast("resetAccount")
	profileImageRegion:existsClick(Pattern("standardProfile.png"):similar(imgAccuracy), 1)
	optionsButtonRegion:existsClick(Pattern("options.png"):similar(imgAccuracy), 1)
	resetButtonRegion:existsClick(Pattern("resetGame.png"):similar(imgAccuracy), 1)
	key = identifyKey()
	click(enterKeyLocation)
	type(key)
	wait(1)
	click(doneButtonLocation)
	wait(1)
	click(secondResetButtonLocation)
	wait(1)
	click(yesResetButtonLocation)
	wait(1)
end