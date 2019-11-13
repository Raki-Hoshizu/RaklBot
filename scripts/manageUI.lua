function scrollDungeonStageListDown(down)
	if (down) then
		dragDrop(Location(1200, 835), Location(1200, 320))
	else
		dragDrop(Location(1200, 320), Location(1200, 835))
	end
	wait(1)
end

function scrollDungeonListDown(down)
	if (down) then
		dragDrop(Location(635, 835), Location(635, 320))
	else
		dragDrop(Location(635, 320), Location(635, 835))
	end
	wait(1)
end

function goToMap()
	toast("goToMap")
	click(battleIconLocation)
	wait(1)
end

function zoneUnlocked()
	toast("zoneUnlocked")
	click(okButtonZoneUnlocked)
end

function conversation()
	toast("conversation")
	while not conversationRegion1:exists(Pattern("conversation.png"):similar(imgAccuracy), 1) and not conversationRegion2:exists(Pattern("conversation.png"):similar(imgAccuracy), 1) do
	end
	while conversationRegion1:exists(Pattern("conversation.png"):similar(imgAccuracy), 1) or conversationRegion2:exists(Pattern("conversation.png"):similar(imgAccuracy), 1) do
		click(clickConversationLocation)
		wait(0.5)
	end
end

function skipCinematic()
	toast("skipCinematic")
	skipRegion:existsClick(Pattern("skipButton4.png"):similar(imgAccuracy), 20)
end