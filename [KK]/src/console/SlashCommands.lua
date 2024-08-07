local addonName, addonTable = ...

-- Print to Console OnLoad
local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
EventFrame:SetScript("OnEvent", function(self, event, ...)
	if(event == "PLAYER_ENTERING_WORLD") then
        if (addonTable.debug == true) then
            print(addonTable["Loading Slash Commands"]);
        end
	end
end)