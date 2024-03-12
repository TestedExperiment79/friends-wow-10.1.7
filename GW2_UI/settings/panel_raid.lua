local _, GW = ...
local L = GW.L
local addOption = GW.AddOption
local addOptionDropdown = GW.AddOptionDropdown
local addOptionSlider = GW.AddOptionSlider
local createCat = GW.CreateCat
local MapTable = GW.MapTable
local StrUpper = GW.StrUpper
local StrLower = GW.StrLower
local GetSetting = GW.GetSetting
local InitPanel = GW.InitPanel
local settingsMenuAddButton = GW.settingsMenuAddButton

-- Profiles
local function LoadRaidProfile(panel)
    local p = CreateFrame("Frame", "GwSettingsRaidPanel", panel, "GwSettingsRaidPanelTmpl")
    p.header:SetFont(DAMAGE_TEXT_FONT, 20)
    p.header:SetTextColor(255 / 255, 241 / 255, 209 / 255)
    p.header:SetText(L["Group Frames"] )
    p.sub:SetFont(UNIT_NAME_FONT, 12)
    p.sub:SetTextColor(181 / 255, 160 / 255, 128 / 255)
    p.sub:SetText(L["Edit the party and raid options to suit your needs."])

    p.header:SetWidth(p.header:GetStringWidth())
    p.breadcrumb:SetFont(DAMAGE_TEXT_FONT, 12)
    p.breadcrumb:SetTextColor(255 / 255, 241 / 255, 209 / 255)
    p.breadcrumb:SetText(RAID)

    p.buttonRaidPreview:SetScript("OnClick", function()
        GW.GridToggleFramesPreviewRaid(false, false)
    end)
    p.buttonRaidPreview:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT", 28, 0)
        GameTooltip:ClearLines()
        GameTooltip:AddLine(L["Preview Raid Frames"], 1, 1, 1)
        GameTooltip:AddLine(L["Click to toggle raid frame preview and cycle through different group sizes."], 1, 1, 1)
        GameTooltip:Show()
    end)
    p.buttonRaidPreview:SetScript("OnLeave", GameTooltip_Hide)
    p.buttonRaidPreview:SetEnabled(GetSetting("RAID_FRAMES"))

    addOption(p, PET, L["Show a separate grid for raid pets"], "RAID_PET_FRAMES", function() GW.ShowRlPopup = true end, nil, {["RAID_FRAMES"] = true})
    addOption(p, RAID_USE_CLASS_COLORS, L["Use the class color instead of class icons."], "RAID_CLASS_COLOR", function() GW.UpdateGridSettings(); GW.UpdateRaidGridSettings() end, nil, {["RAID_FRAMES"] = true})
    addOption(p, DISPLAY_POWER_BARS, L["Display the power bars on the raid units."], "RAID_POWER_BARS", GW.UpdateGridSettings, nil, {["RAID_FRAMES"] = true})
    addOption(p, SHOW_DEBUFFS, OPTION_TOOLTIP_SHOW_ALL_ENEMY_DEBUFFS, "RAID_SHOW_DEBUFFS", function() GW.UpdateGridSettings(); for i = 1, MAX_RAID_MEMBERS do if _G["GwCompactRaidFrame" .. i] then GW.RaidGridOnEvent(_G["GwCompactRaidFrame" .. i], "UNIT_AURA") end end end, nil, {["RAID_FRAMES"] = true})
    addOption(p, DISPLAY_ONLY_DISPELLABLE_DEBUFFS, L["Only displays the debuffs that you are able to dispell."], "RAID_ONLY_DISPELL_DEBUFFS", function() GW.UpdateGridSettings(); for i = 1, MAX_RAID_MEMBERS do if _G["GwCompactRaidFrame" .. i] then GW.RaidGridOnEvent(_G["GwCompactRaidFrame" .. i], "UNIT_AURA") end end end, nil, {["RAID_FRAMES"] = true, ["RAID_SHOW_DEBUFFS"] = true})
    addOption(p, L["Dungeon & Raid Debuffs"], L["Show important Dungeon & Raid debuffs"], "RAID_SHOW_IMPORTEND_RAID_INSTANCE_DEBUFF", function() GW.UpdateGridSettings(); for i = 1, MAX_RAID_MEMBERS do if _G["GwCompactRaidFrame" .. i] then GW.RaidGridOnEvent(_G["GwCompactRaidFrame" .. i], "UNIT_AURA") end end end, nil, {["RAID_FRAMES"] = true})
    addOption(p, RAID_TARGET_ICON, L["Displays the Target Markers on the Raid Unit Frames"], "RAID_UNIT_MARKERS", function() GW.UpdateGridSettings(); GW.UpdateRaidGridSettings() end, nil, {["RAID_FRAMES"] = true})
    addOption(
        p,
        L["Sort Raid Frames by Role"],
        L["Sort raid unit frames by role (tank, heal, damage) instead of group."],
        "RAID_SORT_BY_ROLE",
        function()
            GW.UpdateRaidGridSettings()
            GW.GridUpdateFramesPosition("RAID")
            GW.GridUpdateFramesLayout("RAID")
        end,
        nil,
        {["RAID_FRAMES"] = true}
    )
    addOptionDropdown(
        p,
        L["Show Aura Tooltips"],
        L["Show tooltips of buffs and debuffs."],
        "RAID_AURA_TOOLTIP_INCOMBAT",
        function()
            GW.UpdateRaidGridSettings()
            GW.UpdateGridSettings()
            for i = 1, MAX_RAID_MEMBERS do
                if _G["GwCompactRaidFrame" .. i] then
                    GW.RaidGridOnEvent(_G["GwCompactRaidFrame" .. i], "UNIT_AURA")
                end
            end
        end,
        {"ALWAYS", "NEVER", "IN_COMBAT", "OUT_COMBAT"},
        {ALWAYS, NEVER, GARRISON_LANDING_STATUS_MISSION_COMBAT, L["Out of combat"]},
        nil,
        {["RAID_FRAMES"] = true}
    )

    addOptionDropdown(
        p,
        COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT,
        nil,
        "RAID_UNIT_HEALTH",
        function()
            GW.UpdateGridSettings()
            for i = 1, MAX_RAID_MEMBERS do
                if _G["GwCompactRaidFrame" .. i] then
                    GW.RaidGridOnEvent(_G["GwCompactRaidFrame" .. i], "UNIT_AURA")
                end
            end
        end,
        {"NONE", "PREC", "HEALTH", "LOSTHEALTH"},
        {
            COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT_NONE,
            COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT_PERC,
            COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT_HEALTH,
            COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT_LOSTHEALTH
        },
        nil,
        {["RAID_FRAMES"] = true}
    )

    addOptionDropdown(
        p,
        L["Show Country Flag"],
        L["Display a country flag based on the unit's language"],
        "RAID_UNIT_FLAGS",
        function()
            GW.UpdateGridSettings()
            for i = 1, MAX_RAID_MEMBERS do
                if _G["GwCompactRaidFrame" .. i] then
                    GW.GridUpdateFrameData(_G["GwCompactRaidFrame" .. i], i, "RAID")
                end
            end
        end,
        {"NONE", "DIFFERENT", "ALL"},
        {NONE_KEY, L["Different Than Own"], ALL},
        nil,
        {["RAID_FRAMES"] = true}
    )

    local dirs, grow = {"Down", "Up", "Right", "Left"}, {}
    for i in pairs(dirs) do
        local k = i <= 2 and 3 or 1
        for j = k, k + 1 do
            tinsert(grow, StrUpper(dirs[i] .. "+" .. dirs[j]))
        end
    end

    addOptionDropdown(
        p,
        L["Set Raid Growth Direction"],
        L["Set the grow direction for raid frames."],
        "RAID_GROW",
        function()
            GW.UpdateRaidGridSettings()
            GW.GridContainerUpdateAnchor("RAID")
            GW.GridUpdateFramesPosition("RAID")
            GW.GridUpdateFramesLayout("RAID")
        end,
        grow,
        MapTable(
            grow,
            function(dir)
                local g1, g2 = strsplit("+", dir)
                return L["%s and then %s"]:format(L[StrLower(g1, 2)], L[StrLower(g2, 2)])
            end
        ),
        nil,
        {["RAID_FRAMES"] = true}
    )

    addOptionDropdown(
        p,
        L["Set Raid Anchor"],
        L["Set where the raid frame container should be anchored.\n\nBy position: Always the same as the container's position on screen.\nBy growth: Always opposite to the growth direction."],
        "RAID_ANCHOR",
        function()
            GW.UpdateRaidGridSettings()
            GW.GridContainerUpdateAnchor("RAID")
        end,
        {"POSITION", "GROWTH", "TOP", "LEFT", "BOTTOM", "CENTER", "TOPLEFT", "BOTTOMLEFT", "BOTTOMRIGHT", "RIGHT", "TOPRIGHT"},
        {L["By position on screen"], L["By growth direction"], "TOP", "LEFT", "BOTTOM", "CENTER", "TOPLEFT", "BOTTOMLEFT", "BOTTOMRIGHT", "RIGHT", "TOPRIGHT"},
        nil,
        {["RAID_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Units per Column"],
        L["Set the number of raid unit frames per column or row, depending on grow directions."],
        "RAID_UNITS_PER_COLUMN",
        function()
            GW.UpdateRaidGridSettings()
            GW.GridUpdateFramesPosition("RAID")
            GW.GridUpdateFramesLayout("RAID")
        end,
        0,
        40,
        nil,
        0,
        {["RAID_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Unit Width"],
        L["Set the width of the raid units."],
        "RAID_WIDTH",
        function()
            GW.UpdateRaidGridSettings()
            GW.GridUpdateFramesPosition("RAID")
            GW.GridUpdateFramesLayout("RAID")
        end,
        45,
        300,
        nil,
        0,
        {["RAID_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Unit Height"],
        L["Set the height of the raid units."],
        "RAID_HEIGHT",
        function()
            GW.UpdateRaidGridSettings()
            GW.GridUpdateFramesPosition("RAID")
            GW.GridUpdateFramesLayout("RAID")
        end,
        15,
        100,
        nil,
        0,
        {["RAID_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Frame Container Width"],
        L["Set the maximum width that the raid frames can be displayed.\n\nThis will cause unit frames to shrink or move to the next row."],
        "RAID_CONT_WIDTH",
        function()
            GW.UpdateRaidGridSettings()
            GW.GridUpdateFramesPosition("RAID")
            GW.GridUpdateFramesLayout("RAID")
        end,
        0,
        GetScreenWidth(),
        nil,
        0,
        {["RAID_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Frame Container Height"],
        L["Set the maximum height that the raid frames can be displayed.\n\nThis will cause unit frames to shrink or move to the next column."],
        "RAID_CONT_HEIGHT",
        function()
            GW.UpdateRaidGridSettings()
            GW.GridUpdateFramesPosition("RAID")
            GW.GridUpdateFramesLayout("RAID")
        end,
        0,
        GetScreenHeight(),
        nil,
        0,
        {["RAID_FRAMES"] = true}
    )

    return p
end

local function LoadRaidPetProfile(panel)
    local p = CreateFrame("Frame", "GwSettingsRaidPetPanel", panel, "GwSettingsRaidPanelTmpl")
    p.header:SetFont(DAMAGE_TEXT_FONT, 20)
    p.header:SetTextColor(255 / 255, 241 / 255, 209 / 255)
    p.header:SetText(L["Group Frames"] )
    p.sub:SetFont(UNIT_NAME_FONT, 12)
    p.sub:SetTextColor(181 / 255, 160 / 255, 128 / 255)
    p.sub:SetText(L["Edit the party and raid options to suit your needs."])

    p.header:SetWidth(p.header:GetStringWidth())
    p.breadcrumb:SetFont(DAMAGE_TEXT_FONT, 12)
    p.breadcrumb:SetTextColor(255 / 255, 241 / 255, 209 / 255)
    p.breadcrumb:SetText(PET)

    p.buttonRaidPreview:SetScript("OnClick", function()
        GW.GridToggleFramesPreviewRaidPet(false, false)
    end)
    p.buttonRaidPreview:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT", 28, 0)
        GameTooltip:ClearLines()
        GameTooltip:AddLine(L["Preview Raid Frames"], 1, 1, 1)
        GameTooltip:AddLine(L["Click to toggle raid frame preview and cycle through different group sizes."], 1, 1, 1)
        GameTooltip:Show()
    end)
    p.buttonRaidPreview:SetScript("OnLeave", GameTooltip_Hide)
    p.buttonRaidPreview:SetEnabled(GetSetting("RAID_FRAMES") and GetSetting("RAID_PET_FRAMES"))

    addOption(p, SHOW_DEBUFFS, OPTION_TOOLTIP_SHOW_ALL_ENEMY_DEBUFFS, "RAID_SHOW_DEBUFFS_PET", GW.UpdateGridSettings, nil, {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true})
    addOption(p, DISPLAY_ONLY_DISPELLABLE_DEBUFFS, L["Only displays the debuffs that you are able to dispell."], "RAID_ONLY_DISPELL_DEBUFFS_PET", function() GW.UpdateGridSettings(); for i = 1, 40 do if _G["GwCompactRaidPetFrame" .. i] then GW.PetGridOnEvent(_G["GwCompactRaidPetFrame" .. i], "UNIT_AURA") end end end, nil, {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true, ["RAID_SHOW_DEBUFFS_PET"] = true})
    addOption(p, L["Dungeon & Raid Debuffs"], L["Show important Dungeon & Raid debuffs"], "RAID_SHOW_IMPORTEND_RAID_INSTANCE_DEBUFF_PET", function() GW.UpdateGridSettings(); for i = 1, 40 do if _G["GwCompactRaidPetFrame" .. i] then GW.PetGridOnEvent(_G["GwCompactRaidPetFrame" .. i], "UNIT_AURA") end end end, nil, {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true})
    addOption(p, RAID_TARGET_ICON, L["Displays the Target Markers on the Raid Unit Frames"], "RAID_UNIT_MARKERS_PET", function() GW.UpdateGridSettings(); GW.UpdatePetGridSettings() end, nil, {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true})
    addOptionDropdown(
        p,
        L["Show Aura Tooltips"],
        L["Show tooltips of buffs and debuffs."],
        "RAID_AURA_TOOLTIP_INCOMBAT_PET",
        function()
            GW.UpdatePetGridSettings()
            GW.UpdateGridSettings()
            for i = 1, 40 do
                if _G["GwCompactRaidPetFrame" .. i] then
                    GW.PetGridOnEvent(_G["GwCompactRaidPetFrame" .. i], "UNIT_AURA")
                end
            end
        end,
        {"ALWAYS", "NEVER", "IN_COMBAT", "OUT_COMBAT"},
        {ALWAYS, NEVER, GARRISON_LANDING_STATUS_MISSION_COMBAT, L["Out of combat"]},
        nil,
        {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true}
    )

    addOptionDropdown(
        p,
        COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT,
        nil,
        "RAID_UNIT_HEALTH_PET",
        function()
            GW.UpdateGridSettings()
            for i = 1, 40 do
                if _G["GwCompactRaidPetFrame" .. i] then
                    GW.PetGridOnEvent(_G["GwCompactRaidPetFrame" .. i], "UNIT_AURA")
                end
            end
        end,
        {"NONE", "PREC", "HEALTH", "LOSTHEALTH"},
        {
            COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT_NONE,
            COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT_PERC,
            COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT_HEALTH,
            COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT_LOSTHEALTH
        },
        nil,
        {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true}
    )

    local dirs, grow = {"Down", "Up", "Right", "Left"}, {}
    for i in pairs(dirs) do
        local k = i <= 2 and 3 or 1
        for j = k, k + 1 do
            tinsert(grow, StrUpper(dirs[i] .. "+" .. dirs[j]))
        end
    end

    addOptionDropdown(
        p,
        L["Set Raid Growth Direction"],
        L["Set the grow direction for raid frames."],
        "RAID_GROW_PET",
        function()
            GW.UpdatePetGridSettings()
            GW.GridContainerUpdateAnchor("RAID_PET")
            GW.GridUpdateFramesPosition("RAID_PET")
            GW.GridUpdateFramesLayout("RAID_PET")
        end,
        grow,
        MapTable(
            grow,
            function(dir)
                local g1, g2 = strsplit("+", dir)
                return L["%s and then %s"]:format(L[StrLower(g1, 2)], L[StrLower(g2, 2)])
            end
        ),
        nil,
        {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true}
    )

    addOptionDropdown(
        p,
        L["Set Raid Anchor"],
        L["Set where the raid frame container should be anchored.\n\nBy position: Always the same as the container's position on screen.\nBy growth: Always opposite to the growth direction."],
        "RAID_ANCHOR_PET",
        function()
            GW.UpdatePetGridSettings()
            GW.GridContainerUpdateAnchor("RAID_PET")
        end,
        {"POSITION", "GROWTH", "TOP", "LEFT", "BOTTOM", "CENTER", "TOPLEFT", "BOTTOMLEFT", "BOTTOMRIGHT", "RIGHT", "TOPRIGHT"},
        {L["By position on screen"], L["By growth direction"], "TOP", "LEFT", "BOTTOM", "CENTER", "TOPLEFT", "BOTTOMLEFT", "BOTTOMRIGHT", "RIGHT", "TOPRIGHT"},
        nil,
        {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Units per Column"],
        L["Set the number of raid unit frames per column or row, depending on grow directions."],
        "RAID_UNITS_PER_COLUMN_PET",
        function()
            GW.UpdatePetGridSettings()
            GW.GridUpdateFramesPosition("RAID_PET")
            GW.GridUpdateFramesLayout("RAID_PET")
        end,
        0,
        40,
        nil,
        0,
        {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Unit Width"],
        L["Set the width of the raid units."],
        "RAID_WIDTH_PET",
        function()
            GW.UpdatePetGridSettings()
            GW.GridUpdateFramesPosition("RARAID_PETD")
            GW.GridUpdateFramesLayout("RAID_PET")
        end,
        45,
        300,
        nil,
        0,
        {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Unit Height"],
        L["Set the height of the raid units."],
        "RAID_HEIGHT_PET",
        function()
            GW.UpdatePetGridSettings()
            GW.GridUpdateFramesPosition("RAID_PET")
            GW.GridUpdateFramesLayout("RAID_PET")
        end,
        15,
        100,
        nil,
        0,
        {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Frame Container Width"],
        L["Set the maximum width that the raid frames can be displayed.\n\nThis will cause unit frames to shrink or move to the next row."],
        "RAID_CONT_WIDTH_PET",
        function()
            GW.UpdatePetGridSettings()
            GW.GridUpdateFramesPosition("RAID_PET")
            GW.GridUpdateFramesLayout("RAID_PET")
        end,
        0,
        GetScreenWidth(),
        nil,
        0,
        {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Frame Container Height"],
        L["Set the maximum height that the raid frames can be displayed.\n\nThis will cause unit frames to shrink or move to the next column."],
        "RAID_CONT_HEIGHT_PET",
        function()
            GW.UpdatePetGridSettings()
            GW.GridUpdateFramesPosition("RAID_PET")
            GW.GridUpdateFramesLayout("RAID_PET")
        end,
        0,
        GetScreenHeight(),
        nil,
        0,
        {["RAID_FRAMES"] = true, ["RAID_PET_FRAMES"] = true}
    )

    return p
end

local function LoadPartyProfile(panel)
    local p = CreateFrame("Frame", "GwSettingsRaidPartyPanel", panel, "GwSettingsRaidPanelTmpl")
    p.header:SetFont(DAMAGE_TEXT_FONT, 20)
    p.header:SetTextColor(255 / 255, 241 / 255, 209 / 255)
    p.header:SetText(L["Group Frames"])
    p.sub:SetFont(UNIT_NAME_FONT, 12)
    p.sub:SetTextColor(181 / 255, 160 / 255, 128 / 255)
    p.sub:SetText(L["Edit the party and raid options to suit your needs."])

    p.header:SetWidth(p.header:GetStringWidth())
    p.breadcrumb:SetFont(DAMAGE_TEXT_FONT, 12)
    p.breadcrumb:SetTextColor(255 / 255, 241 / 255, 209 / 255)
    p.breadcrumb:SetText(PARTY)

    p.buttonRaidPreview:SetScript("OnClick", function()
        GW.GridToggleFramesPreviewParty(false, false)
    end)
    p.buttonRaidPreview:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT", 28, 0)
        GameTooltip:ClearLines()
        GameTooltip:AddLine(L["Preview Raid Frames"], 1, 1, 1)
        GameTooltip:AddLine(L["Click to toggle raid frame preview and cycle through different group sizes."], 1, 1, 1)
        GameTooltip:Show()
    end)
    p.buttonRaidPreview:SetScript("OnLeave", GameTooltip_Hide)
    p.buttonRaidPreview:SetEnabled(GetSetting("RAID_FRAMES"))

    addOption(p, RAID_USE_CLASS_COLORS, L["Use the class color instead of class icons."], "RAID_CLASS_COLOR_PARTY", function() GW.UpdatePartyGridSettings(); GW.UpdateGridSettings() end, nil, {["RAID_FRAMES"] = true})
    addOption(p, DISPLAY_POWER_BARS, L["Display the power bars on the raid units."], "RAID_POWER_BARS_PARTY", GW.UpdateGridSettings, nil, {["RAID_FRAMES"] = true})
    addOption(p, SHOW_DEBUFFS, OPTION_TOOLTIP_SHOW_ALL_ENEMY_DEBUFFS, "RAID_SHOW_DEBUFFS_PARTY", function()GW.UpdateGridSettings(); for i = 1, 5 do if _G["GwCompactPartyFrame" .. i] then GW.PartyGridOnEvent(_G["GwCompactPartyFrame" .. i], "UNIT_AURA") end end end, nil, {["RAID_FRAMES"] = true})
    addOption(p, DISPLAY_ONLY_DISPELLABLE_DEBUFFS, L["Only displays the debuffs that you are able to dispell."], "RAID_ONLY_DISPELL_DEBUFFS_PARTY", function() GW.UpdateGridSettings(); for i = 1, 5 do if _G["GwCompactPartyFrame" .. i] then GW.PartyGridOnEvent(_G["GwCompactPartyFrame" .. i], "UNIT_AURA") end end end, nil, {["RAID_FRAMES"] = true, ["RAID_SHOW_DEBUFFS_PARTY"] = true})
    addOption(p, L["Dungeon & Raid Debuffs"], L["Show important Dungeon & Raid debuffs"], "RAID_SHOW_IMPORTEND_RAID_INSTANCE_DEBUFF_PARTY", function() GW.UpdateGridSettings(); for i = 1, 5 do if _G["GwCompactPartyFrame" .. i] then GW.PartyGridOnEvent(_G["GwCompactPartyFrame" .. i], "UNIT_AURA") end end end, nil, {["RAID_FRAMES"] = true})
    addOption(p, RAID_TARGET_ICON, L["Displays the Target Markers on the Raid Unit Frames"], "RAID_UNIT_MARKERS_PARTY", function() GW.UpdateGridSettings(); GW.UpdatePartyGridSettings() end, nil, {["RAID_FRAMES"] = true})
    addOption(
        p,
        L["Sort Raid Frames by Role"],
        L["Sort raid unit frames by role (tank, heal, damage) instead of group."],
        "RAID_SORT_BY_ROLE_PARTY",
        function()
            GW.UpdatePartyGridSettings()
            GW.GridUpdateFramesPosition("PARTY")
            GW.GridUpdateFramesLayout("PARTY")
        end,
        nil,
        {["RAID_FRAMES"] = true}
    )
    addOptionDropdown(
        p,
        L["Show Aura Tooltips"],
        L["Show tooltips of buffs and debuffs."],
        "RAID_AURA_TOOLTIP_INCOMBAT_PARTY",
        function()
            GW.UpdatePartyGridSettings()
            GW.UpdateGridSettings()
            for i = 1, 5 do
                if _G["GwCompactPartyFrame" .. i] then
                    GW.PartyGridOnEvent(_G["GwCompactPartyFrame" .. i], "UNIT_AURA")
                end
            end
        end,
        {"ALWAYS", "NEVER", "IN_COMBAT", "OUT_COMBAT"},
        {ALWAYS, NEVER, GARRISON_LANDING_STATUS_MISSION_COMBAT, L["Out of combat"]},
        nil,
        {["RAID_FRAMES"] = true}
    )

    addOptionDropdown(
        p,
        COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT,
        nil,
        "RAID_UNIT_HEALTH_PARTY",
        function()
            GW.UpdateGridSettings()
            for i = 1, 5 do
                if _G["GwCompactPartyFrame" .. i] then
                    GW.PartyGridOnEvent(_G["GwCompactPartyFrame" .. i], "load")
                end
            end
        end,
        {"NONE", "PREC", "HEALTH", "LOSTHEALTH"},
        {
            COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT_NONE,
            COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT_PERC,
            COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT_HEALTH,
            COMPACT_UNIT_FRAME_PROFILE_HEALTHTEXT_LOSTHEALTH
        },
        nil,
        {["RAID_FRAMES"] = true}
    )

    addOptionDropdown(
        p,
        L["Show Country Flag"],
        L["Display a country flag based on the unit's language"],
        "RAID_UNIT_FLAGS_PARTY",
        function()
            GW.UpdateGridSettings()
            for i = 1, 5 do
                if _G["GwCompactPartyFrame" .. i] then
                    GW.GridUpdateFrameData(_G["GwCompactPartyFrame" .. i], i, "PARTY")
                end
            end
        end,
        {"NONE", "DIFFERENT", "ALL"},
        {NONE_KEY, L["Different Than Own"], ALL},
        nil,
        {["RAID_FRAMES"] = true}
    )

    local dirs, grow = {"Down", "Up", "Right", "Left"}, {}
    for i in pairs(dirs) do
        local k = i <= 2 and 3 or 1
        for j = k, k + 1 do
            tinsert(grow, StrUpper(dirs[i] .. "+" .. dirs[j]))
        end
    end

    addOptionDropdown(
        p,
        L["Set Raid Growth Direction"],
        L["Set the grow direction for raid frames."],
        "RAID_GROW_PARTY",
        function()
            GW.UpdatePartyGridSettings()
            GW.GridContainerUpdateAnchor("PARTY")
            GW.GridUpdateFramesPosition("PARTY")
            GW.GridUpdateFramesLayout("PARTY")
        end,
        grow,
        MapTable(
            grow,
            function(dir)
                local g1, g2 = strsplit("+", dir)
                return L["%s and then %s"]:format(L[StrLower(g1, 2)], L[StrLower(g2, 2)])
            end
        ),
        nil,
        {["RAID_FRAMES"] = true}
    )

    addOptionDropdown(
        p,
        L["Set Raid Anchor"],
        L["Set where the raid frame container should be anchored.\n\nBy position: Always the same as the container's position on screen.\nBy growth: Always opposite to the growth direction."],
        "RAID_ANCHOR_PARTY",
        function()
            GW.UpdatePartyGridSettings()
            GW.GridContainerUpdateAnchor("PARTY")
        end,
        {"POSITION", "GROWTH", "TOP", "LEFT", "BOTTOM", "CENTER", "TOPLEFT", "BOTTOMLEFT", "BOTTOMRIGHT", "RIGHT", "TOPRIGHT"},
        {L["By position on screen"], L["By growth direction"], "TOP", "LEFT", "BOTTOM", "CENTER", "TOPLEFT", "BOTTOMLEFT", "BOTTOMRIGHT", "RIGHT", "TOPRIGHT"},
        nil,
        {["RAID_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Units per Column"],
        L["Set the number of raid unit frames per column or row, depending on grow directions."],
        "RAID_UNITS_PER_COLUMN_PARTY",
        function()
            GW.UpdatePartyGridSettings()
            GW.GridUpdateFramesPosition("PARTY")
            GW.GridUpdateFramesLayout("PARTY")
        end,
        0,
        5,
        nil,
        0,
        {["RAID_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Unit Width"],
        L["Set the width of the raid units."],
        "RAID_WIDTH_PARTY",
        function()
            GW.UpdatePartyGridSettings()
            GW.GridUpdateFramesPosition("PARTY")
            GW.GridUpdateFramesLayout("PARTY")
        end,
        45,
        300,
        nil,
        0,
        {["RAID_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Unit Height"],
        L["Set the height of the raid units."],
        "RAID_HEIGHT_PARTY",
        function()
            GW.UpdatePartyGridSettings()
            GW.GridUpdateFramesPosition("PARTY")
            GW.GridUpdateFramesLayout("PARTY")
        end,
        15,
        100,
        nil,
        0,
        {["RAID_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Frame Container Width"],
        L["Set the maximum width that the raid frames can be displayed.\n\nThis will cause unit frames to shrink or move to the next row."],
        "RAID_CONT_WIDTH_PARTY",
        function()
            GW.UpdatePartyGridSettings()
            GW.GridUpdateFramesPosition("PARTY")
            GW.GridUpdateFramesLayout("PARTY")
        end,
        0,
        GetScreenWidth(),
        nil,
        0,
        {["RAID_FRAMES"] = true}
    )

    addOptionSlider(
        p,
        L["Set Raid Frame Container Height"],
        L["Set the maximum height that the raid frames can be displayed.\n\nThis will cause unit frames to shrink or move to the next column."],
        "RAID_CONT_HEIGHT_PARTY",
        function()
            GW.UpdatePartyGridSettings()
            GW.GridUpdateFramesPosition("PARTY")
            GW.GridUpdateFramesLayout("PARTY")
        end,
        0,
        GetScreenHeight(),
        nil,
        0,
        {["RAID_FRAMES"] = true}
    )

    return p
end

local function LoadRaidPanel(sWindow)
    local p = CreateFrame("Frame", nil, sWindow.panels, "GwSettingsPanelTmpl")
    p.header:Hide()
    p.sub:Hide()

    local profilePanles = {LoadRaidProfile(p), LoadPartyProfile(p), LoadRaidPetProfile(p)}
    createCat(L["Group Frames"], L["Edit the group settings."], p, profilePanles)
    settingsMenuAddButton(L["Group Frames"], p, profilePanles)

    InitPanel(profilePanles[1], false)
    InitPanel(profilePanles[2], false)
    InitPanel(profilePanles[3], false)
end
GW.LoadRaidPanel = LoadRaidPanel
