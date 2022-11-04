local MER, F, E, L, V, P, G = unpack(select(2, ...))
local module = MER:GetModule('MER_Notification')

local _G = _G
local format = string.format
local GetTime = GetTime
local utf8sub = utf8sub

local C_Texture_GetAtlasInfo = C_Texture.GetAtlasInfo
local C_Map_GetBestMapForUnit = C_Map.GetBestMapForUnit
local C_VignetteInfo_GetVignetteInfo = C_VignetteInfo and C_VignetteInfo.GetVignetteInfo
local C_VignetteInfo_GetVignettePosition = C_VignetteInfo and C_VignetteInfo.GetVignettePosition
local InCombatLockdown = InCombatLockdown
local IsInGroup, IsInRaid, IsPartyLFG = IsInGroup, IsInRaid, IsPartyLFG
local PlaySound = PlaySound

local function isUsefulAtlas(info)
	local atlas = info.atlasName
	if atlas then
		return strfind(atlas, "[Vv]ignette") or (atlas == "nazjatar-nagaevent")
	end
end

local VignetteExclusionMapIDs = {
	[579] = true, -- Lunarfall: Alliance garrison
	[585] = true, -- Frostwall: Horde garrison
	[646] = true, -- Scenario: The Broken Shore
}

local VignetteBlackListIDs = {
	[4024] = true, -- Soul Cage (The Maw and Torghast)
	[4184] = true, -- Skoldus Hall
	[4185] = true, -- Fracture Chambers
	[4186] = true, -- The Soulforges
	[4187] = true, -- Mort'regar
	[4188] = true, -- The Upper Reaches
	[4189] = true, -- Coldheart Interstitia
	[4190] = true, -- Twisting Corridors
	[4913] = true, -- The Jailer's Gauntlet
	[4578] = true, -- Gateway to Hero's Rest (Bastion)
	[4583] = true, -- Gateway to Hero's Rest (Bastion)
	[4553] = true, -- Recoverable Corpse (The Maw)
	[4581] = true, -- Grappling Growth (Maldraxxus)
	[4582] = true, -- Ripe Purian (Bastion)
	[4602] = true, -- Aimless Soul (The Maw)
	[4617] = true, -- Imprisoned Soul (The Maw)
}

local SOUND_TIMEOUT = 20
function module:VIGNETTE_MINIMAP_UPDATED(event, vignetteGUID, onMinimap)
	module.db = E.db.mui.notification
	if not module.db.enable or not module.db.vignette or InCombatLockdown() or VignetteExclusionMapIDs[C_Map_GetBestMapForUnit("player")] then return end

	local inGroup, inRaid, inPartyLFG = IsInGroup(), IsInRaid(), IsPartyLFG()
	if inGroup or inRaid or inPartyLFG then return end

	if onMinimap then
		local vignetteInfo = C_VignetteInfo_GetVignetteInfo(vignetteGUID)
		if not vignetteInfo then return end

		local atlasInfo = C_Texture_GetAtlasInfo(vignetteInfo.atlasName)
		if not atlasInfo then return end
		local tex = F.GetTextureStrByAtlas(atlasInfo, 15, 15)
		if not tex then return end

		-- For Debugging: uncomment this:
		-- F.DebugPrint("Vignette-ID: "..vignetteInfo.vignetteID.."Vignette-Name: "..vignetteInfo.name, "warning")
		if VignetteBlackListIDs[vignetteInfo.vignetteID] or not isUsefulAtlas(vignetteInfo) then return end

		if vignetteInfo and vignetteGUID ~= self.lastMinimapRare.id then
			vignetteInfo.name = format("|cff00c0fa%s|r", vignetteInfo.name:utf8sub(1, 28))
			self:DisplayToast(vignetteInfo.name, L["has appeared on the MiniMap!"], nil, vignetteInfo.atlasName)
			self.lastMinimapRare.id = vignetteGUID

			if module.db.rarePrint then
				local currentTime = E.db.chat.timeStampFormat == 1 and "|cff00ff00["..date("%H:%M:%S").."]|r" or ""
				local nameString
				local mapID = C_Map_GetBestMapForUnit("player")
				local position = mapID and C_VignetteInfo_GetVignettePosition(vignetteInfo.vignetteGUID, mapID)
				if position then
					local x, y = position:GetXY()
					nameString = format("|Hworldmap:%d+:%d+:%d+|h[%s (%.1f, %.1f)%s]|h|r", mapID, x*10000, y*10000, vignetteInfo.name, x*100, y*100, "")
				end
				F.Print(currentTime.." -> "..tex..MER.InfoColor..(nameString or vignetteInfo.name or ""))
			end

			local time = GetTime()
			if time > (self.lastMinimapRare.time + SOUND_TIMEOUT) then
				if module.db.noSound ~= true then
					PlaySound(_G.SOUNDKIT.RAID_WARNING)
					self.lastMinimapRare.time = time
				end
			end
		end
	end
end
