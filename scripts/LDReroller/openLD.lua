function openLD()
	collectBoxReward(3)
	if islandRegion:existsClick(Pattern("summonhenge.png"):similar(imgAccuracy), 10) or existsClick(Pattern("summonhenge2.png"):similar(imgAccuracy), 10) then
		wait(1)
		click(summonhedgeButtonLocation)
		wait(1)
		summonScrollsRegion:existsClick(Pattern("LDScroll.png"):similar(imgAccuracy), 2)
		click(summonButtonLocation)
		skipCinematic()
		if monsterRarityRegion:exists(Pattern("5Stars.png"):similar(0.9), 1) then
			toast("5 stars")
		elseif monsterRarityRegion:exists(Pattern("4Stars.png"):similar(0.9), 1) then
			toast("4 stars")
			if (starsLD == "5") then
				reroll = true
			end
		elseif monsterRarityRegion:exists(Pattern("3Stars.png"):similar(0.9), 1) then
			toast("3 stars")
			if (starsLD == "4+") or (starsLD == "5") then
				reroll = true
			end
		else
			toast("nothing found")
		end
		wait(2)
		click(okSummonButtonLocation)
		wait(2)
		dragDrop(Location(1870, 90), Location(1870, 500))
		click(closeScrollsLocation)
		dragDrop(Location(1870, 500), Location(1870, 90))
		wait(1)
		click(closeGrowthPackageLocation)
		wait(1)
		click(okGrowthPackageLocation)
		conversation()
		click(challengeLocation)
		wait(3)
		click(clickConversationLocation)
		conversation()
		dragDrop(Location(1870, 90), Location(1870, 500))
		click(closeChallengesLocation)
		dragDrop(Location(1870, 500), Location(1870, 90))
	end
end