local MER, F, E, L, V, P, G = unpack(select(2, ...))
local module = MER:GetModule('MER_UnitFrames')
local S = MER:GetModule('MER_Skins')
local UF = E:GetModule('UnitFrames')

local hooksecurefunc = hooksecurefunc

function module:Configure_Power(frame)
	local power = frame.Power
	local db = E.db.mui.unitframes.power

	if power and not power.__MERSkin then
		power:Styling(false, false, true)

		if not power.animation and (db and db.enable) then
			power.animation = CreateFrame("PlayerModel", "MER_PowerBarEffect")

			if db.type == "DEFAULT" then
				if E.Retail then
					power.animation:SetModel(1715069) -- spells/7fx_shivarracoven_frost_precasthands.m2
					power.animation:MakeCurrentCameraCustom()
					power.animation:SetTransform(-0.035, 0, 0, rad(270), 0, 0, 0.580)
					power.animation:SetPortraitZoom(1)
				else
					power.animation:SetModel("spells/arcanepower_state_chest.m2")
					power.animation:SetPosition(1.2, 0, 0)
				end
			elseif db.type == "CUSTOM" then
				if E.Retail then
					power.animation:SetModel(db.retailModel)
				else
					power.animation:SetModel(db.classicModel)
				end
			end

			power.animation:SetAllPoints(power:GetStatusBarTexture())
			power.animation:SetFrameLevel(power:GetFrameLevel())
			power.animation:SetInside(power:GetStatusBarTexture(), 0, 0)
			power.animation:SetParent(power)
		end

		power.__MERSkin = true
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

function module:InitPower()
	hooksecurefunc(UF, "Configure_Power", module.Configure_Power)
end
