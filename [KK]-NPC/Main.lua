local addonName, addonTable = ...

local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("CHAT_MSG_RAID")
EventFrame:RegisterEvent("CHAT_MSG_RAID_LEADER")

EventFrame:SetScript("OnEvent", function(self, event, ...)
	if(event == "CHAT_MSG_RAID" or event == "CHAT_MSG_RAID_LEADER") then
		local text = ...

		if(text == "!npc") then
			local message = "KK_NPC LOADED!" .. addonName .. addonTable.environement
			SendChatMessage(message, "RAID")
		end
	end
end)