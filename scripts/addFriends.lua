function addFriends()
	setImagePath(localPath .. "scripts/img")
	chatIconRegion = Region(550, 40, 130, 95)
	channelButtonLocation = Location(1550, 80)
	doneButtonLocation = Location(1550, 80)
	messageZoneLocation = Location(270, 995)
	enterTextLocation = Location(143, 60)

	chatIconRegion:existsClick(Pattern("chatIcon.png"):similar(imgAccuracy), 1)
	dragDrop(Location(60, 1010), Location(60, 540))

	while (channel ~= channelMax) do
		click(channelButtonLocation)
		type(channel)
		click(doneButtonLocation)

		click(messageZoneLocation)
		type(messageAddFriends)
		click(doneButtonLocation)

		channel = tostring(tonumber(channel) + 1)
	end

end