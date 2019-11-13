function selectZone()
	setImagePath(localPath .. "scripts/Cairos/img")
	if (radioCairosScenario == 10) then
		if existsClick(Pattern("icon.png"):similar(imgAccuracy), 1) then
			clickBoss()
		end
	elseif (radioCairosScenario == "Scenario") then
		print ("The scenario has not been developped yet.")
	else
		print ("This has not been developped yet.")
	end
end

function clickBoss()
	if not dungeonListRegion:exists(Pattern(farmCairos:lower()..".png"):similar(imgAccuracy), 1) then
		scrollDungeonListDown(true)
		if not dungeonListRegion:exists(Pattern(farmCairos:lower()..".png"):similar(imgAccuracy), 1) then
			scrollDungeonListDown(true)
			if not dungeonListRegion:exists(Pattern(farmCairos:lower()..".png"):similar(imgAccuracy), 1) then
				print ("We couldn't find "..farmCairos.." dungeon.")
			else
				dungeonListRegion:existsClick(Pattern(farmCairos:lower()..".png"):similar(imgAccuracy), 1)
			end
		else
			dungeonListRegion:existsClick(Pattern(farmCairos:lower()..".png"):similar(imgAccuracy), 1)
		end
	else
		dungeonListRegion:existsClick(Pattern(farmCairos:lower()..".png"):similar(imgAccuracy), 1)
	end

	scrollDungeonStageListDown(true)
    scrollDungeonStageListDown(true)

    if tonumber(stageCairos) < 7 then
      	scrollDungeonStageListDown(false)
      	if tonumber(stageCairos) < 4 then
        	scrollDungeonStageListDown(false)
      	end
    end

    if dungeonBattleRegion:existsClick(Pattern("B"..stageCairos..".png"):targetOffset(Location(530, 0))) then
    	wait(2)
    	startDungeon()
    else
    	print ("Couldn't find "..stageCairos.." level.")
    end
end

function refillEnergy()
	if useRewardBox then

	elseif useCrystals then

	end
end