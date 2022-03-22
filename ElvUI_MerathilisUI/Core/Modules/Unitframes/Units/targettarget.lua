local MER, F, E, L, V, P, G = unpack(select(2, ...))
local module = MER:GetModule('MER_UnitFrames')
local UF = E:GetModule('UnitFrames')

-- Cache global variables
-- Lua functions
local _G = _G
-- WoW API / Variables
local hooksecurefunc = hooksecurefunc
-- GLOBALS:

function module:Update_TargetTargetFrame(frame)
	local db = E.db.mui.unitframes

	-- Only looks good on Transparent
	if E.db.unitframe.colors.transparentHealth then
		if db.style then
			if frame and frame.Health and not frame.isStyled then
				frame.Health:Styling(false, false, true)
				frame.isStyled = true
			end
		end
	end

	module:CreateHighlight(frame)
end

function module:InitTargetTarget()
	if not E.db.unitframe.units.targettarget.enable then return end

	hooksecurefunc(UF, "Update_TargetTargetFrame", module.Update_TargetTargetFrame)
end
