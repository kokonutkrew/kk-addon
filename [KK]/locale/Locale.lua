local addonName, addonTable = ...;

--[[ LUA Multi-Byte Escape  Sequences requred for UTF-8

    à : \195\160    è : \195\168    ì : \195\172    ò : \195\178    ù : \195\185
    á : \195\161    é : \195\169    í : \195\173    ó : \195\179    ú : \195\186
    â : \195\162    ê : \195\170    î : \195\174    ô : \195\180    û : \195\187
    ã : \195\163    ë : \195\171    ï : \195\175    õ : \195\181    ü : \195\188
    ä : \195\164                    ñ : \195\177    ö : \195\182
    æ : \195\166                                    ø : \195\184
    ç : \195\167                                    œ : \197\147
    Ä : \195\132    Ö : \195\150    Ü : \195\156    ß : \195\159

]]--

-- Default message for misisng localization. Returning key uses default string (English).
local function defaultFunc(addonTable, key)
 return key;
end
setmetatable(addonTable, {__index=defaultFunc});

