-- Please use the Localization App on CurseForge to Update this
-- https://legacy.curseforge.com/wow/addons/talenttree-viewer/localization
local name, _ = ...

local debug = false
--[==[@debug@
debug = true
--@end-debug@]==]

local L = LibStub("AceLocale-3.0"):NewLocale(name, "enUS", true, debug)

-- TalentTreeViewer
L["%d (level %d)"] = "%d (level %d)"
L["CTRL-C to copy"] = "CTRL-C to copy"
L["Export"] = "Export"
L["Ignore Restrictions"] = "Ignore Restrictions"
L["Ignore restrictions when selecting talents"] = "Ignore restrictions when selecting talents"
L["Import string is corrupt, node type mismatch at nodeID %d. First option will be selected."] = "Import string is corrupt, node type mismatch at nodeID %d. First option will be selected."
L["Select another Specialization"] = "Select another Specialization"

