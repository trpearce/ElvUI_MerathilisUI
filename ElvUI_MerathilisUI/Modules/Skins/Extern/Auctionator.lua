local MER, F, E, L, V, P, G = unpack(ElvUI_MerathilisUI)
local module = MER:GetModule('MER_Skins')
local S = E:GetModule('Skins')
if not IsAddOnLoaded("Auctionator") then return end

local _G = _G
local hooksecurefunc = hooksecurefunc

-- modified from ElvUI Auction House Skin
local function HandleListIcon(frame)
	if not frame.tableBuilder then
		return
	end

	for i = 1, 22 do
		local row = frame.tableBuilder.rows[i]
		if row then
			for j = 1, 5 do
				local cell = row.cells and row.cells[j]
				if cell and cell.Icon then
					if not cell.__MERSkin then
						S:HandleIcon(cell.Icon)

						if cell.IconBorder then
							cell.IconBorder:Kill()
						end

						cell.__MERSkin = true
					end
				end
			end
		end
	end
end

-- modified from ElvUI Auction House Skin
local function HandleHeaders(frame)
	local maxHeaders = frame.HeaderContainer:GetNumChildren()
	for i, header in next, { frame.HeaderContainer:GetChildren() } do
		if not header.__MERSkin then
			header:DisableDrawLayer("BACKGROUND")

			if not header.backdrop then
				header:CreateBackdrop("Transparent")
			end

			header.__MERSkin = true
		end

		if header.backdrop then
			header.backdrop:Point("BOTTOMRIGHT", i < maxHeaders and -5 or 0, -2)
		end
	end

	HandleListIcon(frame)
end

local function HandleTab(tab)
	S:HandleTab(tab, nil, "Transparent")
	tab.Text:ClearAllPoints()
	tab.Text:SetPoint("CENTER", tab, "CENTER", 0, 0)
	tab.Text.__SetPoint = tab.Text.SetPoint
	tab.Text.SetPoint = E.noop
end

local function SkinItem(item, info)
	if not item.backdrop then
		item:CreateBackdrop(nil, nil, nil, nil, nil, nil, nil, nil, true)
		item:StyleButton()
		item.backdrop:SetAllPoints()

		S:HandleIconBorder(item.IconBorder, item.backdrop)
	end

	local p1, anchor, p2, x, y = item:GetPoint()
	item:SetPoint(p1, anchor, p2, x+2, y+1)

	if info and info.selected then
		local r, g, b, a = item.IconBorder:GetVertexColor()
		item.Icon.backdrop:SetBackdropBorderColor(r, g, b, a)
	end
end

local function viewGroup(frame)
	if frame.GroupTitle then
		frame.GroupTitle:StripTextures()
		S:HandleButton(frame.GroupTitle)
	end
end

local function viewItem(frame)
	if frame.Icon.GetNumPoints and frame.Icon:GetNumPoints() > 0 then
		local pointsCache = {}

		for i = 1, frame.Icon:GetNumPoints() do
			local point, relativeTo, relativePoint, xOfs, yOfs = frame.Icon:GetPoint(i)

			if relativePoint == "TOPLEFT" then
				xOfs = xOfs + 2
				yOfs = yOfs - 2
			elseif relativePoint == "BOTTOMRIGHT" then
				xOfs = xOfs - 2
				yOfs = yOfs + 2
			end

			pointsCache[i] = { point, relativeTo, relativePoint, xOfs, yOfs }
		end

		frame.Icon:ClearAllPoints()

		for i = 1, #pointsCache do
			local pointData = pointsCache[i]
			frame.Icon:SetPoint(pointData[1], pointData[2], pointData[3], pointData[4], pointData[5])
		end
	end

	frame.EmptySlot:SetTexture(nil)
	frame.EmptySlot:Hide()

	frame:GetHighlightTexture():SetTexture(E.Media.Textures.White8x8)
	frame:GetHighlightTexture():SetVertexColor(1, 1, 1, 0.3)

	frame.IconSelectedHighlight:SetTexture(E.Media.Textures.White8x8)
	frame.IconSelectedHighlight:SetVertexColor(1, 1, 1, 0.4)

	frame:GetPushedTexture():SetTexture(E.Media.Textures.White8x8)
	frame:GetPushedTexture():SetVertexColor(1, 1, 0, 0.3)

	S:HandleIcon(frame.Icon, true)
	S:HandleIconBorder(frame.IconBorder, frame.Icon.backdrop)
