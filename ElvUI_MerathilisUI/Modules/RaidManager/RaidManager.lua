local MER, F, E, L, V, P, G = unpack(ElvUI_MerathilisUI)
local module = MER:GetModule('MER_RaidManager')
local S = MER:GetModule('MER_Skins')
local ES = E:GetModule('Skins')

local _G = _G
local ipairs, next, pairs, select, unpack = ipairs, next, pairs, select, unpack
local strfind = strfind
local tinsert, tsort, twipe = table.insert, table.sort, table.wipe

local CreateFrame = CreateFrame
local GetInstanceInfo = GetInstanceInfo
local GetNumGroupMembers = GetNumGroupMembers
local GetRaidRosterInfo = GetRaidRosterInfo
local GetReadyCheckStatus = GetReadyCheckStatus
local GetSpellCharges = GetSpellCharges
local GetSpellTexture = GetSpellTexture
local GetTexCoordsForRole = GetTexCoordsForRole
local GetTime = GetTime
local IsInGroup = IsInGroup
local IsInRaid = IsInRaid
local UnitGroupRolesAssigned = UnitGroupRolesAssigned
local UnitIsGroupAssistant = UnitIsGroupAssistant
local UnitIsGroupLeader = UnitIsGroupLeader
local InCombatLockdown = InCombatLockdown
local IsAddOnLoaded = IsAddOnLoaded
local LoadAddOn = LoadAddOn
local DoReadyCheck = DoReadyCheck
local InitiateRolePoll = InitiateRolePoll
local SlashCmdList = SlashCmdList
local HasLFGRestrictions = HasLFGRestrictions
local C_PartyInfo_ConvertToParty = C_PartyInfo.ConvertToParty
local C_PartyInfo_ConvertToRaid = C_PartyInfo.ConvertToRaid
local C_Timer_After = C_Timer.After
local SetRestrictPings = C_PartyInfo.SetRestrictPings
local GetRestrictPings = C_PartyInfo.GetRestrictPings
local issecurevariable = issecurevariable

local GameTooltip = GameTooltip
local ToggleFriendsFrame = ToggleFriendsFrame

local IG_MAINMENU_OPTION_CHECKBOX_ON = SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON

local PANEL_WIDTH = 270
local PANEL_HEIGHT = 150
local BUTTON_HEIGHT = 25

local function GetRaidMaxGroup()
	local _, instType, difficulty = GetInstanceInfo()
	if (instType == "party" or instType == "scenario") and not IsInRaid() then
		return 1
	elseif instType ~= "raid" then
		return 8
	elseif difficulty == 8 or difficulty == 1 or difficulty == 2 or difficulty == 24 then
		return 1
	elseif difficulty == 14 or difficulty == 15 then
		return 6
	elseif difficulty == 16 then
		return 4
	elseif difficulty == 3 or difficulty == 5 then
		return 2
	elseif difficulty == 9 then
		return 8
	else
		return 5
	end
end

local RoleTexCoord = {
	{.5, .75, 0, 1},
	{.75, 1, 0, 1},
	{.25, .5, 0, 1},
}

local RaidCounts = {
	totalTANK = 0,
	totalHEALER = 0,
	totalDAMAGER = 0,
}

local function ToogleRaidMangerFrame()
	if _G.RaidManagerFrame:IsShown() then
		_G.RaidManagerFrame:Hide()
	else
		_G.RaidManagerFrame:Show()
	end
end

local function sortColoredNames(a, b)
	return a:sub(11) < b:sub(11)
end

