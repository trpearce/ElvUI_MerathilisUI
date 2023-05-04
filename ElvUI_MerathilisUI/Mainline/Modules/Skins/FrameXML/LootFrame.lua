local MER, F, E, L, V, P, G = unpack(ElvUI_MerathilisUI)
local module = MER.Modules.Skins
local S = E:GetModule('Skins')

local _G = _G
local hooksecurefunc = hooksecurefunc

local C_LootHistory_GetNumItems = C_LootHistory.GetNumItems

function module:GroupLootHistoryFrame_DoFullRefresh()
	local numItems = C_LootHistory_GetNumItems()
	for i = 1, numItems do
		local frame = _G.GroupLootHistoryFrame.itemFrames[i]
		if frame and not frame.__MERSkin then
			frame:SetWidth(256)
			F.SetFontDB(frame.WinnerRoll, E.private.mui.skins.rollResult)

			frame.ToggleButton:SetNormalTexture(E.Media.Textures.ArrowUp)
			frame.ToggleButton:SetPushedTexture("")
			frame.ToggleButton:SetDisabledTexture(E.Media.Textures.ArrowUp)
			frame.ToggleButton:SetHighlightTexture(E.Media.Textures.ArrowUp)

			local normalTex, disabledTex, pushedTex, highlightTex = frame.ToggleButton:GetNormalTexture(), frame.ToggleButton:GetDisabledTexture(), frame.ToggleButton:GetPushedTexture(), frame.ToggleButton:GetHighlightTexture()

			normalTex:SetRotation(S.ArrowRotation.down)

			pushedTex:SetTexture("")
			pushedTex.SetTexture = E.noop
			pushedTex:Hide()

			highlightTex:SetRotation(S.ArrowRotation.down)
			highlightTex:SetVertexColor(unpack(E.media.rgbvaluecolor))

			disabledTex:SetRotation(S.ArrowRotation.down)
			disabledTex:SetAlpha(0.5)

			frame.ToggleButton.SetNormalTexture = function(self, texture)
				if texture == "Interface\\Buttons\\UI-MinusButton-UP" then
					normalTex:SetRotation(S.ArrowRotation.up)
					self:SetHighlightTexture(nil, S.ArrowRotation.up)
				elseif texture == "Interface\\Buttons\\UI-PlusButton-UP" then
					normalTex:SetRotation(S.ArrowRotation.down)
					self:SetHighlightTexture(nil, S.ArrowRotation.down)
				end
			end

			frame.ToggleButton.SetPushedTexture = E.noop

			frame.ToggleButton.SetDisabledTexture = function(self, texture)
				if texture == "Interface\\Buttons\\UI-MinusButton-Disabled" then
					disabledTex:SetRotation(S.ArrowRotation.up)
				elseif texture == "Interface\\Buttons\\UI-PlusButton-Disabled" then
					disabledTex:SetRotation(S.ArrowRotation.down)
				end
			end

			frame.ToggleButton.SetHighlightTexture = function(self, _, arrow)
				highlightTex:SetRotation(arrow)
			end

			frame.__MERSkin = true
		end
	end

	for _, frame in pairs(_G.GroupLootHistoryFrame.unusedPlayerFrames) do
		if frame and not frame.__MERSkin then
			frame:SetWidth(256)
			F.SetFontWithDB(frame.RollText, E.private.mui.skins.rollResult)
			frame.__MERSkin = true
		end
	end

	for _, frame in pairs(_G.GroupLootHistoryFrame.usedPlayerFrames) do
		if frame and not frame.__MERSkin then
			frame:SetWidth(256)
			F.SetFontWithDB(frame.RollText, E.private.mui.skins.rollResult)
			frame.__MERSkin = true
		end
	end
end

local function HideIconBG(anim)
	anim.__owner.Icon.backdrop:SetAlpha(0)
end

local function ShowIconBG(anim)
	anim.__owner.Icon.backdrop:SetAlpha(1)
end

function module:LootFrame()
	if not module:CheckDB("loot", "loot") then
		return
	end

	_G.BonusRollFrame:Styling()
	module:CreateShadow(_G.BonusRollFrame)
	module:CreateBackdropShadow(_G.BonusRollLootWonFrame)
	module:CreateBackdropShadow(_G.BonusRollMoneyWonFrame)

	_G.GroupLootHistoryFrame:Styling()
	module:CreateShadow(_G.GroupLootHistoryFrame)
	module:CreateShadow(_G.GroupLootHistoryFrame.ResizeButton)

	_G.GroupLootHistoryFrame.ResizeButton:SetTemplate("Transparent")
	_G.GroupLootHistoryFrame:SetWidth(300)
	_G.GroupLootHistoryFrame.ResizeButton:SetWidth(300)

	if E.private.general.loot then
		_G.ElvLootFrame:Styling()
	end

	-- Boss Banner
	hooksecurefunc('BossBanner_ConfigureLootFrame', function(lootFrame)
		if not lootFrame.__MERSkin then
			local iconHitBox = lootFrame.IconHitBox

			S:HandleIcon(lootFrame.Icon, true)
			iconHitBox.IconBorder:SetTexture(nil)
			S:HandleIconBorder(iconHitBox.IconBorder, lootFrame.Icon.backdrop)

			lootFrame.Anim.__owner = lootFrame
			lootFrame.Anim:HookScript("OnPlay", HideIconBG)
			lootFrame.Anim:HookScript("OnFinished", ShowIconBG)

			lootFrame.__MERSkin = true
		end
	end)

	self:SecureHook(_G.LootHistoryFrameMixin, "DoFullRefresh", "GroupLootHistoryFrame_DoFullRefresh")
end

module:AddCallback("LootFrame")
