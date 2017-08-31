local MER, E, L, V, P, G = unpack(select(2, ...))

----------------------------------------------------------------------------------------
--	Core options
----------------------------------------------------------------------------------------
P["mui"] = {
	["installed"] = nil,

	["general"] = {
		["LoginMsg"] = true, -- Enable welcome message in chat
		["GameMenu"] = true, -- Enable the Styles GameMenu
		["SplashScreen"] = true, -- Enable the SplashScreen on LogIn
		["AFK"] = true, -- Enable the pimped AFK Screen
		["FlightMode"] = true, -- Enable the FlightMode
		["CombatState"] = true, -- Enable the +/- Combat Message
		["HideOrderhallBar"] = false, -- Hide the OrderHallCommandBar
		["MerchantiLevel"] = true, -- Displays the itemlevel on the Merchant Frame
		["Movertransparancy"] = .75,
		["Notification"] = {
			["enable"] = true,
			["mail"] = true,
			["vignette"] = true,
			["invites"] = true,
			["guildEvents"] = true,
		},
	},

	["colors"] = {
		["styleAlpha"] = 1,
	},

	--Media
	["media"] = {
		["fonts"] = {
			["zone"] = {
				["font"] = "Merathilis Roboto-Black",
				["size"] = 32,
				["outline"] = "OUTLINE",
				["width"] = 512,
			},
			["subzone"] = {
				["font"] = "Merathilis Roboto-Black",
				["size"] = 25,
				["outline"] = "OUTLINE",
				["offset"] = 0,
				["width"] = 512,
			},
			["pvp"] = {
				["font"] = "Merathilis Roboto-Black",
				["size"] = 22,
				["outline"] = "OUTLINE",
				["width"] = 512,
			},
			["mail"] = {
				["font"] = "Merathilis Roboto-Black",
				["size"] = 12,
				["outline"] = "NONE",
			},
			["editbox"] = {
				["font"] = "Merathilis Roboto-Black",
				["size"] = 12,
				["outline"] = "NONE",
			},
			["gossip"] = {
				["font"] = "Merathilis Roboto-Black",
				["size"] = 12,
				["outline"] = "NONE",
			},
			["objective"] = {
				["font"] = "Merathilis Roboto-Black",
				["size"] = 12,
				["outline"] = "NONE",
			},
			["objectiveHeader"] = {
				["font"] = "Merathilis Roboto-Black",
				["size"] = 12,
				["outline"] = "OUTLINE",
			},
			["questFontSuperHuge"] = {
				["font"] = "Merathilis Roboto-Black",
				["size"] = 24,
				["outline"] = "NONE",
			},
		},
	},

	["misc"] = {
		["MailInputbox"] = true, -- Resize the MailInputbox
		["moveBlizz"] = true, -- Make Blizzards Frame movable
		["tradeTabs"] = true, -- Add tabs for Professions on the Tradeskillframe
		["gmotd"] = true, -- Show a GMOTD frame
		["quest"] = false,
		["announce"] = false, -- CombatText, Skill gains
		["autoscreenshot"] = false,
		["cooldowns"] = {
			["enable"] = false,
			["size"] = 25,
			["growthx"] = "LEFT",
			["growthy"] = "UP",
			["showbags"] = true,
			["showequip"] = true,
			["showpets"] = true,
		},
		["ozcooldowns"] = {
			["enable"] = true,
			["Spacing"] = 4,
			["Size"] = 30,
			["Vertical"] = false,
			["Tooltips"] = false,
			["Announce"] = false,
			["MinimumDuration"] = 600,
			["StatusBar"] = true,
			["StatusBarTexture"] = "MerathilisBlank",
			["StatusBarTextureColor"] = { ["r"] = .24, ["g"] = .54, ["b"] = .78 },
			["DurationFont"] = "Expressway",
			["DurationFontSize"] = 14,
			["DurationFontFlag"] = "OUTLINE",
			["Mode"] = "HIDE",
			["FadeMode"] = "GreenToRed",
			["SortByDuration"] = true,
			["DurationText"] = true,
		},
	},

	["datatexts"] = {
		["rightChatTabDatatextPanel"] = true,
		["panels"] = {
			["ChatTab_Datatext_Panel"] = {
				["left"] = "Call to Arms",
				["middle"] = "Coords",
				["right"] = "Bags",
			},
		},
		["threatBar"] = {
			["enable"] = true,
			["textSize"] = 10,
		},
	},

	["systemDT"] = {
		["maxAddons"] = 25, -- Sets how many Addons to show
		["showFPS"] = true, -- Show Frames per seconds
		["showMS"] = true, -- Show Ping
		["latency"] = "home", -- Set the latency type ("home", "world")
		["showMemory"] = false, -- Show Memory usage
		["announceFreed"] = true -- Enable the Garbage Message in Chat
	},

	["databars"] = {
		["enable"] = true,
	},

	["actionbars"] = {
		["transparent"] = true,
		["buttonStyle"] = {
			["enabled"] = true,
			["texture"] = "MerathilisGradient",
			["alpha"] = 0.25,
			["invertedShadows"] = true,
		},
		["buttonBorder"] = {
			["enabled"] = true,
			["color"] = {r = .9, g = .7, b = 0, a = .7},
		},
	},

	["unitframes"] = {
		["groupinfo"] = true,
		["player"] = {
			["detachPortrait"] = false,
			["portraitWidth"] = 110,
			["portraitHeight"] = 85,
			["portraitShadow"] = false,
			["portraitTransparent"] = true,
			["portraitStyle"] = false,
			["portraitStyleHeight"] = 6,
			["portraitFrameStrata"] = "MEDIUM",
		},
		["target"] = {
			["detachPortrait"] = false,
			["getPlayerPortraitSize"] = true,
			["portraitWidth"] = 110,
			["portraitHeight"] = 85,
			["portraitShadow"] = false,
			["portraitTransparent"] = true,
			["portraitStyle"] = false,
			["portraitStyleHeight"] = 6,
			["portraitFrameStrata"] = "MEDIUM",
		},
		["infoPanel"] = {
			["fixInfoPanel"] = true,
		},
		["misc"] = {
			["portraitTransparency"] = 0.70,
		},
		["AuraIconText"] = {
			["durationTextPos"] = "CENTER",
			["durationTextOffsetX"] = 0,
			["durationTextOffsetY"] = 0,
			["stackTextPos"] = "BOTTOMRIGHT",
			["stackTextOffsetX"] = 1,
			["stackTextOffsetY"] = 2,
			["hideDurationText"] = false,
			["hideStackText"] = false,
			["durationFilterOwner"] = false,
			["durationThreshold"] = -1,
			["stackFilterOwner"] = false,
		},
		["AuraIconSpacing"] = {
			["spacing"] = 1,
			["units"] = {
				["player"] = true,
				["target"] = true,
				["targettarget"] = true,
				["targettargettarget"] = true,
				["focus"] = true,
				["focustarget"] = true,
				["pet"] = true,
				["pettarget"] = true,
				["arena"] = true,
				["boss"] = true,
				["party"] = true,
				["raid"] = true,
				["raid40"] = true,
				["raidpet"] = true,
				["tank"] = true,
				["assist"] = true,
			},
		},
	},

	["locPanel"] = {
		["enable"] = true,
		["autowidth"] = false,
		["width"] = 245,
		["height"] = 21,
		["linkcoords"] = true,
		["template"] = "Transparent",
		["font"] = "Merathilis Roboto-Black",
		["fontSize"] = 11,
		["fontOutline"] = "OUTLINE",
		["throttle"] = 0.2,
		["format"] = "%.0f",
		["zoneText"] = true,
		["colorType"] = "REACTION",
		["colorType_Coords"] = "DEFAULT",
		["customColor"] = {r = 1, g = 1, b = 1 },
		["customColor_Coords"] = {r = 1, g = 1, b = 1 },
		["combathide"] = false,
		["portals"] = {
			["enable"] = true,
			["HSplace"] = true,
			["customWidth"] = false,
			["customWidthValue"] = 200,
			["justify"] = "LEFT",
			["cdFormat"] = "DEFAULT",
		},
	},

	["raidmarkers"] = {
		["enable"] = true,
		["visibility"] = "INPARTY",
		["customVisibility"] = "[noexists, nogroup] hide; show",
		["backdrop"] = false,
		["buttonSize"] = 18,
		["spacing"] = 2,
		["orientation"] = "HORIZONTAL",
		["modifier"] = "shift-",
		["reverse"] = false,
	},

	["tooltip"] = {
		["achievement"] = true,
		["petIcon"] = true,		-- Add an Icon for battle pets on the tooltip
		["factionIcon"] = true, -- Add a faction icon on the tooltip
		["modelIcon"] = false, -- Add a model on the Tooltip
	},

	["error"] = {
		["black"] = true,
		["combat"] = false,
		["white"] = false,
	},

	["uiButtons"] = {
		["enabled"] = true,
		["style"] = "classic",
		["strata"] = "MEDIUM",
		["level"] = 5,
		["transparent"] = "Default",
		["size"] = 17,
		["mouse"] = false,
		["menuBackdrop"] = false,
		["dropdownBackdrop"] = false,
		["orientation"] = "vertical",
		["spacing"] = 3,
		["point"] = "TOPLEFT",
		["anchor"] = "TOPRIGHT",
		["xoffset"] = 0,
		["yoffset"] = 0,
		["visibility"] = "show",
		["customroll"] = {
			["min"] = "1",
			["max"] = "50",
		},
		["Config"] = {
			["enabled"] = false,
			["called"] = "Reload",
		},
		["Addon"] = {
			["enabled"] = false,
			["called"] = "Manager",
		},
		["Status"] = {
			["enabled"] = false,
			["called"] = "AFK",
		},
		["Roll"] = {
			["enabled"] = false,
			["called"] = "Hundred",
		},
	},

	["NameplateAuras"] = {
		["spellInfo"] = {}
	},

	-- db
	["dbCleaned"] = false
}