local roleIconRoster = {}
local function onEnter(self)
	twipe(roleIconRoster)

	for i = 1, _G.NUM_RAID_GROUPS do
		roleIconRoster[i] = {}
	end

	local role = self.role
	local point = E:GetScreenQuadrant(_G.RaidManagerFrame)
	local bottom = point and strfind(point, "BOTTOM")
	local left = point and strfind(point, "LEFT")

	local anchor1 = (bottom and left and "BOTTOMLEFT") or (bottom and "BOTTOMRIGHT") or (left and "TOPLEFT") or "TOPRIGHT"
	local anchor2 = (bottom and left and "BOTTOMRIGHT") or (bottom and "BOTTOMLEFT") or (left and "TOPRIGHT") or "TOPLEFT"
	local anchorX = left and 2 or -2

	local GameTooltip = _G.GameTooltip
	GameTooltip:SetOwner(E.UIParent, "ANCHOR_NONE")
	GameTooltip:Point(anchor1, self, anchor2, anchorX, 0)
	GameTooltip:SetText(_G["INLINE_" .. role .. "_ICON"] .. _G[role])

	local name, group, class, groupRole, color, coloredName, _
	for i = 1, GetNumGroupMembers() do
		name, _, group, _, _, class, _, _, _, _, _, groupRole = GetRaidRosterInfo(i)
		if name and groupRole == role then
			color = E:ClassColor(class)
			coloredName = ("|cff%02x%02x%02x%s"):format(color.r * 255, color.g * 255, color.b * 255, name:gsub("%-.+", "*"))
			tinsert(roleIconRoster[group], coloredName)
		end
	end

	for Group, list in ipairs(roleIconRoster) do
		tsort(list, sortColoredNames)
		for _, Name in ipairs(list) do
			GameTooltip:AddLine(("[%d] %s"):format(Group, Name), 1, 1, 1)
		end
		roleIconRoster[Group] = nil
	end

	GameTooltip:Show()
end

local function RaidFrameManager_PositionRoleIcons()
	local point = E:GetScreenQuadrant(_G.RaidManagerFrame)
	local left = point and strfind(point, "LEFT")
	_G.RaidManagerRoleIcons:ClearAllPoints()

	if left then
		_G.RaidManagerRoleIcons:Point("LEFT", _G.RaidFrameManager, "RIGHT", 3, 0)
	else
		_G.RaidManagerRoleIcons:Point("RIGHT", _G.RaidFrameManager, "LEFT", 1, 0)
	end
end

local count = {}
local function UpdateIcons(self)
	if not IsInRaid() then
		self:Hide()
		return
	else
		self:Show()
		RaidFrameManager_PositionRoleIcons()
	end

	twipe(count)

	for i = 1, GetNumGroupMembers() do
		local role = UnitGroupRolesAssigned('raid'..i)
		if role and role ~= 'NONE' then
			count[role] = (count[role] or 0) + 1
		end
	end

	for Role, icon in next, _G.RaidManagerRoleIcons.icons do
		icon.count:SetText(count[Role] or 0)
	end
end

-- Change border when mouse is inside the button
function module:OnEnter_Button()
	if self.backdrop then self = self.backdrop end
	self:SetBackdropBorderColor(unpack(E.media.rgbvaluecolor))
end

-- Change border back to normal when mouse leaves button
function module:OnLeave_Button()
	if self.backdrop then self = self.backdrop end
	self:SetBackdropBorderColor(unpack(E.media.bordercolor))
end

function module:OnClick_EveryoneAssist()
	PlaySound(IG_MAINMENU_OPTION_CHECKBOX_ON)
	SetEveryoneIsAssistant(self:GetChecked())
end

function module:OnEvent_EveryoneAssist()
	self:SetChecked(IsEveryoneAssistant())
end

function module:OnClick_RestrictPings()
	PlaySound(IG_MAINMENU_OPTION_CHECKBOX_ON)
	SetRestrictPings(self:GetChecked())
end

function module:OnEvent_RestrictPings()
	self:SetChecked(GetRestrictPings())
end

