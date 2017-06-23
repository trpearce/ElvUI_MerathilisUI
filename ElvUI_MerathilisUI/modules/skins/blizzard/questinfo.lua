local MER, E, L, V, P, G = unpack(select(2, ...))
local MERS = E:GetModule("muiSkins")
local S = E:GetModule("Skins")

-- Cache global variables
-- Lua functions
local _G = _G
local next, select = next, select

-- WoW API / Variables
local CreateFrame = CreateFrame
local QuestFrame = QuestFrame
local QuestInfoSpellObjectiveFrame = QuestInfoSpellObjectiveFrame
local GetQuestLogLeaderBoard = GetQuestLogLeaderBoard
local GetNumQuestLeaderBoards = GetNumQuestLeaderBoards
local GetNumQuestLogRewardSpells = GetNumQuestLogRewardSpells
local GetNumRewardSpells = GetNumRewardSpells
-- GLOBALS: hooksecurefunc, MAX_OBJECTIVES

local function styleQuestInfo()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.quest ~= true or E.private.muiSkins.blizzard.quest ~= true then return; end

	--[[Taken from Aurora]]--
	local function restyleRewardButton(bu, isMapQuestInfo)
		bu.NameFrame:Hide()

		bu.Icon:SetDrawLayer("BACKGROUND", 1)

		local bg = CreateFrame("Frame", nil, bu)
		bg:SetPoint("TOPLEFT", bu, 1, 1)

		if isMapQuestInfo then
			bg:SetPoint("BOTTOMRIGHT", bu, -3, 0)
			bu.Icon:SetSize(29, 29)
		else
			bg:SetPoint("BOTTOMRIGHT", bu, -3, 1)
		end

		bg:SetFrameLevel(0)
		MERS:CreateBD(bg, .25)

		bu.bg = bg
	end

	local function restyleSpellButton(bu)
		local name = bu:GetName()
		local icon = bu.Icon

		_G[name.."NameFrame"]:Hide()
		_G[name.."SpellBorder"]:Hide()

		icon:SetPoint("TOPLEFT", 3, -2)
		icon:SetDrawLayer("ARTWORK")
		icon:SetTexCoord(.08, .92, .08, .92)
		MERS:CreateBG(icon)

		local bg = CreateFrame("Frame", nil, bu)
		bg:SetPoint("TOPLEFT", 2, -1)
		bg:SetPoint("BOTTOMRIGHT", 0, 14)
		bg:SetFrameLevel(0)
		MERS:CreateBD(bg, .25)
	end

	local function SkinQuestText(font)
		local settingFont = false
		hooksecurefunc(font, "SetTextColor", function(self, texture)
			if settingFont then return end
			settingFont = true
			font:SetTextColor(1, 1, 1)
			settingFont = false
		end)
	end

	local function colourObjectivesText()
		if not _G["QuestInfoFrame"].questLog then return end

		local objectivesTable = _G["QuestInfoObjectivesFrame"].Objectives
		local numVisibleObjectives = 0

		for i = 1,GetNumQuestLeaderBoards() do
			local _, objectiveType, isCompleted = GetQuestLogLeaderBoard(i)

			if (objectiveType ~= "spell" and objectiveType ~= "log" and numVisibleObjectives < MAX_OBJECTIVES) then
				numVisibleObjectives = numVisibleObjectives + 1
				local objective = objectivesTable[numVisibleObjectives]

				if isCompleted then
					objective:SetTextColor(.9, .9, .9)
				else
					objective:SetTextColor(1, 1, 1)
				end
			end
		end
	end

	MERS:CreateGradient(QuestFrame)
	if not QuestFrame.stripes then
		MERS:CreateStripes(QuestFrame)
	end

	restyleSpellButton(QuestInfoSpellObjectiveFrame)
	hooksecurefunc("QuestMapFrame_ShowQuestDetails", colourObjectivesText)
	hooksecurefunc("QuestInfo_Display", function(template, parentFrame, acceptButton, material, mapView)
		local rewardsFrame = _G["QuestInfoFrame"].rewardsFrame
		local isQuestLog = _G["QuestInfoFrame"].questLog ~= nil
		local isMapQuest = rewardsFrame == _G["MapQuestInfoRewardsFrame"]

		colourObjectivesText()

		if ( template.canHaveSealMaterial ) then
			local questFrame = parentFrame:GetParent():GetParent()
			questFrame.SealMaterialBG:Hide()
		end

		local numSpellRewards = isQuestLog and GetNumQuestLogRewardSpells() or GetNumRewardSpells()
		if numSpellRewards > 0 then
			-- Spell Headers
			for spellHeader in rewardsFrame.spellHeaderPool:EnumerateActive() do
				spellHeader:SetVertexColor(1, 1, 1)
			end
			-- Follower Rewards
			for followerReward in rewardsFrame.followerRewardPool:EnumerateActive() do
				if not followerReward.isSkinned then
					followerReward.PortraitFrame:SetScale(1)
					followerReward.PortraitFrame:ClearAllPoints()
					followerReward.PortraitFrame:SetPoint("TOPLEFT")
					if isMapQuest then
						followerReward.PortraitFrame.Portrait:SetSize(29, 29)
					end

					followerReward.BG:Hide()
					followerReward.BG:SetPoint("TOPLEFT", followerReward.PortraitFrame, "TOPRIGHT")
					followerReward.BG:SetPoint("BOTTOMRIGHT")
					MERS:CreateBD(followerReward, .25)
					followerReward:SetHeight(followerReward.PortraitFrame:GetHeight())

					if not isMapQuest then
						followerReward.Class:SetWidth(45)
					end

					followerReward.isSkinned = true
				end
				followerReward.PortraitFrame:SetBackdropBorderColor(followerReward.PortraitFrame.PortraitRingQuality:GetVertexColor())
			end
			-- Spell Rewards
			for spellReward in rewardsFrame.spellRewardPool:EnumerateActive() do
				if not spellReward.isSkinned then
					restyleRewardButton(spellReward, isMapQuest)
					local border = select(4, spellReward:GetRegions())
					border:Hide()
					if not isMapQuest then
						spellReward.Icon:SetPoint("TOPLEFT", 0, 0)
						spellReward:SetHitRectInsets(0,0,0,0)
						spellReward:SetSize(147, 41)
					end
					spellReward.isSkinned = true
				end
			end
		end
	end)

	SkinQuestText(_G["QuestInfoSpellObjectiveLearnLabel"])

	--[[ QuestInfoRewardsFrame ]]
	local QuestInfoRewardsFrame = _G["QuestInfoRewardsFrame"]
	SkinQuestText(QuestInfoRewardsFrame.Header)
	SkinQuestText(QuestInfoRewardsFrame.ItemChooseText)
	SkinQuestText(QuestInfoRewardsFrame.ItemReceiveText)
	SkinQuestText(QuestInfoRewardsFrame.PlayerTitleText)

	for i, name in next, {"HonorFrame", "SkillPointFrame", "ArtifactXPFrame"} do
		restyleRewardButton(QuestInfoRewardsFrame[name])
	end
	SkinQuestText(QuestInfoRewardsFrame.XPFrame.ReceiveText)

	local QuestInfoPlayerTitleFrame = _G["QuestInfoPlayerTitleFrame"]
	QuestInfoPlayerTitleFrame.FrameLeft:Hide()
	QuestInfoPlayerTitleFrame.FrameCenter:Hide()
	QuestInfoPlayerTitleFrame.FrameRight:Hide()

	local titleBG = CreateFrame("Frame", nil, QuestInfoPlayerTitleFrame)
	titleBG:SetPoint("TOPLEFT", QuestInfoPlayerTitleFrame.FrameLeft, -2, 0)
	titleBG:SetPoint("BOTTOMRIGHT", QuestInfoPlayerTitleFrame.FrameRight, 0, -1)
	MERS:CreateBD(titleBG, .25)

	--[[ MapQuestInfoRewardsFrame ]]
	for i, name in next, {"HonorFrame", "MoneyFrame", "SkillPointFrame", "XPFrame", "ArtifactXPFrame", "TitleFrame"} do
		restyleRewardButton(_G["MapQuestInfoRewardsFrame"][name], true)
	end
	_G["MapQuestInfoRewardsFrame"].XPFrame.Name:SetShadowOffset(0, 0)

	hooksecurefunc("QuestInfo_GetRewardButton", function(rewardsFrame, index)
		local bu = rewardsFrame.RewardButtons[index]

		if not bu.restyled then
			restyleRewardButton(bu, rewardsFrame == _G["MapQuestInfoRewardsFrame"])

			bu.restyled = true
		end
	end)

	--[[ QuestInfoFrame ]]
	SkinQuestText(_G["QuestInfoTitleHeader"])
	SkinQuestText(_G["QuestInfoObjectivesText"])
	SkinQuestText(_G["QuestInfoRewardText"])

	hooksecurefunc(_G["QuestInfoRequiredMoneyText"], "SetTextColor", function(self, red, green, blue)
		if red == 0 then
			self:SetTextColor(.8, .8, .8)
		elseif red == .2 then
			self:SetTextColor(1, 1, 1)
		end
	end)

	SkinQuestText(_G["QuestInfoGroupSize"])
	SkinQuestText(_G["QuestInfoDescriptionHeader"])
	SkinQuestText(_G["QuestInfoObjectivesHeader"])
	SkinQuestText(_G["QuestInfoDescriptionText"])

	--[[ QuestInfoSealFrame ]]
	_G["QuestInfoSealFrame"].Text:SetShadowColor(0.2, 0.2, 0.2)
	_G["QuestInfoSealFrame"].Text:SetShadowOffset(0.6, -0.6)
end

S:AddCallback("mUIQuestInfo", styleQuestInfo)