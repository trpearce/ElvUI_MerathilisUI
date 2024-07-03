local MER, F, E, I, V, P, G, L = unpack(ElvUI_MerathilisUI)
local module = MER:GetModule("MER_Skins")
local S = E:GetModule("Skins")

local _G = _G
local pairs, unpack = pairs, unpack

function module:Clique()
	if not E.private.mui.skins.addonSkins.enable or not E.private.mui.skins.addonSkins.cl then
		return
	end

	module:DisableAddOnSkins("Clique", false)

	_G.CliqueConfig:StripTextures()
	_G.CliqueConfig:SetTemplate("Transparent")

	module:CreateShadow(_G.CliqueConfig)

	local CliqueTabs = {
		_G.CliqueConfigPage1Column1,
		_G.CliqueConfigPage1Column2,
	}

	for _, object in pairs(CliqueTabs) do
		object:StripTextures(true)
	end

	_G.CliqueConfigInset:StripTextures()
	_G.CliqueConfigPage1_VSlider:StripTextures()

	_G.CliqueClickGrabber:StripTextures()
	_G.CliqueClickGrabber:CreateBackdrop("Overlay")
	_G.CliqueClickGrabber.backdrop:SetPoint("TOPLEFT", -1, 0)
	_G.CliqueClickGrabber.backdrop:SetPoint("BOTTOMRIGHT", 2, 3)

	_G.CliqueDialog:StripTextures()
	_G.CliqueDialog:CreateBackdrop("Transparent")

	_G.CliqueConfigCloseButton:StripTextures()
	S:HandleCloseButton(_G.CliqueConfigCloseButton)
	if _G.CliqueDialog.CloseButton then
		S:HandleCloseButton(_G.CliqueDialog.CloseButton)
	end
	if _G.CliqueDialogCloseButton then
		S:HandleCloseButton(_G.CliqueDialogCloseButton)
	end

	local CliqueButtons = {
		_G.CliqueConfigPage1ButtonSpell,
		_G.CliqueConfigPage1ButtonOther,
		_G.CliqueConfigPage1ButtonOptions,
		_G.CliqueConfigPage2ButtonBinding,
		_G.CliqueDialogButtonAccept,
		_G.CliqueDialogButtonBinding,
		_G.CliqueConfigPage2ButtonSave,
		_G.CliqueConfigPage2ButtonCancel,
	}

	for _, button in pairs(CliqueButtons) do
		S:HandleButton(button)
	end

	local Tab = _G.CliqueSpellTab
	S:HandleFrame(Tab)
	Tab:SetNormalTexture(I.General.MediaPath .. "Textures\\clique") --override the Texture to take account for Simpy's Icon pack
	Tab:GetNormalTexture():SetTexCoord(unpack(E.TexCoords))
	Tab:GetNormalTexture():SetInside()

	Tab:SetPushedTexture(I.General.MediaPath .. "Textures\\clique") -- override the Texture to take account for Simpy's Icon pack
	Tab:GetPushedTexture():SetTexCoord(unpack(E.TexCoords))
	Tab:GetPushedTexture():SetInside()

	Tab:SetHighlightTexture(I.General.MediaPath .. "Textures\\clique") -- override the Texture to take account for Simpy's Icon pack
	Tab:GetHighlightTexture():SetTexCoord(unpack(E.TexCoords))
	Tab:GetHighlightTexture():SetInside()

	Tab:CreateBackdrop("Transparent")
	Tab.backdrop:SetAllPoints()
	Tab:StyleButton()

	_G.CliqueConfigPage1:SetScript("OnShow", function(self)
		for i = 1, 12 do
			if _G["CliqueRow" .. i] then
				_G["CliqueRow" .. i .. "Icon"]:SetTexCoord(unpack(E.TexCoords))
				_G["CliqueRow" .. i .. "Bind"]:ClearAllPoints()
				if _G["CliqueRow" .. i] == _G.CliqueRow1 then
					_G["CliqueRow" .. i .. "Bind"]:SetPoint("RIGHT", _G["CliqueRow" .. i], 8, 0)
				else
					_G["CliqueRow" .. i .. "Bind"]:SetPoint("RIGHT", _G["CliqueRow" .. i], -8, 0)
				end
			end
		end
		_G.CliqueRow1:ClearAllPoints()
		_G.CliqueRow1:SetPoint("TOPLEFT", 5, -(_G.CliqueConfigPage1Column1:GetHeight() + 3))
	end)
end

module:AddCallbackForAddon("Clique")
