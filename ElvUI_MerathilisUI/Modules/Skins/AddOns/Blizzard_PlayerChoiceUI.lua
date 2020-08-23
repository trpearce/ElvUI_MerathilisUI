local MER, E, L, V, P, G = unpack(select(2, ...))
local S = E:GetModule("Skins")

local _G = _G

local function LoadSkin()
	if not (E.private.skins.blizzard.enable and E.private.skins.blizzard.playerChoice) or E.private.muiSkins.blizzard.playerChoice ~= true then return end

	local frame = _G.PlayerChoiceFrame
	frame:Styling()
end

S:AddCallbackForAddon("Blizzard_PlayerChoiceUI", "mUIPlayerChoice", LoadSkin)
