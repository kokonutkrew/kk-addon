local addonName, addonTable = ...

-- Print to Console OnLoad
local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
EventFrame:SetScript("OnEvent", function(self, event, ...)
	if(event == "PLAYER_ENTERING_WORLD") then
        -- Setup database for persistent storage
        if(addonName == "[KK]") then
            kkDatabase = kkDatabase or {}
            kkDatabase.sessions = (kkDatabase.sessions or 0) + 1
        end
        if (addonTable.debug == true) then
            print("The [KK] addon has previously loaded " .. kkDatabase.sessions .. " times")
        end
	end
end)