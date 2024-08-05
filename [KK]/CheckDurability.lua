local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("CHAT_MSG_RAID")
EventFrame:RegisterEvent("CHAT_MSG_RAID_LEADER")

local inventorySlotConstants = {
	INVSLOT_HEAD,
	INVSLOT_SHOULDER,
	INVSLOT_CHEST,
	INVSLOT_WAIST,
	INVSLOT_LEGS,
	INVSLOT_FEET,
	INVSLOT_WRIST,
	INVSLOT_HAND,
	INVSLOT_MAINHAND,
	INVSLOT_OFFHAND
}

EventFrame:SetScript("OnEvent", function(self, event, ...)
	if(event == "CHAT_MSG_RAID" or event == "CHAT_MSG_RAID_LEADER") then
		local text = ...

		if(text == "!test") then
			local curTotal = 0
			local maxTotal = 0

			for key, value in pairs(inventorySlotConstants) do
				local current, maximum = GetInventoryItemDurability(value)
				curTotal = curTotal + current
				maxTotal = maxTotal + maximum
			end

			local message = curTotal / maxTotal * 100 .. " %"
			SendChatMessage(message, "RAID")
		end
	end
end)