function module:CreateCheckBox(name, parent, template, width, height, point, relativeto, point2, xOfs, yOfs, label, events, eventFunc, clickFunc)
	local checkbox = type(name) == 'table' and name
	local box = checkbox or CreateFrame('CheckButton', name, parent, template or 'UICheckButtonTemplate')
	box:Size(height)

	if events then
		box:UnregisterAllEvents()

		for _, event in next, events do
			box:RegisterEvent(event)
		end
	end

	box:SetScript('OnEvent', eventFunc)
	box:SetScript('OnClick', clickFunc)

	if not box.isSkinned then
		ES:HandleCheckBox(box)
	end

	if box.Text then
		box.Text:Point('LEFT', box, 'RIGHT', 2, 0)
		box.Text:SetText(label or '')
		box.Text:SetTextColor(1, 1, 1, 1)
	end

	if not box:GetPoint() then
		box:Point(point, relativeto, point2, xOfs, yOfs)
	end

	module.CheckBoxes[name] = box

	return box
end

function module:CreateUtilButton(name, parent, template, width, height, point, relativeto, point2, xOfs, yOfs, label, texture)
	local button = type(name) == 'table' and name
	local btn = button or CreateFrame('Button', name, parent, template)
	btn:HookScript('OnEnter', module.OnEnter_Button)
	btn:HookScript('OnLeave', module.OnLeave_Button)
	btn:Size(width, height)
	ES:HandleButton(btn)

	if not btn:GetPoint() then
		btn:Point(point, relativeto, point2, xOfs, yOfs)
	end

	if label then
		local text = btn:CreateFontString(nil, 'OVERLAY')
		text:FontTemplate()
		text:Point('CENTER', btn, 'CENTER', 0, -1)
		text:SetJustifyH('CENTER')
		text:SetText(label)
		btn:SetFontString(text)
		btn.text = text
	elseif texture then
		local tex = btn:CreateTexture(nil, 'OVERLAY')
		tex:SetTexture(texture)
		tex:Point('TOPLEFT', btn, 'TOPLEFT', 1, -1)
		tex:Point('BOTTOMRIGHT', btn, 'BOTTOMRIGHT', -1, 1)
		tex.tex = texture
		btn.texture = tex
	end

	module.Buttons[name] = btn

	return btn
end

