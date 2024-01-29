local MER, F, E, L, V, P, G = unpack(ElvUI_MerathilisUI)
local module = MER:GetModule('MER_Misc')
local TT = MER:GetModule('MER_Tooltip')
local UF = E:GetModule("UnitFrames")

local _G = _G
local format = format
local pairs = pairs
local sort, wipe = table.sort, table.wipe

local HEADER_COLON = _G.HEADER_COLON

local C_AddOns_IsAddOnLoaded = C_AddOns.IsAddOnLoaded
local C_LFGList_GetActivityInfoTable = C_LFGList.GetActivityInfoTable
local C_LFGList_GetSearchResultInfo = C_LFGList.GetSearchResultInfo
local C_LFGList_GetSearchResultMemberInfo = C_LFGList.GetSearchResultMemberInfo

local LOCALIZED_CLASS_NAMES_MALE = LOCALIZED_CLASS_NAMES_MALE

local scoreFormat = MER.GreyColor .. "(%s) |r%s"

local displayOrder = {
	[1] = "TANK",
	[2] = "HEALER",
	[3] = "DAMAGER"
}

local roleText = {
	TANK = "|cff00a8ff" .. L["Tank"] .. "|r",
	HEALER = "|cff2ecc71" .. L["Healer"] .. "|r",
	DAMAGER = "|cffe74c3c" .. L["DPS"] .. "|r"
}

local function GetIconString(role, mode)
	local template
	if mode == "NORMAL" then
		template = "|T%s:14:14:0:0:64:64:8:56:8:56|t"
	elseif mode == "COMPACT" then
		template = "|T%s:18:18:0:0:64:64:8:56:8:56|t"
	end

	return format(template, UF.RoleIconTextures[role])
end

function module:AddGroupInfo(tooltip, resultID)
	local config = E.db.mui.misc.lfgInfo
	if not config or not config.enable then
		return
	end

	local result = C_LFGList_GetSearchResultInfo(resultID)

	if not result then
		return
	end

	local cache = {
		TANK = {},
		HEALER = {},
		DAMAGER = {}
	}

	local display = {
		TANK = false,
		HEALER = false,
		DAMAGER = false
	}

	for i = 1, result.numMembers do
		local role, class = C_LFGList_GetSearchResultMemberInfo(resultID, i)

		if not display[role] then
			display[role] = true
		end

		if not cache[role][class] then
			cache[role][class] = 0
		end

		cache[role][class] = cache[role][class] + 1
	end

	sort(cache, function(a, b)
		return displayOrder[a] > displayOrder[b]
	end)

	if config.title then
		tooltip:AddLine(" ")
		tooltip:AddLine(MER.Title .. " " .. L["LFG Info"])
	end

	if config.mode == "COMPACT" then
		tooltip:AddLine(" ")
	end

	for i = 1, #displayOrder do
		local role = displayOrder[i]
		local members = cache[role]
		if members and display[role] then
			if config.mode == "NORMAL" then
				tooltip:AddLine(" ")
				tooltip:AddLine(GetIconString(role, "NORMAL") .. " " .. roleText[role])
			end

			for class, counter in pairs(members) do
				local numberText = counter ~= 1 and format(" × %d", counter) or ""
				local icon = config.mode == "COMPACT" and GetIconString(role, "COMPACT") or ""
				local className = F.CreateClassColorString(LOCALIZED_CLASS_NAMES_MALE[class], class)
				tooltip:AddLine(icon .. className .. numberText)
			end
		end
	end

	wipe(cache)

	tooltip:ClearAllPoints()
	tooltip:SetPoint("TOPLEFT", _G.LFGListFrame, "TOPRIGHT", 10, 0)
	tooltip:Show()
end

local factionStr = {
	[0] = "Horde",
	[1] = "Alliance",
}

function module:ShowLeaderOverallScore(self)
	local resultID = self.resultID
	local searchResultInfo = resultID and C_LFGList_GetSearchResultInfo(resultID)
	if searchResultInfo then
		local activityInfo = C_LFGList_GetActivityInfoTable(searchResultInfo.activityID, nil, searchResultInfo.isWarMode)
		if activityInfo then
			local showScore = activityInfo.isMythicPlusActivity and searchResultInfo.leaderOverallDungeonScore
				or
				activityInfo.isRatedPvpActivity and searchResultInfo.leaderPvpRatingInfo and
				searchResultInfo.leaderPvpRatingInfo.rating
			if showScore then
				local oldName = self.ActivityName:GetText()
				oldName = gsub(oldName, ".-" .. HEADER_COLON, "") -- Tazavesh
				self.ActivityName:SetFormattedText(scoreFormat, TT.GetDungeonScore(showScore), oldName)

				if not self.crossFactionLogo then
					local logo = self:CreateTexture(nil, "OVERLAY")
					logo:SetPoint("TOPLEFT", -6, 5)
					logo:SetSize(24, 24)
					self.crossFactionLogo = logo
				end
			end
		end

		if self.crossFactionLogo then
			if searchResultInfo.crossFactionListing then
				self.crossFactionLogo:Hide()
			else
				self.crossFactionLogo:SetTexture("Interface\\Timer\\" ..
					factionStr[searchResultInfo.leaderFactionGroup] .. "-Logo")
				self.crossFactionLogo:Show()
			end
		end
	end
end

function module:LFGInfo()
	if C_AddOns_IsAddOnLoaded("PremadeGroupsFilter") then
		self.StopRunning = "PremadeGroupsFilter"
		return
	end

	self.db = E.db.mui.misc.lfgInfo
	if not self.enable then
		return
	end

	module:SecureHook("LFGListUtil_SetSearchEntryTooltip", "AddGroupInfo")
	module:SecureHook("LFGListSearchEntry_Update", "ShowLeaderOverallScore")
end

module:AddCallback("LFGInfo")
