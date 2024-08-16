local addonName, addonTable = ...

--[[

    The loading process

    The variables saved by those directives are not immediately available when your addon loads; instead, they're loaded at a later point. The client fires events to let addons know that their saved variables were loaded.

    1.WoW FrameXML code is loaded and executed.
    2.Addon code is loaded and executed.
    3.Saved variables for one addon a time are loaded and executed, then ADDON_LOADED event is fired for that addon.
    4.VARIABLES_LOADED event is fired to let addons know that all saved variables were loaded.

    Addons should generally use ADDON_LOADED to determine when their saved variables are accessible; the first argument of the event is the name of the addon for which it is being fired; VARIABLES_LOADED should be avoided as it is will not be fired for load-on-demand addons.

    https://wowwiki-archive.fandom.com/wiki/Saving_variables_between_game_sessions

]]--

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