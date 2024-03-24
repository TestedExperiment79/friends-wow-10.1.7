-- Please use the Localization App on CurseForge to Update this
-- https://legacy.curseforge.com/wow/addons/talenttree-viewer/localization
local name, _ = ...

local L = LibStub("AceLocale-3.0"):NewLocale(name, "zhTW")
if not L then return end

-- TalentTreeViewer
L["%d (level %d)"] = "%d (等級%d)"
L["CTRL-C to copy"] = "CTRL-C 複製"
L["Export"] = "匯出"
L["Ignore Restrictions"] = "忽略限制"
L["Ignore restrictions when selecting talents"] = "選擇天賦時忽略等級和前置天賦等限制"
L["Import string is corrupt, node type mismatch at nodeID %d. First option will be selected."] = "導入字串損壞，nodeID %d 和類型錯配，自動選擇第一個選項代替。"
L["Select another Specialization"] = "選擇別的專精"

