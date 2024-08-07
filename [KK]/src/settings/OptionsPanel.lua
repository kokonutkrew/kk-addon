local addonName, addonTable = ...

-- Print to Console OnLoad
local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
EventFrame:SetScript("OnEvent", function(self, event, ...)
	if(event == "PLAYER_ENTERING_WORLD") then
        if (addonTable.debug == true) then
            print(addonTable["Options Panel Worked"]);
        end
	end
end)

--[[
local f = CreateFrame("Frame")

local defaults = {
	someOption = true,
}

function f:OnEvent(event, addOnName)
	if addOnName == "HelloWorld" then
		HelloWorldDB = HelloWorldDB or CopyTable(defaults)
		self.db = HelloWorldDB
		self:InitializeOptions()
		hooksecurefunc("JumpOrAscendStart", function()
			if self.db.someOption then
				print("Your character jumped.")
			end
		end)
	end
end

f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", f.OnEvent)

function f:InitializeOptions()
	self.panel = CreateFrame("Frame")
	self.panel.name = "HelloWorld"

	local cb = CreateFrame("CheckButton", nil, self.panel, "InterfaceOptionsCheckButtonTemplate")
	cb:SetPoint("TOPLEFT", 20, -20)
	cb.Text:SetText("Print when you jump")
	-- there already is an existing OnClick script that plays a sound, hook it
	cb:HookScript("OnClick", function(_, btn, down)
		self.db.someOption = cb:GetChecked()
	end)
	cb:SetChecked(self.db.someOption)

	local btn = CreateFrame("Button", nil, self.panel, "UIPanelButtonTemplate")
	btn:SetPoint("TOPLEFT", cb, 0, -40)
	btn:SetText("Click me")
	btn:SetWidth(100)
	btn:SetScript("OnClick", function()
		print("You clicked me!")
	end)

	InterfaceOptions_AddCategory(self.panel)
end

SLASH_HELLOWORLD1 = "/hw"
SLASH_HELLOWORLD2 = "/helloworld"

SlashCmdList.HELLOWORLD = function(msg, editBox)
	InterfaceOptionsFrame_OpenToCategory(f.panel)
end
]]--