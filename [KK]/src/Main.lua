--   Single Comment
--[[ Multi-Line Comment ]]
local addonName, addonTable = ...

-- Creating LibStub Addon
local libStub = LibStub("AceAddon-3.0"):NewAddon("[KK]", "AceConsole-3.0", "AceTimer-3.0", "AceHook-3.0")
addonTable.libStub = libStub

-- Creating Basic Frame
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
        end
	end
end)