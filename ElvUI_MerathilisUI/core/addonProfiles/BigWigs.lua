local MER, E, L, V, P, G = unpack(select(2, ...))

--Cache global variables
--WoW API / Variables
local LoadAddOn = LoadAddOn
local ReloadUI = ReloadUI
--Global variables that we don't cache, list them here for the mikk's Find Globals script
-- GLOBALS: BigWigs3DB, LibStub

function MER:LoadBigWigsProfileDPS()
	--[[----------------------------------
	--	BigWigs - Settings
	--]]----------------------------------
	local key = MER.Title

	LoadAddOn("BigWigs_Options")
	LoadAddOn("BigWigs")

	if BigWigs3DB["profiles"] == nil then BigWigs3DB["profiles"] = {} end

	if BigWigs3DB["profiles"][key] == nil then
		BigWigs3DB = {
			["namespaces"] = {
				["BigWigs_Plugins_Victory"] = {},
				["BigWigs_Plugins_Colors"] = {},
				["BigWigs_Plugins_Alt Power"] = {
					["profiles"] = {
						[key] = {
							["posx"] = 600,
							["fontSize"] = 11,
							["fontOutline"] = "",
							["fontName"] = "Merathilis Expressway",
							["lock"] = true,
							["posy"] = 132,
						},
					},
				},
				["BigWigs_Plugins_BossBlock"] = {},
				["BigWigs_Plugins_Colors"] = {
					["profiles"] = {
						[key] = {
							["barColor"] = {
								["BigWigs_Plugins_Colors"] = {
									["default"] = {
										0, -- [1]
										0.474509803921569, -- [2]
										0.980392156862745, -- [3]
									},
								},
							},
						},
					},
				},
				["BigWigs_Plugins_Bars"] = {
					["profiles"] = {
						[key] = {
							["BigWigsEmphasizeAnchor_y"] = 222,
							["BigWigsEmphasizeAnchor_x"] = 457,
							["BigWigsAnchor_y"] = 24,
							["BigWigsAnchor_x"] = 835,
							["BigWigsAnchor_width"] = 212,
							["BigWigsAnchor_height"] = 18,
							["BigWigsEmphasizeAnchor_height"] = 28,
							["BigWigsEmphasizeAnchor_width"] = 170,
							["fontName"] = "Merathilis Expressway",
							["fontSizeEmph"] = 12,
							["fontSize"] = 11,
							["outline"] = "OUTLINE",
							["emphasizeScale"] = 1.1,
							["barStyle"] = "MerathilisUI",
							["emphasizeGrowup"] = true,
							["texture"] = "Duffed",
						},
					},
				},
				["BigWigs_Plugins_Super Emphasize"] = {
					["profiles"] = {
						[key] = {
							["monochrome"] = false,
							["fontName"] = "Merathilis Expressway",
						},
					},
				},
				["BigWigs_Plugins_Messages"] = {
					["profiles"] = {
						[key] = {
							["outline"] = "OUTLINE",
							["fontSize"] = 20,
							["BWEmphasizeCountdownMessageAnchor_x"] = 664,
							["BWMessageAnchor_x"] = 608,
							["growUpwards"] = false,
							["BWEmphasizeCountdownMessageAnchor_y"] = 523,
							["fontName"] = "Merathilis Expressway",
							["BWEmphasizeMessageAnchor_y"] = 614,
							["BWMessageAnchor_y"] = 676,
							["BWEmphasizeMessageAnchor_x"] = 610,
						},
					},
				},
				["BigWigs_Plugins_Proximity"] = {
					["profiles"] = {
						[key] = {
							["posx"] = 346.27,
							["fontName"] = "Merathilis Expressway",
							["lock"] = true,
							["height"] = 99.0000381469727,
							["posy"] = 81.82,
						},
					},
				},
			},
			["profiles"] = {
				[key] = {
					["fakeDBMVersion"] = true,
				},
			},
		}
	end
