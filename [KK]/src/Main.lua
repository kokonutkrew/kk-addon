--   Single Comment
--[[ Multi-Line Comment ]]
local addonName, addonTable = ...

-- Creating LibStub Addon
local libStub = LibStub("AceAddon-3.0"):NewAddon("[KK]", "AceConsole-3.0", "AceTimer-3.0", "AceHook-3.0")
addonTable.libStub = libStub

