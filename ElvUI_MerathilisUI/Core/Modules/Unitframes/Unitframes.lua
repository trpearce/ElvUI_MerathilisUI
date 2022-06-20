local MER, F, E, L, V, P, G = unpack(select(2, ...))
local module = MER:GetModule('MER_UnitFrames')
local S = MER:GetModule('MER_Skins')
local UF = E:GetModule('UnitFrames')

local hooksecurefunc = hooksecurefunc

function module:ADDON_LOADED(event, addon)
	if addon ~= "ElvUI_Config" then return end

	module:UnregisterEvent(event)
end

function module:CreateHighlight(self)
	if not E.db.mui.unitframes.highlight then return end

	local hl = self:CreateTexture(nil, "BACKGROUND")
	hl:SetAllPoints()
	hl:SetTexture("Interface\\PETBATTLES\\PetBattle-SelectedPetGlow")
	hl:SetTexCoord(0, 1, .5, 1)
	hl:SetVertexColor(1, 1, .6)
	hl:SetBlendMode("ADD")
	hl:Hide()
	self.Highlight = hl

	self:HookScript("OnEnter", function()
		self.Highlight:Show()
	end)
	self:HookScript("OnLeave", function()
		self.Highlight:Hide()
	end)
end

function module:UnitFrames_UpdateNameSettings(_, f)
	if f.shadow then return end

	S:CreateBackdropShadow(f.Health, true)
end

function module:UnitFrames_Configure_Threat(_, f)
	if f.shadow then return end

	local threat = f.ThreatIndicator
	if not threat then return end

	threat.PostUpdate = function(self, unit, status, r, g, b)
		UF.UpdateThreat(self, unit, status, r, g, b)
		local parent = self:GetParent()
		if not unit or parent.unit ~= unit then
			return
		end
		if parent.db and parent.db.threatStyle == "GLOW" then
			if parent.Health and parent.Health.backdrop and parent.Health.backdrop.shadow then
				parent.Health.backdrop.shadow:SetShown(not threat.MainGlow:IsShown())
			end
			if parent.Power and parent.Power.backdrop and parent.Power.backdrop.shadow and parent.USE_POWERBAR_OFFSET then
				parent.Power.backdrop.shadow:SetShown(not threat.MainGlow:IsShown())
			end
		end
	end
end

function module:UnitFrames_Configure_Power(_, f)
	if f.shadow then return end

	if f.USE_POWERBAR then
		local shadow = f.Power.backdrop.shadow
		if f.POWERBAR_DETACHED then
			if not shadow then
				S:CreateBackdropShadow(f.Power, true)
			else
				shadow:Show()
			end
		else
			if shadow then
				shadow:Hide()
			end
		end
	end
end

function module:UnitFrames_Configure_ClassBar(_, f)
	if f.shadow then return end

	local bars = f[f.ClassBar]
	if bars and not bars.backdrop.shadow then
		S:CreateShadow(bars.backdrop)
	end

	if f.shadow then
		f.shadow:ClearAllPoints()
		if f.USE_MINI_CLASSBAR and not f.CLASSBAR_DETACHED then
			f.shadow:Point('TOPLEFT', f.Health.backdrop, 'TOPLEFT')
			f.shadow:Point('BOTTOMRIGHT', f, 'BOTTOMRIGHT')
			bars.backdrop.shadow:Show()
		elseif not f.CLASSBAR_DETACHED then
			bars.backdrop.shadow:Hide()
		else
			bars.backdrop.shadow:Show()
		end
	end
end

function module:UnitFrames_PostUpdateAura(_, _, button)
	local db = UF.db.colors
	local enemyNPC = not button.isFriend and not button.isPlayer
	local r, g, b
	r = E.private.mui.skins.shadow.color.r or 0
	g = E.private.mui.skins.shadow.color.g or 0
	b = E.private.mui.skins.shadow.color.b or 0

	if button.isDebuff then
		if enemyNPC then
			if db.auraByType then
				r, g, b = .9, .1, .1
			end
		elseif db.auraByDispels and button.debuffType and E.BadDispels[button.spellID] and E:IsDispellableByMe(button.debuffType) then
			r, g, b = .05, .85, .94
		elseif db.auraByType then
			local color = _G.DebuffTypeColor[button.debuffType] or _G.DebuffTypeColor.none
			r, g, b = color.r, color.g, color.b
		end
	elseif db.auraByDispels and button.isStealable and not button.isFriend then
		r, g, b = .93, .91, .55
	end
	S:CreateShadow(button, 3, r, g, b)
end

function module:CreateUFShadows()
	self:SecureHook(UF, "UpdateNameSettings", "UnitFrames_UpdateNameSettings")
	self:SecureHook(UF, "Configure_Threat", "UnitFrames_Configure_Threat")
	self:SecureHook(UF, "Configure_Power", "UnitFrames_Configure_Power")
	self:SecureHook(UF, "Configure_ClassBar", "UnitFrames_Configure_ClassBar")
	self:SecureHook(UF, "PostUpdateAura", "UnitFrames_PostUpdateAura")
end

function module:StyleUFs()
	local db = E.db.mui.unitframes

	-- Player
	self:InitPlayer()
	self:InitPower()
	self:InitCastBar()

	-- Target
	self:InitTarget()

	-- TargetTarget
	self:InitTargetTarget()

	-- Pet
	self:InitPet()

	-- Focus
	self:InitFocus()

	-- FocusTarget
	self:InitFocusTarget()

	-- Party
	self:InitParty()

	-- Raid
	self:InitRaid()

	-- Raid40
	self:InitRaid40()

	-- Boss
	self:InitBoss()

	--Shadows
	self:CreateUFShadows()
end

function module:Initialize()
	if E.private.unitframe.enable ~= true then return end

	local db = E.db.mui.unitframes

	-- Units
	self:StyleUFs()

	-- RaidIcons
	hooksecurefunc(UF, "Configure_RaidIcon", module.Configure_RaidIcon)

	-- Auras
	self:LoadAuras()

	-- RoleIcons
	self:Configure_RoleIcons()

	self:RegisterEvent("ADDON_LOADED")
end

MER:RegisterModule(module:GetName())
