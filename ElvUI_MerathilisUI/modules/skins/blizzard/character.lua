local MER, E, L, V, P, G = unpack(select(2, ...))
local MERS = E:GetModule("muiSkins")
local S = E:GetModule("Skins")

-- Cache global variables
-- Lua functions
local _G = _G
local unpack = unpack
-- WoW API

-- Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

local function styleCharacter()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.character ~= true or E.private.muiSkins.blizzard.character ~= true then return end

	MERS:CreateStripes(_G["CharacterFrame"])
	MERS:CreateGradient(_G["CharacterFrame"])

	_G["CharacterStatsPane"].ItemLevelCategory.Title:SetTextColor(unpack(E.media.rgbvaluecolor))
	_G["CharacterStatsPane"].AttributesCategory.Title:SetTextColor(unpack(E.media.rgbvaluecolor))
	_G["CharacterStatsPane"].EnhancementsCategory.Title:SetTextColor(unpack(E.media.rgbvaluecolor))
end

S:AddCallback("mUICharacter", styleCharacter)