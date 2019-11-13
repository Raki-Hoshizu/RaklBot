function handlePopupFight()
	if (fightNumber == 5) then
		toast("handlePopupFight")
		popupRegion15:existsClick(Pattern("popupHint.png"):similar(imgAccuracy), 1)
	end
end

function closePopup()
	toast("closePopup")
	closePopupRegion:existsClick(Pattern("close2.png"):similar(imgAccuracy), 1)
end