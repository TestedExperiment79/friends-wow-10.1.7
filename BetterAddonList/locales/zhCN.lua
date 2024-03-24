
if GetLocale() ~= "zhCN" then return end

local _, ns = ...
local L = ns.L

L["... and %d more"] = "和 %d 更多..."
L["Addon List"] = "插件列表"
L["Create new set"] = "创建新集合"
L["Delete"] = "删除"
L["Delete set %s?"] = "删除集合“%s”？"
L["Disable addons from this set"] = "禁用此集合中的插件"
L["Disable all addons then enable addons in this set."] = "启用此集合中的插件，禁用其它插件。"
L["Disabled addons in set %q."] = "禁用集合“%q”中的插件。"
L["Disabled all addons."] = "禁用所有插件。"
L["Enable addons from this set"] = "启用此集合中的插件"
L["Enabled addons in set %q."] = "启用集合“%q”中的插件。"
L["Enabled only addons in set %q."] = "已加载集合“%q”中的插件（并禁用其它插件）。"
L["Enter the name for the new set"] = "输入新集合的名称"
L["Enter the new name for %s"] = "输入“%s”的新名称"
L["FILTER_DISABLED"] = "已禁用"
L["FILTER_ENABLED"] = "已启用"
L["FILTER_LOD"] = "按需加载"
L["FILTER_PROTECTED"] = "已保护"
L["Include with another set"] = "添加至另一个集合"
L["Load"] = "加载"
L["Load out of date"] = "加载过期插件"
L["Memory: %.02f MB"] = "占用内存：%.02f MB"
L["Memory: %.0f KB"] = "占用内存：%.0f KB"
L["No set named %q."] = "名为“%s”的插件不存在。"
L["Out of date addons are being disabled! They will not be able to load until their interface version is updated or \"Load out of date AddOns\" is checked."] = "过期插件已被禁用！要加载这些插件，必须将其更新，或勾选“加载过期插件”选项。"
L["Problem with protected addon %q (%s)"] = "已保护插件 %q 发生问题（%s）"
L["Reload UI to load these addons."] = "重新加载界面来加载这些插件。"
L["Remove an included set"] = "移除已包含的集合"
L["Rename"] = "重命名"
L["Reset"] = "重置"
L["Reset addons to what was enabled at login."] = "重置列表为登录时的状态。"
L["Save"] = "保存"
L["Save the currently selected addons to %s?"] = "将当前选择的插件保存至“%s”？"
L["Sets"] = "集合"
L[ [=[There is already a set named "%s".
Please choose another name.]=] ] = "名为“%s”的集合已存在。请选择另一个名称。"
L["View (%d)"] = "查看（%d）"

