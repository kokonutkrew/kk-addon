local addonName, addonTable = ...

-- Respond to raid messages
local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("CHAT_MSG_RAID")
EventFrame:RegisterEvent("CHAT_MSG_RAID_LEADER")
EventFrame:SetScript("OnEvent", function(self, event, ...)
	if(event == "CHAT_MSG_RAID" or event == "CHAT_MSG_RAID_LEADER") then
		local text = ...
		if(text == "!test") then
			local message = "Hello Azeroth!" .. addonName .. addonTable.environement
			SendChatMessage(message, "RAID")
		end
	end
end)

-- Print to Console OnLoad
local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
EventFrame:SetScript("OnEvent", function(self, event, ...)
	if(event == "PLAYER_ENTERING_WORLD") then
        if (addonTable.debug == true) then
            local message = "\124cnBLUE_FONT_COLOR:[KK] |cff808080 OnEvent Player Entering World |r"
            print(message)
            print("\124cnBLUE_FONT_COLOR:[KK]")
            print("\124cnBRIGHTBLUE_FONT_COLOR:[KK]")
            print("\124cnLIGHTBLUE_FONT_COLOR:[KK]")
            print("\124cnBATTLENET_FONT_COLOR:[KK]")
            print("\124cFF00FFF6[KK]")
            print(addonTable.kkGradient)
            print(addonTable["Hello World!"]);
        end
	end
end)