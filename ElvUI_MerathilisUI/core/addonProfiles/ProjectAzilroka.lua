local MER, E, L, V, P, G = unpack(select(2, ...))

--Cache global variables
--WoW API / Variables

--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS:

function MER:LoadPAProfile()
	--[[----------------------------------
	--	ProjectAzilroka - Settings
	--]]----------------------------------

	--stAddonManagerProfilesDB
	if stAddonManagerDB.profiles["MerathilisUI"] == nil then stAddonManagerDB.profiles["MerathilisUI"] = {} end

	stAddonManagerDB.profiles["MerathilisUI"] = {
		["ButtonHeight"] = 20,
		["ButtonWidth"] = 20,
		["Font"] = "Expressway",
		['ClassColor'] = true,
		["CheckTexture"] = "MerathilisFlat",
	}

	-- Profile creation
	_G.stAddonManager.data:SetProfile("MerathilisUI")
end