end

local function configRadioButtonGroup(frame)
	for _, child in pairs(frame.radioButtons) do
		S:HandleRadioButton(child.RadioButton)
	end
end

local function configCheckbox(frame)
	S:HandleCheckBox(frame.CheckBox)
end

local function dropDownInternal(frame)
	S:HandleDropDownBox(frame)
end

local function keyBindingConfig(frame)
	S:HandleButton(frame.Button)
end

local function bagUse(frame)
	frame.View:CreateBackdrop("Transparent")
	S:HandleTrimScrollBar(frame.View.ScrollBar)

	for _, child in pairs({ frame:GetChildren() }) do
		if child ~= frame.View then
			S:HandleButton(child)
		end
	end
end

local function configNumericInput(frame)
	S:HandleEditBox(frame.InputBox)
	frame.InputBox:SetTextInsets(0, 0, 0, 0)
end

local function configMoneyInput(frame)
	S:HandleEditBox(frame.MoneyInput.CopperBox)
	S:HandleEditBox(frame.MoneyInput.GoldBox)
	S:HandleEditBox(frame.MoneyInput.SilverBox)

	frame.MoneyInput.CopperBox:SetTextInsets(3, 0, 0, 0)
	frame.MoneyInput.GoldBox:SetTextInsets(3, 0, 0, 0)
	frame.MoneyInput.SilverBox:SetTextInsets(3, 0, 0, 0)

	frame.MoneyInput.CopperBox:SetHeight(24)
	frame.MoneyInput.GoldBox:SetHeight(24)
	frame.MoneyInput.SilverBox:SetHeight(24)

	frame.MoneyInput.CopperBox.Icon:ClearAllPoints()
	frame.MoneyInput.CopperBox.Icon:SetPoint("RIGHT", frame.MoneyInput.CopperBox, "RIGHT", -10, 0)
	frame.MoneyInput.GoldBox.Icon:ClearAllPoints()
	frame.MoneyInput.GoldBox.Icon:SetPoint("RIGHT", frame.MoneyInput.GoldBox, "RIGHT", -10, 0)
	frame.MoneyInput.SilverBox.Icon:ClearAllPoints()
	frame.MoneyInput.SilverBox.Icon:SetPoint("RIGHT", frame.MoneyInput.SilverBox, "RIGHT", -10, 0)
end

local function configMinMax(frame)
	S:HandleEditBox(frame.MinBox)
	S:HandleEditBox(frame.MaxBox)
end

local function filterKeySelector(frame)
	S:HandleDropDownBox(frame)
end

local function undercutScan(frame)
	for _, child in pairs({ frame:GetChildren() }) do
		if child:GetObjectType() == "Button" then
			S:HandleButton(child)
		end
	end
end

local function saleItem(frame)
	frame.Icon:StripTextures()

	S:HandleIcon(frame.Icon.Icon, true)
	S:HandleIconBorder(frame.Icon.IconBorder, frame.Icon.Icon.backdrop)

	S:HandleButton(frame.MaxButton)
	frame.MaxButton:ClearAllPoints()
	frame.MaxButton:SetPoint("TOPLEFT", frame.Quantity, "TOPRIGHT", 0, 0)
	S:HandleButton(frame.PostButton)
	S:HandleButton(frame.SkipButton)

	for _, child in pairs({frame:GetChildren()}) do
		if child:IsObjectType("Button") and child.Icon then
			S:HandleButton(child)
		end
	end
end