function module:Initialize()
	local db = E.db.mui.raidmanager
	if not db.enable then return end

	-- Disable ElvUI's RaidUtility
	E.private.general.raidUtility = false

	module.Buttons = {}
	module.CheckBoxes = {}

	-- Main Frame
	local RaidManagerFrame = CreateFrame("Frame", "RaidManagerFrame", E.UIParent, "SecureHandlerBaseTemplate")
	RaidManagerFrame:SetScript('OnMouseUp', module.OnClick_RaidUtilityPanel)
	RaidManagerFrame:Size(PANEL_WIDTH, PANEL_HEIGHT)
	RaidManagerFrame:Point("TOPLEFT", E.UIParent, "TOPLEFT", 240, -50)
	RaidManagerFrame:SetFrameStrata("HIGH")
	RaidManagerFrame:Hide()
	E.FrameLocks.RaidManagerFrame = true

	RaidManagerFrame:RegisterForDrag("LeftButton")
	RaidManagerFrame:SetScript("OnDragStart", function(self) self:StartMoving() end)
	RaidManagerFrame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
	RaidManagerFrame:SetClampedToScreen(true)
	RaidManagerFrame:SetMovable(true)
	RaidManagerFrame:EnableMouse(true)

	RaidManagerFrame:CreateBackdrop("Transparent")
	RaidManagerFrame.backdrop:Styling()
	S:CreateShadowModule(RaidManagerFrame.backdrop)

	-- Top Title
	RaidManagerFrame.title = RaidManagerFrame:CreateFontString(nil, "OVERLAY")
	RaidManagerFrame.title:FontTemplate(nil, 14, "OUTLINE")
	RaidManagerFrame.title:SetTextColor(F.r, F.g, F.b)
	RaidManagerFrame.title:Point("BOTTOM", RaidManagerFrame, "TOP", 0, -5)
	RaidManagerFrame.title:SetText(L["Raid Manager"])

	-- Close Button
	RaidManagerFrame.Close = CreateFrame("Button", nil, RaidManagerFrame)
	RaidManagerFrame.Close:Point("BOTTOMRIGHT", -3, 3)
	RaidManagerFrame.Close:Size(20, 20)
	RaidManagerFrame.Close:SetScript("OnClick", function()
		RaidManagerFrame:Hide()
		if _G.RaidMarkFrame:IsShown() then
			_G.RaidMarkFrame:Hide()
		end
	end)

	RaidManagerFrame.Close.tex = RaidManagerFrame.Close:CreateTexture(nil, "BACKGROUND")
	RaidManagerFrame.Close.tex:SetTexture("Interface\\AddOns\\ElvUI_MerathilisUI\\Media\\Textures\\Icons\\Exit")
	RaidManagerFrame.Close.tex:SetAllPoints(RaidManagerFrame.Close)
	RaidManagerFrame.Close.tex:SetVertexColor(1, 1, 1)
	RaidManagerFrame.Close:SetScript("OnEnter", function()
		RaidManagerFrame.Close.tex:SetVertexColor(F.r, F.g, F.b)
	end)
	RaidManagerFrame.Close:SetScript("OnLeave", function()
		RaidManagerFrame.Close.tex:SetVertexColor(1, 1, 1, 1)
	end)

	if _G.CompactRaidFrameManager then
		local WorldMarkButton = _G.CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton
		WorldMarkButton:SetParent(RaidManagerFrame)
		WorldMarkButton:ClearAllPoints()
		WorldMarkButton:Point("TOPRIGHT", RaidManagerFrame, "TOPRIGHT", -5, -3)
		WorldMarkButton:Size(18, 18)

		WorldMarkButton:HookScript("OnEvent", function(self, event)
			if UnitIsGroupAssistant("player") or UnitIsGroupLeader("player") or (IsInGroup() and not IsInRaid()) then
				self:Enable()
			else
				self:Disable()
			end
		end)

		WorldMarkButton:RegisterEvent("GROUP_ROSTER_UPDATE")
		WorldMarkButton:RegisterEvent("PLAYER_ENTERING_WORLD")
	else
		E:StaticPopup_Show('WARNING_BLIZZARD_ADDONS')
	end

	local BUTTON_WIDTH = PANEL_WIDTH / 2 - 20
	local PullButton = module:CreateUtilButton("RaidManagerFramePullButton", RaidManagerFrame, "UIMenuButtonStretchTemplate, SecureHandlerClickTemplate", BUTTON_WIDTH, BUTTON_HEIGHT, "TOPRIGHT", RaidManagerFrame, "TOP", -5, -25, L["Pull"])

	local reset = true
	PullButton:SetScript("OnClick", function(self)
		if IsInGroup() and (UnitIsGroupLeader("player") or (UnitIsGroupAssistant("player") and IsInRaid())) then
			if IsAddOnLoaded("DBM-Core") then
				if reset then
					SlashCmdList["DEADLYBOSSMODS"]("pull "..E.db.mui.raidmanager.count)
				else
					SlashCmdList["DEADLYBOSSMODS"]("pull 0")
				end
				reset = not reset
			elseif IsAddOnLoaded("BigWigs") then
				if not SlashCmdList["BIGWIGSPULL"] then LoadAddOn("BigWigs_Plugins") end

				if reset then
					SlashCmdList["BIGWIGSPULL"](E.db.mui.raidmanager.count)
				else
					SlashCmdList["BIGWIGSPULL"]("0")
				end
				reset = not reset
			else
				_G.UIErrorsFrame:AddMessage(MER.InfoColor..L["Bossmod requiered"])
			end
		else
			_G.UIErrorsFrame:AddMessage(MER.InfoColor.._G.ERR_NOT_LEADER)
		end
	end)

	PullButton:RegisterEvent("PLAYER_REGEN_ENABLED")
	PullButton:SetScript("OnEvent", function() reset = true end)

	local ReadyCheckButton = module:CreateUtilButton("RaidManagerFrameReadyCheckButton", RaidManagerFrame, "UIMenuButtonStretchTemplate, SecureHandlerClickTemplate", BUTTON_WIDTH, BUTTON_HEIGHT, "LEFT", PullButton, "RIGHT", 10, 0, _G.READY_CHECK)

	ReadyCheckButton:SetScript("OnClick", function()
		if InCombatLockdown() then _G.UIErrorsFrame:AddMessage(MER.RedColor.._G.ERR_NOT_IN_COMBAT) return end
		if IsInGroup() and (UnitIsGroupLeader("player") or (UnitIsGroupAssistant("player") and IsInRaid())) then
			DoReadyCheck()
		else
			_G.UIErrorsFrame:AddMessage(MER.RedColor.._G.ERR_NOT_LEADER)
		end
	end)

	local RolePollButton = module:CreateUtilButton("RaidManagerFrameRoleCheckButton", RaidManagerFrame, "UIMenuButtonStretchTemplate, SecureHandlerClickTemplate", BUTTON_WIDTH, BUTTON_HEIGHT, "TOP", PullButton, "BOTTOM", 0, -5, _G.ROLE_POLL)

	RolePollButton:SetScript("OnClick", function()
		if IsInGroup() and not HasLFGRestrictions() and (UnitIsGroupLeader("player") or (UnitIsGroupAssistant("player") and IsInRaid())) then
			InitiateRolePoll()
		else
			_G.UIErrorsFrame:AddMessage(MER.RedColor.._G.ERR_NOT_LEADER)
		end
	end)

	local ConvertGroupButton = module:CreateUtilButton("RaidManagerFrameConvertGroupButton", RaidManagerFrame, "UIMenuButtonStretchTemplate, SecureHandlerClickTemplate", BUTTON_WIDTH, BUTTON_HEIGHT, "LEFT", RolePollButton, "RIGHT", 10, 0, "")

	ConvertGroupButton:SetScript("OnEvent", function(self, event, arg1)
		if not IsInGroup() then
			self:Hide()
		else
			if IsInRaid() then
				self.text:SetText(_G.CONVERT_TO_PARTY)
			else
				self.text:SetText(_G.CONVERT_TO_RAID)
			end

			if not self:IsProtected() and not issecurevariable(self, "Show") then
				self:Show()
			end
		end
	end)

	ConvertGroupButton:SetScript("OnClick", function(self)
		if IsInRaid() and UnitIsGroupLeader("player") and not HasLFGRestrictions() then
			C_PartyInfo_ConvertToParty()
		elseif IsInGroup() and UnitIsGroupLeader("player") and not HasLFGRestrictions() then
			C_PartyInfo_ConvertToRaid()
		else
			_G.UIErrorsFrame:AddMessage(MER.InfoColor.._G.ERR_NOT_LEADER)
		end
	end)

	ConvertGroupButton:RegisterEvent("GROUP_ROSTER_UPDATE")
	ConvertGroupButton:RegisterEvent("PLAYER_ENTERING_WORLD")

	local EveryoneAssist = module:CreateCheckBox("RaidManagerFrame_EveryoneAssist", RaidManagerFrame, nil, BUTTON_WIDTH, BUTTON_HEIGHT + 4, 'TOPLEFT', RolePollButton, 'BOTTOMLEFT', -4, -3, _G.ALL_ASSIST_LABEL_LONG, {'GROUP_ROSTER_UPDATE', 'PARTY_LEADER_CHANGED'}, module.OnEvent_EveryoneAssist, module.OnClick_EveryoneAssist)

	if SetRestrictPings then
		module:CreateCheckBox("RaidManagerFrame_RestrictPings", RaidManagerFrame, nil, BUTTON_WIDTH, BUTTON_HEIGHT + 4, 'TOPLEFT', EveryoneAssist, 'BOTTOMLEFT', 0, 0, _G.RAID_MANAGER_RESTRICT_PINGS, {'GROUP_ROSTER_UPDATE', 'PARTY_LEADER_CHANGED'}, module.OnEvent_RestrictPings, module.OnClick_RestrictPings)
	end

	local RaidMarkFrame = CreateFrame("Frame", "RaidMarkFrame", E.UIParent)
	RaidMarkFrame:Size(270, 80)
	RaidMarkFrame:Point("TOP", RaidManagerFrame, "BOTTOM", 0, -5)
	RaidMarkFrame:SetFrameStrata("HIGH")
	RaidMarkFrame:Hide()
	RaidMarkFrame:CreateBackdrop("Transparent")
	RaidMarkFrame.backdrop:Styling()
	S:CreateShadowModule(RaidMarkFrame.backdrop)

	RaidMarkFrame:RegisterForDrag("LeftButton")
	RaidMarkFrame:SetScript("OnDragStart", function(self) self:StartMoving() end)
	RaidMarkFrame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
	RaidMarkFrame:SetClampedToScreen(true)
	RaidMarkFrame:SetMovable(true)

	--Role Icons
	local RoleIcons = CreateFrame("Frame", "RaidManagerRoleIcons", RaidManagerFrame)
	RoleIcons:Point("LEFT", RaidManagerFrame, "RIGHT", 3, 0)
	RoleIcons:Size(36, RaidManagerFrame:GetHeight())
	RoleIcons:CreateBackdrop("Transparent")
	RoleIcons.backdrop:Styling()
	S:CreateShadowModule(RoleIcons.backdrop)

	RoleIcons:RegisterEvent("PLAYER_ENTERING_WORLD")
	RoleIcons:RegisterEvent("GROUP_ROSTER_UPDATE")
	RoleIcons:SetScript("OnEvent", UpdateIcons)

	RoleIcons.icons = {}

	local roles = {"TANK", "HEALER", "DAMAGER"}
	for i, role in ipairs(roles) do
		local frame = CreateFrame("Frame", "$parent_"..role, RoleIcons)
		if i == 1 then
			frame:Point("BOTTOM", 0, 10)
		else
			frame:Point("BOTTOM", _G["RaidManagerRoleIcons_"..roles[i-1]], "TOP", 0, 10)
		end

		frame:Size(36, 36)

		local texture = frame:CreateTexture(nil, "OVERLAY")
		texture:SetTexture(E.Media.Textures.RoleIcons) --(337499)
		local texA, texB, texC, texD = GetTexCoordsForRole(role)
		texture:SetTexCoord(texA, texB, texC, texD)

		local texturePlace = 2
		texture:Point("TOPLEFT", frame, "TOPLEFT", -texturePlace, texturePlace)
		texture:Point("BOTTOMRIGHT", frame, "BOTTOMRIGHT", texturePlace, -texturePlace)
		frame.texture = texture

		local Count = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
		Count:Point("BOTTOMRIGHT", -2, 2)
		Count:SetText(0)
		frame.count = Count

		frame.role = role
		frame:SetScript("OnEnter", onEnter)
		frame:SetScript("OnLeave", GameTooltip_Hide)

		RoleIcons.icons[role] = frame
	end

	local header = CreateFrame("Button", nil, E.UIParent)
	header:Size(120, 28)
	header:SetFrameLevel(2)
	header:Point("TOPLEFT", E.UIParent, "TOPLEFT", 268, -15)
	header:SetFrameStrata("HIGH")
	header:EnableMouse(true)
	header:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	header:CreateBackdrop("Transparent")
	header.backdrop:SetAllPoints()
	header.backdrop:SetBackdropColor(0, 0, 0, 0.3)
	header.backdrop:Styling()
	S:CreateShadowModule(header.backdrop)
	E.FrameLocks[header] = true

	E:CreateMover(header, "MER_RaidManager", L["Raid Manager"], nil, nil, nil, "ALL,SOLO,PARTY,RAID,MERATHILISUI", nil,
		'mui,misc')

	header:SetScript("OnEvent", function(self)
		self:UnregisterEvent("PLAYER_ENTERING_WORLD")
		if IsInGroup() or IsInRaid() then
			self:Show()
		else
			self:Hide()
		end
	end)
	header:SetScript("OnEnter", function(self)
		self.backdrop:SetBackdropColor(F.r, F.g, F.b, 1)

		GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
		GameTooltip:ClearLines()
		GameTooltip:AddLine(L["Raid Manager"], F.r, F.g, F.b)
		GameTooltip:AddLine(" ")
		GameTooltip:AddDoubleLine(MER.LeftButton .. MER.InfoColor .. L["Open Raid Manager"])
		GameTooltip:AddLine(" ")
		GameTooltip:AddDoubleLine(MER.RightButton .. MER.InfoColor .. L["Open Raid Panel"])
		GameTooltip:Show()
	end)
	header:SetScript("OnLeave", function(self)
		self.backdrop:SetBackdropColor(0, 0, 0, 0.3)
		GameTooltip:Hide()
	end)
	header:SetScript("OnClick", function(self, btn)
		if btn == "LeftButton" then
			ToogleRaidMangerFrame()
		elseif btn == "RightButton" then
			ToggleFriendsFrame(3)
		end
	end)

	header:RegisterEvent("GROUP_ROSTER_UPDATE")
	header:RegisterEvent("PLAYER_ENTERING_WORLD")

	local roleFrame = CreateFrame("Frame", nil, header)
	roleFrame:SetAllPoints()

	local role = {}
	for i = 1, 3 do
		role[i] = roleFrame:CreateTexture(nil, "OVERLAY")
		role[i]:Point("LEFT", 36 * i - 30, 0)
		role[i]:Size(15, 15)
		role[i]:SetTexture("Interface\\AddOns\\ElvUI_MerathilisUI\\Media\\Textures\\LFGROLE")
		role[i]:SetTexCoord(unpack(RoleTexCoord[i]))
		role[i].text = roleFrame:CreateFontString(nil, "OVERLAY")
		role[i].text:FontTemplate(nil, 13)
		role[i].text:SetText("0")
		role[i].text:ClearAllPoints()
		role[i].text:SetPoint("CENTER", role[i], "RIGHT", 12, 0)
	end

	roleFrame:RegisterEvent("GROUP_ROSTER_UPDATE")
	roleFrame:RegisterEvent("UPDATE_ACTIVE_BATTLEFIELD")
	roleFrame:RegisterEvent("UNIT_FLAGS")
	roleFrame:RegisterEvent("PLAYER_FLAGS_CHANGED")
	roleFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
	roleFrame:SetScript("OnEvent", function()
		for k in pairs(RaidCounts) do
			RaidCounts[k] = 0
		end

		local maxgroup = GetRaidMaxGroup()
		for i = 1, GetNumGroupMembers() do
			local name, _, subgroup, _, _, _, _, online, isDead, _, _, assignedRole = GetRaidRosterInfo(i)
			if name and online and subgroup <= maxgroup and not isDead and assignedRole ~= "NONE" then
				RaidCounts["total" .. assignedRole] = RaidCounts["total" .. assignedRole] + 1
			end
		end

		role[1].text:SetText(RaidCounts.totalTANK)
		role[2].text:SetText(RaidCounts.totalHEALER)
		role[3].text:SetText(RaidCounts.totalDAMAGER)
	end)

	-- Battle resurrect
	local resFrame = CreateFrame("Frame", nil, header)
	resFrame:SetAllPoints()
	resFrame:SetAlpha(0)

	local res = CreateFrame("Frame", nil, resFrame)
	res:Size(22, 22)
	res:Point("LEFT", 5, 0)
	F.PixelIcon(res, GetSpellTexture(20484))

	res.Count = res:CreateFontString(nil, "OVERLAY")
	res.Count:FontTemplate(nil, 16, "OUTLINE")
	res.Count:SetText("0")
	res.Count:ClearAllPoints()
	res.Count:Point("LEFT", res, "RIGHT", 10, 0)

	res.Timer = resFrame:CreateFontString(nil, "OVERLAY")
	res.Timer:FontTemplate(nil, 16, "OUTLINE")
	res.Timer:SetText("00:00")
	res.Timer:ClearAllPoints()
	res.Timer:SetPoint("RIGHT", res, "LEFT", -5, 0)

	res:SetScript("OnUpdate", function(self, elapsed)
		self.elapsed = (self.elapsed or 0) + elapsed
		if self.elapsed > .1 then
			local charges, _, started, duration = GetSpellCharges(20484)
			if charges then
				local timer = duration - (GetTime() - started)
				if timer < 0 then
					self.Timer:SetText("--:--")
				else
					self.Timer:SetFormattedText("%d:%.2d", timer / 60, timer % 60)
				end
				self.Count:SetText(charges)
				if charges == 0 then
					self.Count:SetTextColor(1, 0, 0)
				else
					self.Count:SetTextColor(0, 1, 0)
				end
				resFrame:SetAlpha(1)
				roleFrame:SetAlpha(0)
			else
				resFrame:SetAlpha(0)
				roleFrame:SetAlpha(1)
			end

			self.elapsed = 0
		end
	end)

	-- Ready check indicator
	local rcFrame = CreateFrame("Frame", nil, header)
	rcFrame:Point("TOP", header, "BOTTOM", 0, -2)
	rcFrame:Size(120, 50)
	rcFrame:Hide()

	rcFrame:CreateBackdrop("Transparent")
	rcFrame.backdrop:SetAllPoints()
	rcFrame.backdrop:Styling()
	S:CreateShadowModule(rcFrame.backdrop)

	rcFrame.Text = rcFrame:CreateFontString(nil, "OVERLAY")
	rcFrame.Text:FontTemplate(nil, 14, "OUTLINE")
	rcFrame.Text:SetText(_G.READY_CHECK)
	rcFrame.Text:ClearAllPoints()
	rcFrame.Text:SetPoint("BOTTOM", rcFrame, "TOP", 0, -20)

	local rc = rcFrame:CreateFontString(nil, "OVERLAY")
	rc:FontTemplate(nil, 14, "OUTLINE")
	rc:SetText("")
	rc:SetPoint("TOP", rcFrame.Text, "BOTTOM", 0, -10)

	local count, total
	local function hideRCFrame()
		rcFrame:Hide()
		rc:SetText("")
		count, total = 0, 0
	end

	rcFrame:RegisterEvent("READY_CHECK")
	rcFrame:RegisterEvent("READY_CHECK_CONFIRM")
	rcFrame:RegisterEvent("READY_CHECK_FINISHED")
	rcFrame:SetScript("OnEvent", function(self, event)
		if event == "READY_CHECK_FINISHED" then
			if count == total then
				rc:SetTextColor(0, 1, 0)
			else
				rc:SetTextColor(1, 0, 0)
			end
			C_Timer_After(5, hideRCFrame)
		else
			count, total = 0, 0
			self:Show()
			local maxgroup = GetRaidMaxGroup()
			for i = 1, GetNumGroupMembers() do
				local name, _, subgroup, _, _, _, _, online = GetRaidRosterInfo(i)
				if name and online and subgroup <= maxgroup then
					total = total + 1
					local status = GetReadyCheckStatus(name)
					if status and status == "ready" then
						count = count + 1
					end
				end
			end
			rc:SetText(count .. " / " .. total)
			if count == total then
				rc:SetTextColor(0, 1, 0)
			else
				rc:SetTextColor(1, 1, 0)
			end
		end
	end)
	rcFrame:SetScript("OnMouseUp", function() self:Hide() end)
end

MER:RegisterModule(module:GetName())
