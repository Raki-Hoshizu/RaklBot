function addFriends()
	messageAddFriend = "Hey Im looking for friends to complete the scenario, add me please"
	--message = "Im a new player looking for friends. Add me please"
	channel = "90"
	channelMax = "200"
	channelButtonLocation = Location(1550, 80)
	doneButtonLocation = Location(1550, 80)
	messageZoneLocation = Location(270, 995)
	enterTextLocation = Location(143, 60)

	while (channel ~= channelMax) do
		click(channelButtonLocation)
		type(channel)
		click(doneButtonLocation)

		click(messageZoneLocation)
		type(message)
		click(doneButtonLocation)

		channel = tostring(tonumber(channel) + 1)
	end

end