local function bottomTabButtons(frame)
	for _, details in ipairs(_G.Auctionator.Tabs.State.knownTabs) do
		local tabButtonFrameName = "AuctionatorTabs_" .. details.name
		local tabButton = _G[tabButtonFrameName]

		if tabButton and not tabButton.__MERSkin then
			S:HandleTab(tabButton, nil, "Transparent")
			module:ReskinTab(tabButton)
			tabButton.Text:SetWidth(tabButton:GetWidth())
			if details.tabOrder > 1 then
				local pointData = { tabButton:GetPoint(1) }
				pointData[4] = -5
				tabButton:ClearAllPoints()
				tabButton:SetPoint(unpack(pointData))
			end

			tabButton.__MERSkin = true
		end
	end
end

local function sellingTabPricesContainer(frame)
	HandleTab(frame.CurrentPricesTab)
	HandleTab(frame.PriceHistoryTab)
	HandleTab(frame.YourHistoryTab)
end

local function resultsListing(frame)
	frame.ScrollArea:SetTemplate("Transparent")
	S:HandleTrimScrollBar(frame.ScrollArea.ScrollBar)

	HandleHeaders(frame)
	hooksecurefunc(frame, "UpdateTable", HandleHeaders)
end

local function shoppingTabFrame(frame)
	S:HandleButton(frame.NewListButton)
	S:HandleButton(frame.ImportButton)
	S:HandleButton(frame.ExportButton)
	S:HandleButton(frame.ExportCSV)

	frame.ShoppingResultsInset:StripTextures()
end

local function shoppingTabSearchOptions(frame)
	S:HandleEditBox(frame.SearchString)
	S:HandleButton(frame.ResetSearchStringButton)
	S:HandleButton(frame.SearchButton)
	S:HandleButton(frame.MoreButton)
	S:HandleButton(frame.AddToListButton)
end

local function shoppingTabContainer(frame)
	frame.Inset:StripTextures()
	frame.Inset:SetTemplate("Transparent")
	S:HandleTrimScrollBar(frame.ScrollBar)
end

local function shoppingTabContainerTabs(frame)
	HandleTab(frame.ListsTab)
	HandleTab(frame.RecentsTab)
end

local function sellingTab(frame)
	frame.BagInset:StripTextures()
	frame.HistoricalPriceInset:StripTextures()
end

local function cancellingFrame(frame)
	S:HandleEditBox(frame.SearchFilter)

	for _, child in pairs({ frame:GetChildren() }) do
		if child:IsObjectType("Button") and child.Icon then
			S:HandleButton(child)
		end
	end

	frame.HistoricalPriceInset:StripTextures()
	frame.HistoricalPriceInset:SetTemplate("Transparent")
end

local function configTab(frame)
	frame.Bg:SetTexture(nil)
	frame.NineSlice:SetTemplate("Transparent")

	S:HandleButton(frame.OptionsButton)
	S:HandleButton(frame.ScanButton)

	S:HandleEditBox(frame.DiscordLink.InputBox)
	S:HandleEditBox(frame.BugReportLink.InputBox)
end