G["nameplate"]["spellListDefault"] = {
	["visibility"] = 3,
	["width"] = 32,
	["height"] = 14,
	["lockaspect"] = true,
	["stackSize"] = 8,
	["text"] = 9,
	["flashTime"] = 3,
	["firstLoad"] = true,
	["defaultSpellList"] = {
	--Death Knight
		[47476] = { --Strangulate
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[108194] = { --Asphyxiate UH
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[221562] = { --Asphyxiate Blood
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[207171] = { --Winter is Coming
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[206961] = { --Tremble Before Me
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[207167] = { --Blinding Sleet
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["text"] = 12,
			["stackSize"] = 8,
			["visibility"] = 1,
			["width"] = 40,
		},
		[212540] = { --Flesh Hook (Pet)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[91807] = { --Shambling Rush (Pet)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[204085] = { --Deathchill
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[233395] = { --Frozen Center
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[212332] = { --Smash (Pet)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[212337] = { --Powerful Smash (Pet)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[91800] = { --Gnaw (Pet)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[91797] = { --Monstrous Blow (Pet)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[210141] = { --Zombie Explosion
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	--Demon Hunter
		[207685] = { --Sigil of Misery
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[217832] = { --Imprison
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[221527] = { --Imprison (Banished version)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[204490] = { --Sigil of Silence
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[179057] = { --Chaos Nova
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[211881] = { --Fel Eruption
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[205630] = { --Illidan's Grasp
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[208618] = { --Illidan's Grasp (Afterward)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[213491] = { --Demonic Trample (it's this one or the other)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[208645] = { --Demonic Trample
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[200166] = { --Metamorphosis
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	--Druid
		[81261] = { --Solar Beam
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[5211] = { --Mighty Bash
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[163405] = { --Rake
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[203123] = { --Maim
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[202244] = { --Overrun
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[99] = { --Incapacitating Roar
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[33786] = { --Cyclone
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[209753] = { --Cyclone Balance
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[45334] = { --Immobilized
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[102359] = { --Mass Entanglement
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[339] = { --Entangling Roots
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	--Hunter
		[202933] = { --Spider Sting (it's this one or the other)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[233022] = { --Spider Sting
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[224729] = { --Bursting Shot
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[213691] = { --Scatter Shot
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[19386] = { --Wyvern Sting
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[3355] = { --Freezing Trap
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[203337] = { --Freezing Trap (Survival PvPT)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[209790] = { --Freezing Arrow
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[24394] = { --Intimidation
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[117526] = { --Binding Shot
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[190927] = { --Harpoon
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[201158] = { --Super Sticky Tar
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[162480] = { --Steel Trap
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[212638] = { --Tracker's Net
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[200108] = { --Ranger's Net
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	--Mage
		[61721] = { --Rabbit (Poly)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[61305] = { --Black Cat (Poly)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[28272] = { --Pig (Poly)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[28271] = { --Turtle (Poly)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[126819] = { --Porcupine (Poly)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[161354] = { --Monkey (Poly)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[161353] = { --Polar bear (Poly)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[118] = { --Polymorph
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[82691] = { --Ring of Frost
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[31661] = { --Dragon's Breath
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[122] = { --Frost Nova
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[33395] = { --Freeze
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[157997] = { --Ice Nova
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[228600] = { --Glacial Spike
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[198121] = { --Forstbite
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[45438] = { --Iceblock
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	--Monk
		[119381] = { --Leg Sweep
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[202346] = { --Double Barrel
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[114078] = { --Paralysis
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[198909] = { --Song of Chi-Ji
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[202274] = { --Incendiary Brew
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[233759] = { --Grapple Weapon
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[123407] = { --Spinning Fire Blossom
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[116706] = { --Disable
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[232055] = { --Fists of Fury
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	--Paladin
		[853] = { --Hammer of Justice
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[20066] = { --Repentance
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[105421] = { --Blinding Light
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[31935] = { --Avenger's Shield
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[217824] = { --Shield of Virtue
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[205290] = { --Wake of Ashes
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	--Priest
		[9484] = { --Shackle Undead
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[200196] = { --Holy Word: Chastise
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[200200] = { --Holy Word: Chastise
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[226943] = { --Mind Bomb
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[605] = { --Mind Control
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[8122] = { --Psychic Scream
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[15487] = { --Silence
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[199683] = { --Last Word
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	--Rogue
		[2094] = { --Blind
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[6770] = { --Sap
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[1776] = { --Gouge
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[199743] = { --Parley
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[1330] = { --Garrote - Silence
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[207777] = { --Dismantle
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[199804] = { --Between the Eyes
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[408] = { --Kidney Shot
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[1833] = { --Cheap Shot
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[207736] = { --Shadowy Duel (Smoke effect)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[212182] = { --Smoke Bomb
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	--Shaman
		[51514] = { --Hex
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[211015] = { --Hex (Cockroach)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[211010] = { --Hex (Snake)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[211004] = { --Hex (Spider)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[210873] = { --Hex (Compy)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[196942] = { --Hex (Voodoo Totem)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[118905] = { --Static Charge
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[77405] = { --Earthquake (Knocking down)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[118345] = { --Pulverize (Pet)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[204399] = { --Earthfury
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[204437] = { --Lightning Lasso
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[157375] = { --Gale Force
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[64695] = { --Earthgrab
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	--Warlock
		[710] = { --Banish
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[6789] = { --Mortal Coil
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[118699] = { --Fear
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[5484] = { --Howl of Terror
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[6358] = { --Seduction (Succub)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[171017] = { --Meteor Strike (Infernal)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[22703] = { --Infernal Awakening (Infernal CD)
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[30283] = { --Shadowfury
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[89766] = { --Axe Toss
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[233582] = { --Entrenched in Flame
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	--Warrior
		[5246] = { --Intimidating Shout
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[7922] = { --Warbringer
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[132169] = { --Storm Bolt
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[132168] = { --Shockwave
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[199085] = { --Warpath
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[105771] = { --Charge
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[199042] = { --Thunderstruck
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	--Racial
		[155145] = { --Arcane Torrent
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[20549] = { --War Stomp
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
		[107079] = { --Quaking Palm
			["lockAspect"] = true,
			["flashTime"] = 3,
			["height"] = 40,
			["stackSize"] = 8,
			["text"] = 12,
			["visibility"] = 1,
			["width"] = 40,
		},
	}
}

G["nameplate"]["spellList"] = {}