-- Please use the Localization App on CurseForge to Update this
-- https://legacy.curseforge.com/wow/addons/talent-tree-tweaks/localization
local name, _ = ...

local L = LibStub("AceLocale-3.0"):NewLocale(name, "esES")
if not L then return end

-- TalentTreeTweaks
--[[Translation missing --]]
L[ [=[%d points spent past the gate.
%d extra points above the gate are free to be moved away.]=] ] = [=[%d points spent past the gate.
%d extra points above the gate are free to be moved away.]=]
--[[Translation missing --]]
L[ [=[|cff33ff99TTT-DragonRiding Auto Purchaser:|r Purchased %d new talents.
%s]=] ] = [=[|cff33ff99TTT-DragonRiding Auto Purchaser:|r Purchased %d new talents.
%s]=]
--[[Translation missing --]]
L["A workaround for one of the ways that Talent Tree taint can block action buttons from working."] = "A workaround for one of the ways that Talent Tree taint can block action buttons from working."
--[[Translation missing --]]
L["Add the button to NodeInfo table when dumped"] = "Add the button to NodeInfo table when dumped"
--[[Translation missing --]]
L["Adds a _button property to the nodeInfo table, which is a reference to the talent button."] = "Adds a _button property to the nodeInfo table, which is a reference to the talent button."
--[[Translation missing --]]
L["Adds a button to link the currently shown build in chat."] = "Adds a button to link the currently shown build in chat."
--[[Translation missing --]]
L["Adds a few fixes for minor issues."] = "Adds a few fixes for minor issues."
--[[Translation missing --]]
L["Adds a mini tree in various tooltips for Talent Tree Builds"] = "Adds a mini tree in various tooltips for Talent Tree Builds"
--[[Translation missing --]]
L["Adds a more obvious highlight when you can relearn talents in bulk by shift-clicking them."] = "Adds a more obvious highlight when you can relearn talents in bulk by shift-clicking them."
--[[Translation missing --]]
L["Adds a right-click option to the loadout dropdown to export your build."] = "Adds a right-click option to the loadout dropdown to export your build."
--[[Translation missing --]]
L["Adds options to adjust the background of the talent tree UI."] = "Adds options to adjust the background of the talent tree UI."
--[[Translation missing --]]
L["Adds respec buttons to the talent tree UI."] = "Adds respec buttons to the talent tree UI."
--[[Translation missing --]]
L["Adds spell id and more to the various talent tree tooltips."] = "Adds spell id and more to the various talent tree tooltips."
--[[Translation missing --]]
L["Allows you to import talent loadouts into the currently selected loadout."] = "Allows you to import talent loadouts into the currently selected loadout."
--[[Translation missing --]]
L["Allows you to press CTRL-C to copy the spellID of a talent, while hovering over it."] = "Allows you to press CTRL-C to copy the spellID of a talent, while hovering over it."
--[[Translation missing --]]
L["Allows you to scale the talent tree with CTRL+Scrolling with the mousewheel."] = "Allows you to scale the talent tree with CTRL+Scrolling with the mousewheel."
--[[Translation missing --]]
L["Allows you to search for talents by their spellID, nodeID, entryID, and definitionID."] = "Allows you to search for talents by their spellID, nodeID, entryID, and definitionID."
--[[Translation missing --]]
L["ALT + Click:"] = "ALT + Click:"
--[[Translation missing --]]
L["Always Show Gates"] = "Always Show Gates"
--[[Translation missing --]]
L["Always show the \"x more points required\" gates. Gates that are passed will be semi-transparent."] = "Always show the \"x more points required\" gates. Gates that are passed will be semi-transparent."
--[[Translation missing --]]
L[ [=[Attempts to turn loadout export strings found in chat, into clickable links. You can use modifiers, to copy the link, import it as a loadout, open it in Talent Tree Viewer (if installed) etc.
Default talent links are also extended to allow this behaviour.]=] ] = [=[Attempts to turn loadout export strings found in chat, into clickable links. You can use modifiers, to copy the link, import it as a loadout, open it in Talent Tree Viewer (if installed) etc.
Default talent links are also extended to allow this behaviour.]=]
--[[Translation missing --]]
L["Automatically purchases the DragonRiding talent when you have enough currency."] = "Automatically purchases the DragonRiding talent when you have enough currency."
--[[Translation missing --]]
L["Background Transparency"] = "Background Transparency"
--[[Translation missing --]]
L["blocked in combat"] = "blocked in combat"
--[[Translation missing --]]
L["Change Background"] = "Change Background"
--[[Translation missing --]]
L["Change Scale"] = "Change Scale"
--[[Translation missing --]]
L["Choose how the mini tree is displayed."] = "Choose how the mini tree is displayed."
--[[Translation missing --]]
L["Click to respec to this specialization."] = "Click to respec to this specialization."
--[[Translation missing --]]
L["Click:"] = "Click:"
--[[Translation missing --]]
L["Clickable Export Strings In Chat"] = "Clickable Export Strings In Chat"
--[[Translation missing --]]
L["Color of the highlight"] = "Color of the highlight"
--[[Translation missing --]]
L["Copy Link"] = "Copy Link"
--[[Translation missing --]]
L["Copy SpellID on hover"] = "Copy SpellID on hover"
--[[Translation missing --]]
L["CTRL + Click:"] = "CTRL + Click:"
--[[Translation missing --]]
L["CTRL-C to copy %s"] = "CTRL-C to copy %s"
--[[Translation missing --]]
L["CTRL-C to copy spellID"] = "CTRL-C to copy spellID"
--[[Translation missing --]]
L["CTRL-clicking a talent will open a table inspector of your choice, with the nodeInfo associated with the node."] = "CTRL-clicking a talent will open a table inspector of your choice, with the nodeInfo associated with the node."
--[[Translation missing --]]
L["Debug Talent.nodeInfo"] = "Debug Talent.nodeInfo"
--[[Translation missing --]]
L["Disable MultiActionBar_ShowAllGrids on Show"] = "Disable MultiActionBar_ShowAllGrids on Show"
--[[Translation missing --]]
L["Disables the MultiActionBar_ShowAllGrids function, which can cause nasty taint issues."] = "Disables the MultiActionBar_ShowAllGrids function, which can cause nasty taint issues."
--[[Translation missing --]]
L["Display Style"] = "Display Style"
--[[Translation missing --]]
L["DragonRiding Auto Purchaser"] = "DragonRiding Auto Purchaser"
--[[Translation missing --]]
L["Dump the nodeInfo table to chat."] = "Dump the nodeInfo table to chat."
--[[Translation missing --]]
L["Enable Talent Tree Viewer Diff"] = "Enable Talent Tree Viewer Diff"
--[[Translation missing --]]
L["Enable this module"] = "Enable this module"
--[[Translation missing --]]
L["Error opening in TalentTreeViewer. Showing default Blizzard inspect UI instead."] = "Error opening in TalentTreeViewer. Showing default Blizzard inspect UI instead."
--[[Translation missing --]]
L["Export Loadouts"] = "Export Loadouts"
--[[Translation missing --]]
L["Export on Right-Click"] = "Export on Right-Click"
--[[Translation missing --]]
L["Fix issue with the loadout dropdown not updating"] = "Fix issue with the loadout dropdown not updating"
--[[Translation missing --]]
L["Fully replace the loadout dropdown, to avoid tainting the edit mode dropdown."] = "Fully replace the loadout dropdown, to avoid tainting the edit mode dropdown."
--[[Translation missing --]]
L["Highlight Cascade Repurchable"] = "Highlight Cascade Repurchable"
--[[Translation missing --]]
L["If checked, the imported build will be imported into the currently selected loadout."] = "If checked, the imported build will be imported into the currently selected loadout."
--[[Translation missing --]]
L["Implements various workarounds around taint."] = "Implements various workarounds around taint."
--[[Translation missing --]]
L["Import into current loadout"] = "Import into current loadout"
--[[Translation missing --]]
L["Import into current loadout (click \"%s\" afterwards)"] = "Import into current loadout (click \"%s\" afterwards)"
--[[Translation missing --]]
L["Import into current loadout by default"] = "Import into current loadout by default"
--[[Translation missing --]]
L["Import Loadout"] = "Import Loadout"
--[[Translation missing --]]
L["Import string is corrupt, node type mismatch at nodeID %d. First option will be selected."] = "Import string is corrupt, node type mismatch at nodeID %d. First option will be selected."
--[[Translation missing --]]
L["Inspect Diff"] = "Inspect Diff"
--[[Translation missing --]]
L["Inspected Build"] = "Inspected Build"
--[[Translation missing --]]
L["Link in chat"] = "Link in chat"
--[[Translation missing --]]
L["Macros and certain addons that change loadouts, cause the dropdown to not update properly in some situations. This fixes that."] = "Macros and certain addons that change loadouts, cause the dropdown to not update properly in some situations. This fixes that."
--[[Translation missing --]]
L["Mini Tree in Tooltips"] = "Mini Tree in Tooltips"
--[[Translation missing --]]
L["Misc Fixes"] = "Misc Fixes"
--[[Translation missing --]]
L["Modules"] = "Modules"
--[[Translation missing --]]
L["Mute chat spam while switching loadouts or specs."] = "Mute chat spam while switching loadouts or specs."
--[[Translation missing --]]
L["Open in Talent Tree Viewer"] = "Open in Talent Tree Viewer"
--[[Translation missing --]]
L["Open loadout in default Inspect UI"] = "Open loadout in default Inspect UI"
--[[Translation missing --]]
L["Opens Blizzard's table inspect window."] = "Opens Blizzard's table inspect window."
--[[Translation missing --]]
L["Path NodeId"] = "Path NodeId"
--[[Translation missing --]]
L["Perk NodeId"] = "Perk NodeId"
--[[Translation missing --]]
L["Post in Chat"] = "Post in Chat"
--[[Translation missing --]]
L["Print in chat whenever a new talent is purchased."] = "Print in chat whenever a new talent is purchased."
--[[Translation missing --]]
L["Professions Tooltip"] = "Professions Tooltip"
--[[Translation missing --]]
L["Reduce spam"] = "Reduce spam"
--[[Translation missing --]]
L["Reduce Taint"] = "Reduce Taint"
--[[Translation missing --]]
L["Replace Loadout Dropdown"] = "Replace Loadout Dropdown"
--[[Translation missing --]]
L["Replace the loadout dropdown, to avoid tainting the edit mode dropdown."] = "Replace the loadout dropdown, to avoid tainting the edit mode dropdown."
--[[Translation missing --]]
L["Replace the Share Loadout button, to open a copy/paste popup instead of automatically copying to clipboard when needed."] = "Replace the Share Loadout button, to open a copy/paste popup instead of automatically copying to clipboard when needed."
--[[Translation missing --]]
L["Report Purchases"] = "Report Purchases"
--[[Translation missing --]]
L["Reset the color to default"] = "Reset the color to default"
--[[Translation missing --]]
L["Reset the colors to default"] = "Reset the colors to default"
--[[Translation missing --]]
L["Respec Buttons"] = "Respec Buttons"
--[[Translation missing --]]
L["Right-click to share"] = "Right-click to share"
--[[Translation missing --]]
L["Row/Col"] = "Row/Col"
--[[Translation missing --]]
L["Row/Col Info"] = "Row/Col Info"
--[[Translation missing --]]
L["Scale"] = "Scale"
--[[Translation missing --]]
L["Scale of the mini tree."] = "Scale of the mini tree."
--[[Translation missing --]]
L["Scale Talent Frame"] = "Scale Talent Frame"
--[[Translation missing --]]
L["Search by ID"] = "Search by ID"
--[[Translation missing --]]
L["Shift + Left-Click:"] = "Shift + Left-Click:"
--[[Translation missing --]]
L["Shift + Right-Click:"] = "Shift + Right-Click:"
--[[Translation missing --]]
L["Show %s Button"] = "Show %s Button"
--[[Translation missing --]]
L["Show a slider in Talent Tree Viewer UI"] = "Show a slider in Talent Tree Viewer UI"
--[[Translation missing --]]
L["Show a slider in the talent UI"] = "Show a slider in the talent UI"
--[[Translation missing --]]
L["Show Diff"] = "Show Diff"
--[[Translation missing --]]
L["Show Example link in chat"] = "Show Example link in chat"
--[[Translation missing --]]
L["Show the difference between your talent choices, and the talent build in Talent Tree Viewer."] = "Show the difference between your talent choices, and the talent build in Talent Tree Viewer."
--[[Translation missing --]]
L["Shows an example of a clickable link in chat."] = "Shows an example of a clickable link in chat."
--[[Translation missing --]]
L["Shows the difference between your talent choices, and the inspected player's talent choices."] = "Shows the difference between your talent choices, and the inspected player's talent choices."
--[[Translation missing --]]
L["Simple dots"] = "Simple dots"
--[[Translation missing --]]
L["Spell Icon"] = "Spell Icon"
--[[Translation missing --]]
L["Spell ID"] = "Spell ID"
--[[Translation missing --]]
L["SpellID"] = "SpellID"
--[[Translation missing --]]
L["Talent Loadout String"] = "Talent Loadout String"
--[[Translation missing --]]
L["Talent Tooltip"] = "Talent Tooltip"
--[[Translation missing --]]
L["TalentTreeTweaks Diff Viewer"] = "TalentTreeTweaks Diff Viewer"
--[[Translation missing --]]
L["Temporarily |cffff0000disabled|r until next reload, because you refunded a talent."] = "Temporarily |cffff0000disabled|r until next reload, because you refunded a talent."
--[[Translation missing --]]
L["They have a talent you don't"] = "They have a talent you don't"
--[[Translation missing --]]
L["This addon consists of a number of modules, each of which can be enabled or disabled, to fine-tune your experience."] = "This addon consists of a number of modules, each of which can be enabled or disabled, to fine-tune your experience."
--[[Translation missing --]]
L["This module is incompatible with BlizzMove, and has been disabled."] = "This module is incompatible with BlizzMove, and has been disabled."
--[[Translation missing --]]
L["Toggles for the Professions Tooltips."] = "Toggles for the Professions Tooltips."
--[[Translation missing --]]
L["Toggles for the Talent Tooltips."] = "Toggles for the Talent Tooltips."
--[[Translation missing --]]
L["Tooltip IDs"] = "Tooltip IDs"
--[[Translation missing --]]
L["Transparency"] = "Transparency"
--[[Translation missing --]]
L["Unlock In Combat Spending"] = "Unlock In Combat Spending"
--[[Translation missing --]]
L["Unlock Restrictions"] = "Unlock Restrictions"
--[[Translation missing --]]
L["Unlock Share Button"] = "Unlock Share Button"
--[[Translation missing --]]
L["Unlocks several restrictions on the talent tree UI, such as being able to spend points while in combat, and being able to share your build without spending all points."] = "Unlocks several restrictions on the talent tree UI, such as being able to spend points while in combat, and being able to share your build without spending all points."
--[[Translation missing --]]
L["Unlocks the import button, even if at max loadouts"] = "Unlocks the import button, even if at max loadouts"
--[[Translation missing --]]
L["Unlocks the share button, so you can share your build without spending all points."] = "Unlocks the share button, so you can share your build without spending all points."
--[[Translation missing --]]
L["Unlocks the talent buttons, so you can reallocate points while in combat."] = "Unlocks the talent buttons, so you can reallocate points while in combat."
--[[Translation missing --]]
L["Use (Virag-)DevTool to inspect the nodeInfo table."] = "Use (Virag-)DevTool to inspect the nodeInfo table."
--[[Translation missing --]]
L["Use LuaBrowser to inspect the nodeInfo table."] = "Use LuaBrowser to inspect the nodeInfo table."
--[[Translation missing --]]
L["Various tweaks and improvements to the talent tree UI"] = "Various tweaks and improvements to the talent tree UI"
--[[Translation missing --]]
L["Version: %s"] = "Version: %s"
--[[Translation missing --]]
L["When enabled, the \"Import into current loadout\" checkbox will be checked by default."] = "When enabled, the \"Import into current loadout\" checkbox will be checked by default."
--[[Translation missing --]]
L["When enabled, the import button will be unlocked even if you have reached the maximum number of loadouts. Since you can still import into your current loadout"] = "When enabled, the import button will be unlocked even if you have reached the maximum number of loadouts. Since you can still import into your current loadout"
--[[Translation missing --]]
L["You can toggle any of the following on/off to enable/disable the integration with that debug tool."] = "You can toggle any of the following on/off to enable/disable the integration with that debug tool."
--[[Translation missing --]]
L["You have a talent they don't"] = "You have a talent they don't"
--[[Translation missing --]]
L["You have selected a different choice, or different number of points in a talent"] = "You have selected a different choice, or different number of points in a talent"
--[[Translation missing --]]
L["You have to reload your UI after disabling this module, for some of the change to take effect."] = "You have to reload your UI after disabling this module, for some of the change to take effect."