local function shoppingItem(frame)
	frame:StripTextures()
	frame:SetTemplate("Transparent")
	module:CreateShadow(frame)

	S:HandleEditBox(frame.SearchContainer.SearchString)
	S:HandleButton(frame.SearchContainer.ResetSearchStringButton)
	frame.SearchContainer.ResetSearchStringButton:SetSize(20, 20)
	frame.SearchContainer.ResetSearchStringButton:ClearAllPoints()
	frame.SearchContainer.ResetSearchStringButton:SetPoint("LEFT", frame.SearchContainer.SearchString, "RIGHT", 3, 0)
	S:HandleCheckBox(frame.SearchContainer.IsExact)

	S:HandleButton(frame.FilterKeySelector.ResetButton)
	frame.FilterKeySelector.ResetButton:SetSize(20, 20)
	frame.FilterKeySelector.ResetButton:ClearAllPoints()
	frame.FilterKeySelector.ResetButton:SetPoint("LEFT", frame.FilterKeySelector, "RIGHT", 0, 3)

	S:HandleButton(frame.LevelRange.ResetButton)
	frame.LevelRange.ResetButton:SetSize(20, 20)
	frame.LevelRange.ResetButton:ClearAllPoints()
	frame.LevelRange.ResetButton:SetPoint("LEFT", frame.LevelRange.MaxBox, "RIGHT", 3, 0)

	S:HandleButton(frame.ItemLevelRange.ResetButton)
	frame.ItemLevelRange.ResetButton:SetSize(20, 20)
	frame.ItemLevelRange.ResetButton:ClearAllPoints()
	frame.ItemLevelRange.ResetButton:SetPoint("LEFT", frame.ItemLevelRange.MaxBox, "RIGHT", 3, 0)

	S:HandleButton(frame.PriceRange.ResetButton)
	frame.PriceRange.ResetButton:SetSize(20, 20)
	frame.PriceRange.ResetButton:ClearAllPoints()
	frame.PriceRange.ResetButton:SetPoint("LEFT", frame.PriceRange.MaxBox, "RIGHT", 3, 0)

	S:HandleButton(frame.CraftedLevelRange.ResetButton)
	frame.CraftedLevelRange.ResetButton:SetSize(20, 20)
	frame.CraftedLevelRange.ResetButton:ClearAllPoints()
	frame.CraftedLevelRange.ResetButton:SetPoint("LEFT", frame.CraftedLevelRange.MaxBox, "RIGHT", 3, 0)

	S:HandleDropDownBox(frame.QualityContainer.DropDown.DropDown)
	S:HandleButton(frame.QualityContainer.ResetQualityButton)
	frame.QualityContainer.ResetQualityButton:SetSize(20, 20)
	frame.QualityContainer.ResetQualityButton:ClearAllPoints()
	frame.QualityContainer.ResetQualityButton:SetPoint("LEFT", frame.QualityContainer.DropDown.DropDown, "RIGHT", 0, 3)

	if frame.TierContainer then
		frame.TierContainer:ClearAllPoints()
		frame.TierContainer:SetPoint("TOPLEFT", frame.QualityContainer, "BOTTOMLEFT", 0, -20)
		S:HandleDropDownBox(frame.TierContainer.DropDown.DropDown)
		S:HandleButton(frame.TierContainer.ResetTierButton)
		frame.TierContainer.ResetTierButton:SetSize(20, 20)
		frame.TierContainer.ResetTierButton:ClearAllPoints()
		frame.TierContainer.ResetTierButton:SetPoint("LEFT", frame.TierContainer.DropDown.DropDown, "RIGHT", 0, 3)
	end

	S:HandleButton(frame.Finished)
	S:HandleButton(frame.Cancel)
	S:HandleButton(frame.ResetAllButton)
end

local function exportTextFrame(frame)
	frame:StripTextures()
	frame:SetTemplate("Transparent")
	module:CreateShadow(frame)

	S:HandleButton(frame.Close)
	S:HandleTrimScrollBar(frame.ScrollBar)
end

local function listExportFrame(frame)
	frame:StripTextures()
	frame:SetTemplate("Transparent")
	module:CreateShadow(frame)

	S:HandleButton(frame.SelectAll)
	S:HandleButton(frame.UnselectAll)
	S:HandleButton(frame.Export)
	S:HandleCloseButton(frame.CloseDialog)
	S:HandleTrimScrollBar(frame.ScrollBar)
end

local function listImportFrame(frame)
	frame:StripTextures()
	frame:SetTemplate("Transparent")
	module:CreateShadow(frame)

	S:HandleButton(frame.Import)
	S:HandleCloseButton(frame.CloseDialog)
	S:HandleTrimScrollBar(frame.ScrollBar)
end

local function splashFrame(frame)
	frame:StripTextures()
	frame:SetTemplate("Transparent")
	module:CreateShadow(frame)

	S:HandleCloseButton(frame.Close)
	S:HandleCheckBox(frame.HideCheckbox.CheckBox)
	S:HandleTrimScrollBar(frame.ScrollBar)
