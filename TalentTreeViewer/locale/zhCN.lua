-- Please use the Localization App on CurseForge to Update this
-- https://legacy.curseforge.com/wow/addons/talenttree-viewer/localization
local name, _ = ...

local L = LibStub("AceLocale-3.0"):NewLocale(name, "zhCN")
if not L then return end

-- TalentTreeViewer
L["%d (level %d)"] = "%d (等级%d)"
L["CTRL-C to copy"] = "CTRL-C 复制"
L["Export"] = "导出"
L["Ignore Restrictions"] = "忽略限制"
L["Ignore restrictions when selecting talents"] = "选择天赋时忽略等级和前置天赋等限制"
L["Import string is corrupt, node type mismatch at nodeID %d. First option will be selected."] = "导入字符串已损坏，nodeID %d 和类型不匹配，自动使用第一个选项代替。"
L["Select another Specialization"] = "选择别的专精"

