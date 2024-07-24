local MER, F, E, I, V, P, G, L = unpack(ElvUI_MerathilisUI)
local module = MER:GetModule("MER_Skins")
local S = E:GetModule("Skins")

local _G = _G
local pairs, select, unpack = pairs, select, unpack

local InCombatLockdown = InCombatLockdown
local C_ChallengeMode_GetAffixInfo = C_ChallengeMode.GetAffixInfo

local trackers = {
	_G.ScenarioObjectiveTracker,
	_G.UIWidgetObjectiveTracker,
	_G.CampaignQuestObjectiveTracker,
	_G.QuestObjectiveTracker,
	_G.AdventureObjectiveTracker,
	_G.AchievementObjectiveTracker,
	_G.MonthlyActivitiesObjectiveTracker,
	_G.ProfessionsRecipeTracker,
	_G.BonusObjectiveTracker,
	_G.WorldQuestObjectiveTracker,
}

function module:SkinOjectiveTrackerHeaders()
	local frame = _G.ObjectiveTrackerFrame.MODULES
	if frame then
		for i = 1, #frame do
			if frame[i] then
				F.SetFontOutline(frame[i].Header.Text)
			end
		end
	end
end

local function HandleQuestIcon(button)
	if not button then
		return
	end
	if not button.SetNormalTexture then
		return
	end

	if not button.IsSkinned then
		button:SetSize(24, 24)
		button:SetNormalTexture(0)
		button:SetPushedTexture(0)
		button:GetHighlightTexture():SetColorTexture(1, 1, 1, 0.25)
		local icon = button.icon or button.Icon
		if icon then
			S:HandleIcon(icon, true)
		end
		module:CreateShadow(button)

		button.IsSkinned = true
	end
end

function module:SkinItemButton(_, block)
	if not block then
		return
	end

	HandleQuestIcon(block.ItemButton) -- isWW
	HandleQuestIcon(block.itemButton)
	HandleQuestIcon(block.groupFinderButton)

	local check = block.currentLine and block.currentLine.Check
	if check and not check.IsSkinned then
		check:SetAtlas("checkmark-minimal")
		check:SetDesaturated(true)
		check:SetVertexColor(0, 1, 0)

		check.IsSkinned = true
	end
end

function module:SkinProgressBars(self, key)
	local progressBar = self.usedProgressBars[key]
	local bar = progressBar and progressBar.Bar
	if not bar or progressBar.MERStyle then
		return
	end
	local icon = bar.Icon
	local label = bar.Label

	-- Bar Shadow
	module:CreateBackdropShadow(bar)

	-- Adjust the font position
	if icon then
		module:CreateBackdropShadow(progressBar)
		-- icon:Point("LEFT", bar, "RIGHT", E.PixelMode and 7 or 11, 0)
	end

	-- Fix font position
	if label then
		label:ClearAllPoints()
		label:Point("CENTER", bar, 0, 0)
		F.SetFontOutline(label)
	end

	-- Change the Font
	if not E.db.mui.blizzard.objectiveTracker.menuTitle.enable then
		F.SetFontOutline(_G.ObjectiveTrackerFrame.HeaderMenu.Title)
	end

	progressBar.MERStyle = true
end

function module:SkinTimerBars(self, key)
	local timerBar = self.usedTimerBars[key]
	local bar = timerBar and timerBar.Bar
	if bar.MERStyle then
		return
	end
	module:CreateBackdropShadow(bar)
end

function module:ScenarioStage_CustomizeBlock(stageBlock, scenarioType, widgetSetID, textureKitID)
	stageBlock.NormalBG:SetTexture("")
	stageBlock.FinalBG:SetTexture("")

	if not stageBlock.backdrop then
		stageBlock:CreateBackdrop("Transparent")
		stageBlock.backdrop:ClearAllPoints()
		stageBlock.backdrop:SetInside(stageBlock.GlowTexture, 4, 2)
		module:CreateShadow(stageBlock.backdrop)
		module:CreateGradient(stageBlock.backdrop)
	end
end

function module:Scenario_ChallengeMode_ShowBlock()
	local block = _G.ScenarioChallengeModeBlock

	if not block then
		return
	end

	-- Affix icon
	for _, child in pairs({ block:GetChildren() }) do
		if not child.MERStyle and child.affixID then
			child.Border:SetAlpha(0)
			local texPath = select(3, C_ChallengeMode_GetAffixInfo(child.affixID))
			child:CreateBackdrop("Transparent")
			child.backdrop:ClearAllPoints()
			child.backdrop:SetOutside(child.Portrait)
			child.Portrait:SetTexture(texPath)
			child.Portrait:SetTexCoord(unpack(E.TexCoords))
			child.MERStyle = true
		end
	end

	if block.MERStyle then
		return
	end

	-- Block background
	block.TimerBG:Hide()
	block.TimerBGBack:Hide()

	block:CreateBackdrop("Transparent")
	block.backdrop:ClearAllPoints()
	block.backdrop:SetInside(block, 6, 2)
	module:CreateBackdropShadow(block)

	-- Time bar
	block.StatusBar:CreateBackdrop()
	block.StatusBar.backdrop:SetBackdropBorderColor(0.2, 0.2, 0.2, 0.6)
	block.StatusBar:SetStatusBarTexture(E.media.normTex)
	block.StatusBar:SetStatusBarColor(unpack(E.media.rgbvaluecolor))
	block.StatusBar:SetHeight(10)

	select(3, block:GetRegions()):Hide()

	block.MERStyle = true
end

function module:ScenarioStageWidgetContainer()
	local contianer = _G.ScenarioStageBlock.WidgetContainer
	if not contianer or not contianer.widgetFrames then
		return
	end

	for _, widgetFrame in pairs(contianer.widgetFrames) do
		if widgetFrame.Frame then
			widgetFrame.Frame:SetAlpha(0)
		end

		local bar = widgetFrame.TimerBar

		if bar and not bar.__MERSkin then
			bar.__MERSetStatusBarTexture = bar.SetStatusBarTexture
			hooksecurefunc(bar, "SetStatusBarTexture", function(frame)
				if frame.__MERSetStatusBarTexture then
					frame:__MERSetStatusBarTexture(E.media.normTex)
					frame:SetStatusBarColor(unpack(E.media.rgbvaluecolor))
				end
			end)

			bar:CreateBackdrop("Transparent")
			bar.__MERSkin = true
		end

		if widgetFrame.CurrencyContainer then
			for currencyFrame in widgetFrame.currencyPool:EnumerateActive() do
				if not currencyFrame.__MERSkin then
					currencyFrame.Icon:SetTexCoord(unpack(E.TexCoords))
					currencyFrame.__MERSkin = true
				end
			end
		end
	end
end

function module:Blizzard_ObjectiveTracker()
	if not module:CheckDB("objectiveTracker", "objectiveTracker") then
		return
	end

	for _, tracker in pairs(trackers) do
		if tracker then
			hooksecurefunc(tracker, "AddBlock", module.SkinItemButton)
			hooksecurefunc(tracker, "GetProgressBar", module.SkinProgressBars)
			hooksecurefunc(tracker, "GetTimerBar", module.SkinTimerBars)
		end
	end
end

module:AddCallbackForAddon("Blizzard_ObjectiveTracker")