end

local function itemHistoryFrame(frame)
	frame:StripTextures()
	frame:SetTemplate("Transparent")
	module:CreateShadow(frame)

	S:HandleButton(frame.Close)
	S:HandleButton(frame.Dock)
end

local function configSellingFrame(frame)
	S:HandleButton(frame.UnhideAll)
end

local function craftingInfoObjectiveTrackerFrame(frame)
	S:HandleButton(frame.SearchButton)
end

local function craftingInfoProfessionsFrame(frame)
	S:HandleButton(frame.SearchButton)
end

local function tryPostHook(...)
	local frame, method, hookFunc = ...
	if frame and method and _G[frame] and _G[frame][method] then
		hooksecurefunc(_G[frame], method, function(frame, ...)
			if not frame.__MERSkin then
				hookFunc(frame, ...)
				frame.__MERSkin = true
			end
		end)
	else
		module:Log("debug", "Failed to hook: " .. tostring(frame) .. " " .. tostring(method))
	end
end

local CustomizeElements = { 'FocusButton', 'DeleteButton', 'HideButton', 'RenameButton', 'ShiftDownButton', 'ShiftUpButton', 'NewGroupButton' }
local function HandleCustomiseElements(frame)
	for i, name in next, CustomizeElements do
		local button = frame[name]
		if button then
			S:HandleButton(button)

			if i == 1 then
				-- adjust the points
				local p1, anchor, p2, x, y = button:GetPoint()
				button:SetPoint(p1, anchor, p2, x, y+1)
			end
		end
	end

	local durations = frame.Durations
	if durations then
		S:HandleRadioButton(durations.Default)
		S:HandleRadioButton(durations.Long)
		S:HandleRadioButton(durations.Medium)
		S:HandleRadioButton(durations.Short)
	end

	local quanity = frame.Quantity
	if quanity then
		S:HandleEditBox(quanity.Quantity)
	end

	local dividerContainer = frame.DividerContainer
	if dividerContainer then
		dividerContainer.Divider:StripTextures()
	end

	local focused = frame.FocussedBackground
	if focused then
		focused:SetDrawLayer('BACKGROUND', -2)
	end

	local hover = frame.FocussedHoverBackground
	if hover then
		hover:SetDrawLayer('BACKGROUND', -1)
	end
end

local function GroupsCustomise_UpdateFromExisting(view)
	for _, frame in next, view.groups do
		if not frame.template then
			frame:SetTemplate('Transparent')

			HandleCustomiseElements(frame)
		end

		for _, button in next, frame.buttons do
			if button.itemInfo then
				SkinItem(button, button.itemInfo)
			end
		end
	end

	local groups = _G.Auctionator.Groups
	if groups.viewFirstShow then
		groups.viewFirstShow = nil

		view:UpdateGroupHeights()
	end
end

local function OpenCustomiseView()
	local customize = _G.AuctionatorGroupsCustomiseFrame
	customize.NineSlice:StripTextures()
	customize:SetTemplate('Transparent')
	module:CreateShadow(customize)
	customize:Styling()

	customize.Bg:StripTextures()
	customize.TopTileStreaks:StripTextures()

	customize.BackButton:Point('TOPRIGHT', -25, -28)
	customize.NewGroupButton:Point('TOPLEFT', 7, -28)

	S:HandleButton(customize.BackButton)
	S:HandleButton(customize.NewGroupButton)
	S:HandleCloseButton(customize.CloseButton)
	S:HandleTrimScrollBar(customize.View.ScrollBar)

	hooksecurefunc(customize.View, 'UpdateFromExisting', GroupsCustomise_UpdateFromExisting)
end

