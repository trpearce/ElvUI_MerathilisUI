local MER, F, E, L, V, P, G = unpack(ElvUI_MerathilisUI)
local module = MER.Modules.Skins

local _G = _G

function module:Blizzard_TimeManager()
	if not module:CheckDB("timemanager", "timemanager") then
		return
	end

	local TimeManagerFrame = _G.TimeManagerFrame
	module:CreateBackdropShadow(TimeManagerFrame)

	local StopwatchFrame = _G.StopwatchFrame
	module:CreateBackdropShadow(StopwatchFrame)
end

module:AddCallbackForAddon("Blizzard_TimeManager")
