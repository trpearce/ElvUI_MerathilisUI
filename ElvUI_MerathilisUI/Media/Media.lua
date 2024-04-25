local MER, F, E, I, V, P, G, L = unpack(ElvUI_MerathilisUI)
local LSM = E.LSM or E.Libs.LSM

local westAndRUBits = LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western
local allLocaleBits = LSM.LOCALE_BIT_koKR + LSM.LOCALE_BIT_zhCN + LSM.LOCALE_BIT_zhTW + westAndRUBits

MER.ClassIcons = {
	["WARRIOR"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/Warrior",
	["PALADIN"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/Paladin",
	["HUNTER"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/Hunter",
	["ROGUE"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/Rogue",
	["PRIEST"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/Priest",
	["DEATHKNIGHT"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/DeathKnight",
	["SHAMAN"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/Shaman",
	["MAGE"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/Mage",
	["WARLOCK"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/Warlock",
	["MONK"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/Monk",
	["DRUID"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/Druid",
	["DEMONHUNTER"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/DemonHunter",
	["EVOKER"] = "Interface/AddOns/ElvUI_MerathilisUI/Media/Icons/ClassIcon/Evoker",
}

F.AddMedia("texture", "WidgetsTips")
F.AddMedia("logo", "LogoSmall")

F.AddMedia("icon", "Achievements")
F.AddMedia("icon", "Bags")
F.AddMedia("icon", "BlizzardShop")
F.AddMedia("icon", "Character")
F.AddMedia("icon", "Collections")
F.AddMedia("icon", "EncounterJournal")
F.AddMedia("icon", "GameMenu")
F.AddMedia("icon", "Friends")
F.AddMedia("icon", "GroupFinder")
F.AddMedia("icon", "Guild")
F.AddMedia("icon", "Home")
F.AddMedia("icon", "MissionReports")
F.AddMedia("icon", "Notification")
F.AddMedia("icon", "Options")
F.AddMedia("icon", "PetJournal")
F.AddMedia("icon", "Profession")
F.AddMedia("icon", "ScreenShot")
F.AddMedia("icon", "Sound")
F.AddMedia("icon", "SpellBook")
F.AddMedia("icon", "Talents")
F.AddMedia("icon", "ToyBox")
F.AddMedia("icon", "Volume")

F.AddMedia("icon", "Convert")
F.AddMedia("icon", "Favorite")
F.AddMedia("icon", "Information")
F.AddMedia("icon", "Innovation")
F.AddMedia("icon", "List")
F.AddMedia("icon", "Media")
F.AddMedia("icon", "Modules")
F.AddMedia("icon", "Skins")
F.AddMedia("icon", "Accept")
F.AddMedia("icon", "Complete")
F.AddMedia("icon", "Discord")
F.AddMedia("icon", "Github")

--Option Icons
F.AddMedia("icon", "OptionsHome")
F.AddMedia("icon", "Config")
F.AddMedia("icon", "System")
F.AddMedia("icon", "Tips")
F.AddMedia("icon", "Bill")
F.AddMedia("icon", "Save")
F.AddMedia("icon", "More")
F.AddMedia("icon", "Tool")
F.AddMedia("icon", "Gradient")
F.AddMedia("icon", "Changelog")

F.AddMedia("icon", "Lock")
F.AddMedia("icon", "Unlock")
F.AddMedia("icon", "Minus")
F.AddMedia("icon", "Plus")
F.AddMedia("icon", "Forward")

F.AddMedia("icon", "Warning")
F.AddMedia("icon", "Flash")
F.AddMedia("icon", "New")

F.AddMedia("icon", "m2")

F.AddMedia("texture", "arrow")
F.AddMedia("texture", "arrowUp")
F.AddMedia("texture", "pepeSmall")
F.AddMedia("texture", "pushed")

F.AddMedia("texture", "PepeArt")

F.AddMedia("texture", "PepoLove")
F.AddMedia("texture", "PepoBedge")
F.AddMedia("texture", "PepoOkaygeL")
F.AddMedia("texture", "PepoStrongge")

-- Role Icons
F.AddMedia("role", "SunUITank")
F.AddMedia("role", "SunUIHealer")
F.AddMedia("role", "SunUIDPS")

F.AddMedia("role", "SVUITank")
F.AddMedia("role", "SVUIHealer")
F.AddMedia("role", "SVUIDPS")

F.AddMedia("role", "LynUITank")
F.AddMedia("role", "LynUIHealer")
F.AddMedia("role", "LynUIDPS")

F.AddMedia("role", "CustomTank")
F.AddMedia("role", "CustomHealer")
F.AddMedia("role", "CustomDPS")

F.AddMedia("role", "GlowTank")
F.AddMedia("role", "GlowHealer")
F.AddMedia("role", "GlowDPS")

F.AddMedia("role", "GravedTank")
F.AddMedia("role", "GravedHealer")
F.AddMedia("role", "GravedDPS")

F.AddMedia("role", "MainTank")
F.AddMedia("role", "MainHealer")
F.AddMedia("role", "MainDPS")

F.AddMedia("role", "WhiteTank")
F.AddMedia("role", "WhiteHealer")
F.AddMedia("role", "WhiteDPS")

F.AddMedia("role", "MaterialTank")
F.AddMedia("role", "MaterialHealer")
F.AddMedia("role", "MaterialDPS")

F.AddMedia("texture", "EmptyTex")
F.AddMedia("texture", "GlowTex")

F.AddMedia("texture", "Difficulty.tga")

F.AddMedia("texture", "NoiseInner")
F.AddMedia("texture", "ShadowInner")
F.AddMedia("texture", "ShadowInnerSmall")

-- Fonts

F.AddMedia("font", "Expressway.ttf", I.Fonts.Primary, nil, westAndRUBits)
F.AddMedia("font", "GothamNarrow-Black.ttf", I.Fonts.GothamRaid, nil, westAndRUBits)
F.AddMedia("font", "Runescape.ttf", I.Fonts.Runescape, nil, westAndRUBits)

-- Backgrounds
-- Border

-- Statusbars
F.AddMedia("texture", "Empty", "- Empty", "statusbar")
F.AddMedia("texture", "Lyn", "Lyn", "statusbar")
F.AddMedia("texture", "SkullflowerLight", "SkullflowerLight", "statusbar")
F.AddMedia("texture", "Duffed", "Duffed", "statusbar")
F.AddMedia("texture", "RenAscension", "RenAscension", "statusbar")
F.AddMedia("texture", "RenAscensionL", "RenAscensionL", "statusbar")
F.AddMedia("texture", "Line4pixel", "4Pixel", "statusbar")
F.AddMedia("texture", "Asphyxia", "Asphyxia", "statusbar")
F.AddMedia("texture", "MER_Stripes", "MER_Stripes", "statusbar")

-- Sounds
LSM:Register("sound", "warning", [[Interface\AddOns\ElvUI_MerathilisUI\Media\Sounds\warning.ogg]])
LSM:Register("sound", "OnePlus Light", [[Interface\AddOns\ElvUI_MerathilisUI\Media\Sounds\OnePlusLight.ogg]])

-- Custom Textures
E.media.roleIcons = [[Interface\AddOns\ElvUI_MerathilisUI\Media\Textures\UI-LFG-ICON-ROLES]]
E.media.checked = [[Interface\AddOns\ElvUI_MerathilisUI\Media\Textures\checked]]