function module:Auctionator()
	if not E.private.mui.skins.addonSkins.enable or not E.private.mui.skins.addonSkins.au then
		return
	end

	module:DisableAddOnSkins("Auctionator", false)

	-- widgets
	tryPostHook("AuctionatorGroupsViewGroupMixin", "SetName", viewGroup)
	tryPostHook("AuctionatorGroupsViewItemMixin", "SetItemInfo", viewItem)
	tryPostHook("AuctionatorConfigCheckboxMixin", "OnLoad", configCheckbox)
	tryPostHook("AuctionatorConfigHorizontalRadioButtonGroupMixin", "SetupRadioButtons", configRadioButtonGroup)
	tryPostHook("AuctionatorConfigMinMaxMixin", "OnLoad", configMinMax)
	tryPostHook("AuctionatorConfigMoneyInputMixin", "OnLoad", configMoneyInput)
	tryPostHook("AuctionatorConfigNumericInputMixin", "OnLoad", configNumericInput)
	tryPostHook("AuctionatorConfigRadioButtonGroupMixin", "SetupRadioButtons", configRadioButtonGroup)
	tryPostHook("AuctionatorDropDownInternalMixin", "Initialize", dropDownInternal)
	tryPostHook("AuctionatorFilterKeySelectorMixin", "OnLoad", filterKeySelector)
	tryPostHook("AuctionatorKeyBindingConfigMixin", "OnLoad", keyBindingConfig)
	tryPostHook("AuctionatorResultsListingMixin", "OnShow", resultsListing)
	tryPostHook("AuctionatorSaleItemMixin", "OnLoad", saleItem)
	tryPostHook("AuctionatorShoppingTabFrameMixin", "OnLoad", shoppingTabFrame)
	tryPostHook("AuctionatorShoppingTabSearchOptionsMixin", "OnLoad", shoppingTabSearchOptions)
	tryPostHook("AuctionatorShoppingTabListsContainerMixin", "OnLoad", shoppingTabContainer)
	tryPostHook("AuctionatorShoppingTabRecentsContainerMixin", "OnLoad", shoppingTabContainer)
	tryPostHook("AuctionatorShoppingTabContainerTabsMixin", "OnLoad", shoppingTabContainerTabs)
	tryPostHook("AuctionatorBagUseMixin", "OnLoad", bagUse)
	tryPostHook("AuctionatorSellingTabPricesContainerMixin", "OnLoad", sellingTabPricesContainer)
	tryPostHook("AuctionatorTabContainerMixin", "OnLoad", bottomTabButtons)
	tryPostHook("AuctionatorUndercutScanMixin", "OnLoad", undercutScan)

	-- tab frames
	tryPostHook("AuctionatorCancellingFrameMixin", "OnLoad", cancellingFrame)
	tryPostHook("AuctionatorConfigTabMixin", "OnLoad", configTab)
	tryPostHook("AuctionatorSellingTabMixin", "OnLoad", sellingTab)

	-- frames
	tryPostHook("AuctionatorConfigSellingFrameMixin", "OnLoad", configSellingFrame)
	tryPostHook("AuctionatorExportTextFrameMixin", "OnLoad", exportTextFrame)
	tryPostHook("AuctionatorListExportFrameMixin", "OnLoad", listExportFrame)
	tryPostHook("AuctionatorListImportFrameMixin", "OnLoad", listImportFrame)
	tryPostHook("AuctionatorItemHistoryFrameMixin", "Init", itemHistoryFrame)
	tryPostHook("AuctionatorCraftingInfoObjectiveTrackerFrameMixin", "OnLoad", craftingInfoObjectiveTrackerFrame)
	tryPostHook("AuctionatorCraftingInfoProfessionsFrameMixin", "OnLoad", craftingInfoProfessionsFrame)
	tryPostHook("AuctionatorShoppingItemMixin", "OnLoad", shoppingItem)
	tryPostHook("AuctionatorSplashScreenMixin", "OnLoad", splashFrame)

	local groups = _G.Auctionator.Groups
	groups.viewFirstShow = true -- fixes the page bugging out on first show
	hooksecurefunc(groups, 'OpenCustomiseView', OpenCustomiseView)
end

module:AddCallbackForAddon("Auctionator")