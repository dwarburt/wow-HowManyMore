function eventHandler_OnEvent(self, event, ...)
	-- arg1
	-- kill a mob = Snowfall Elk dies, you gain xxxx experience. (+889 exp Rested bonus)
	-- turn in a quest = You gain xxx experience.
	i,j = string.find(arg1, "%d+ experience.")
	xp = string.sub(arg1, i, j)
	xp = string.gsub(xp, " experience.", "")
	xp_needed = UnitXPMax("player") - UnitXP("player")
	hmm = xp_needed / xp;
	print("HMM: Only about " .. ceil(hmm) .. " more!");
end

SLASH_HOWMANYMORE1, SLASH_HOWMANYMORE2 = '/hmm', '/howmanymore'; -- 3.
function SlashCmdList.HOWMANYMORE(msg, editbox) -- 4.
 print("Hello, World!");
end