end

function MER:LoadBigWigsProfileHeal()
	--[[----------------------------------
	--	BigWigs - Settings
	--]]----------------------------------
	local key = MER.Title.."-".." Heal"

	LoadAddOn("BigWigs_Options")
	LoadAddOn("BigWigs")

	if BigWigs3DB["profiles"] == nil then BigWigs3DB["profiles"] = {} end

	if BigWigs3DB["profiles"][key] == nil then
		BigWigs3DB = {
			["namespaces"] = {
				["BigWigs_Plugins_Alt Power"] = {
					["profiles"] = {
						[key] = {
							["posx"] = 90,
							["fontSize"] = 11,
							["fontName"] = "Merathilis Expressway",
							["font"] = "Merathilis Expressway",
							["lock"] = true,
							["posy"] = 245,
						},
					},
				},
				["BigWigs_Plugins_Colors"] = {
					["profiles"] = {
						[key] = {
							["barColor"] = {
								["BigWigs_Plugins_Colors"] = {
									["default"] = {
										0, -- [1]
										0.474509803921569, -- [2]
										0.980392156862745, -- [3]
									},
								},
							},
						},
					},
				},
				["BigWigs_Plugins_Bars"] = {
					["profiles"] = {
						[key] = {
							["outline"] = "OUTLINE",
							["BigWigsAnchor_width"] = 200.000045776367,
							["BigWigsAnchor_x"] = 941.244988069448,
							["BigWigsEmphasizeAnchor_height"] = 22.0000019073486,
							["fontName"] = "Merathilis Expressway",
							["BigWigsAnchor_height"] = 16.0000038146973,
							["fontSize"] = 11,
							["BigWigsAnchor_y"] = 189.710898690955,
							["emphasizeGrowup"] = true,
							["texture"] = "MerathilisFeint",
							["fontSizeEmph"] = 12,
							["BigWigsEmphasizeAnchor_x"] = 298.844473382169,
							["BigWigsEmphasizeAnchor_y"] = 193.15551682992,
							["BigWigsEmphasizeAnchor_width"] = 199.999984741211,
						},
					},
				},
				["BigWigs_Plugins_Super Emphasize"] = {
					["profiles"] = {
						[key] = {
							["monochrome"] = false,
							["fontName"] = "Merathilis Expressway",
						},
					},
				},
				["BigWigs_Plugins_Messages"] = {
					["profiles"] = {
						[key] = {
							["outline"] = "OUTLINE",
							["fontSize"] = 20,
							["BWEmphasizeCountdownMessageAnchor_x"] = 664,
							["BWMessageAnchor_x"] = 608,
							["growUpwards"] = false,
							["BWEmphasizeCountdownMessageAnchor_y"] = 523,
							["fontName"] = "Merathilis Expressway",
							["BWEmphasizeMessageAnchor_y"] = 614,
							["BWMessageAnchor_y"] = 676,
							["BWEmphasizeMessageAnchor_x"] = 610,
						},
					},
				},
				["BigWigs_Plugins_Proximity"] = {
					["profiles"] = {
						[key] = {
							["posx"] = 931.511307278197,
							["fontName"] = "Merathilis Expressway",
							["posy"] = 85.3333353996277,
							["lock"] = false,
							["height"] = 99.0000381469727,
						},
					},
				},
			},
			["profiles"] = {
				[key] = {
					["fakeDBMVersion"] = true,
				},
			},
		}
	end
end

E.PopupDialogs["MUI_INSTALL_BW_LAYOUT"] = {
	text = L["MUI_INSTALL_SETTINGS_LAYOUT_BW"],
	OnAccept = function() MER:LoadBigWigsProfileDPS(); ReloadUI() end,
	OnCancel = function() MER:LoadBigWigsProfileHeal(); ReloadUI() end,
	button1 = 'BigWigs DPS Layout',
	button2 = 'BigWigs Heal Layout'
}
