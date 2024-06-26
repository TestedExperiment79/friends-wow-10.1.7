-- Please use the Localization App on CurseForge to Update this
-- https://legacy.curseforge.com/wow/addons/talent-tree-tweaks/localization
local name, _ = ...

local L = LibStub("AceLocale-3.0"):NewLocale(name, "zhCN")
if not L then return end

-- TalentTreeTweaks
--[[Translation missing --]]
L[ [=[%d points spent past the gate.
%d extra points above the gate are free to be moved away.]=] ] = [=[%d points spent past the gate.
%d extra points above the gate are free to be moved away.]=]
L[ [=[|cff33ff99TTT-DragonRiding Auto Purchaser:|r Purchased %d new talents.
%s]=] ] = [=[|cff33ff99TTT-御龙术学习通知：|r学会了新天赋 %d
%s]=]
L["A workaround for one of the ways that Talent Tree taint can block action buttons from working."] = "尝试修复天赋树界面引发的污染会使动作条被禁用的问题。"
--[[Translation missing --]]
L["Add the button to NodeInfo table when dumped"] = "Add the button to NodeInfo table when dumped"
--[[Translation missing --]]
L["Adds a _button property to the nodeInfo table, which is a reference to the talent button."] = "Adds a _button property to the nodeInfo table, which is a reference to the talent button."
L["Adds a button to link the currently shown build in chat."] = "在下拉菜单旁边添加一个按钮，点击即可将目前启用的配置发送至聊天。"
L["Adds a few fixes for minor issues."] = "修正一些小问题。"
L["Adds a mini tree in various tooltips for Talent Tree Builds"] = "在天赋相关的鼠标提示附加一个天赋树方案的剪影，例如天赋配置下拉菜单、观察目标界面右下的天赋按钮、玩家在聊天中发送的天赋配置等等。"
L["Adds a more obvious highlight when you can relearn talents in bulk by shift-clicking them."] = "在点天赋的过程中，高亮你点过又取消的天赋，使你可以用 Shift  + 左键点击批量重点。当你更改某个浅层天赋节点时，这可以省去往后天赋都要重新再点一次的麻烦。"
L["Adds a right-click option to the loadout dropdown to export your build."] = "在天赋配置下拉菜单中，右键点击即可导出该方案。"
L["Adds options to adjust the background of the talent tree UI."] = "添加调整透明度的选项，使你可以调整天赋树界面的背景透明度。"
L["Adds respec buttons to the talent tree UI."] = "在天赋介面添加专精按钮，用以快速切换专精。"
L["Adds spell id and more to the various talent tree tooltips."] = "为天赋界面中的鼠标提示显示各种 ID。"
L["Allows you to import talent loadouts into the currently selected loadout."] = "使你可以将新的天赋配置直接汇入至目前启用的配置中，而不需要建立一个新配置。"
L["Allows you to press CTRL-C to copy the spellID of a talent, while hovering over it."] = "鼠标指向某个天赋时，按住 CTRL-C 可以复制该天赋的法术 ID。"
L["Allows you to scale the talent tree with CTRL+Scrolling with the mousewheel."] = "使你可以用 CTRL + 滚轮滚动来缩放天赋树界面。"
L["Allows you to search for talents by their spellID, nodeID, entryID, and definitionID."] = "使你可以用 spellID、nodeID、entryID 和 definitionID 查找天赋。"
L["ALT + Click:"] = "ALT + 点击："
L["Always Show Gates"] = "总是显示门槛"
L["Always show the \"x more points required\" gates. Gates that are passed will be semi-transparent."] = "在鼠标提示上显示“再分配 x 个点数即可解锁这个天赋”的讯息。已达成的限制条件会以半透明显示。"
L[ [=[Attempts to turn loadout export strings found in chat, into clickable links. You can use modifiers, to copy the link, import it as a loadout, open it in Talent Tree Viewer (if installed) etc.
Default talent links are also extended to allow this behaviour.]=] ] = "启用后，会尝试将玩家发送至聊天的天赋配置字串自动转换成可点击的连结，使你点击连结就可以快速地复制或导入配置，或者在 Talent Tree Viewer（天赋模拟器，需额外安装）中查看。"
L["Automatically purchases the DragonRiding talent when you have enough currency."] = "自动学习御龙术，只要你的雕纹足够。"
L["Background Transparency"] = "背景透明度"
L["blocked in combat"] = "战斗中禁用"
L["Change Background"] = "更改背景"
L["Change Scale"] = "调整缩放"
--[[Translation missing --]]
L["Choose how the mini tree is displayed."] = "Choose how the mini tree is displayed."
L["Click to respec to this specialization."] = "点击切换至此专精。"
L["Click:"] = "点击："
L["Clickable Export Strings In Chat"] = "可点击字串"
L["Color of the highlight"] = "高亮颜色"
L["Copy Link"] = "复制连结"
L["Copy SpellID on hover"] = "复制法术 ID"
L["CTRL + Click:"] = "CTRL + 点击："
L["CTRL-C to copy %s"] = "CTRL-C 复制 %s"
L["CTRL-C to copy spellID"] = "CTRL-C 复制法术 ID"
L["CTRL-clicking a talent will open a table inspector of your choice, with the nodeInfo associated with the node."] = "CTRL 点击任意天赋即可打开暴雪的 table inspector 开发工具，查看该天赋的 nodeInfo 节点信息。"
--[[Translation missing --]]
L["Debug Talent.nodeInfo"] = "Debug Talent.nodeInfo"
L["Disable MultiActionBar_ShowAllGrids on Show"] = "禁用 MultiActionBar_ShowAllGrids"
L["Disables the MultiActionBar_ShowAllGrids function, which can cause nasty taint issues."] = "停用 MultiActionBar_ShowAllGrids 功能，因为它会造成严重的污染，引发大量错误。"
--[[Translation missing --]]
L["Display Style"] = "Display Style"
L["DragonRiding Auto Purchaser"] = "御龙术学习通知"
L["Dump the nodeInfo table to chat."] = "将 nodeInfo 的节点信息表转储至聊天。"
L["Enable Talent Tree Viewer Diff"] = "启用Talent Tree Viewer （天赋模拟器）比对"
L["Enable this module"] = "启用此模组"
L["Error opening in TalentTreeViewer. Showing default Blizzard inspect UI instead."] = "开启  TalentTreeViewer（天赋模拟器）时遇到错误，改以暴雪原生天赋界面开启。"
L["Export Loadouts"] = "导出配置"
L["Export on Right-Click"] = "右键点击导出"
L["Fix issue with the loadout dropdown not updating"] = "天赋配置下拉菜单刷新"
L["Fully replace the loadout dropdown, to avoid tainting the edit mode dropdown."] = "用插件自行创建的下拉菜单取代原生的天赋配置菜单，避免污染编辑模式。"
L["Highlight Cascade Repurchable"] = "高亮批量点击"
L["If checked, the imported build will be imported into the currently selected loadout."] = "若勾选，将会使新配置直接导入至目前启用的配置当中。"
L["Implements various workarounds around taint."] = "尝试修复各种会引起污染的问题。"
L["Import into current loadout"] = "导入至当前"
L["Import into current loadout (click \"%s\" afterwards)"] = "导入至当前配置（记得点击“%s”以应用）"
L["Import into current loadout by default"] = "自动导入到当前配置"
L["Import Loadout"] = "导入配置"
L["Import string is corrupt, node type mismatch at nodeID %d. First option will be selected."] = "导入字符串损坏，nodeID %d 和类型错配，自动选择第一个选项代替。"
L["Inspect Diff"] = "差异比对"
L["Inspected Build"] = "比对配置"
L["Link in chat"] = "发送至聊天"
L["Macros and certain addons that change loadouts, cause the dropdown to not update properly in some situations. This fixes that."] = "修正某些宏或插件更改方案后，天赋方案的下拉菜单可能不会立刻更新的问题。"
L["Mini Tree in Tooltips"] = "迷你天赋树"
L["Misc Fixes"] = "问题修复"
L["Modules"] = "模块"
L["Mute chat spam while switching loadouts or specs."] = "过滤切换专精和天赋时，聊天框出现的学习和遗忘提示。"
L["Open in Talent Tree Viewer"] = "以 Talent Tree Viewer 开启"
L["Open loadout in default Inspect UI"] = "以暴雪原生天赋界面开启此方案"
L["Opens Blizzard's table inspect window."] = "開啟暴雪的 table inspect 窗口"
--[[Translation missing --]]
L["Path NodeId"] = "Path NodeId"
--[[Translation missing --]]
L["Perk NodeId"] = "Perk NodeId"
L["Post in Chat"] = "发送至聊天"
L["Print in chat whenever a new talent is purchased."] = "在聊天框通知你学会了新的御龙术。"
L["Professions Tooltip"] = "专业鼠标提示"
L["Reduce spam"] = "减少废话"
L["Reduce Taint"] = "减少污染"
L["Replace Loadout Dropdown"] = "替换下拉菜单"
L["Replace the loadout dropdown, to avoid tainting the edit mode dropdown."] = "替换天赋配置的下拉菜单，避免污染暴雪界面，尤其是编辑模式。"
L["Replace the Share Loadout button, to open a copy/paste popup instead of automatically copying to clipboard when needed."] = "替换分享天赋配置的按钮，当你要分享时会显示一个复制配置字符串的视窗，而不是直接复制到剪贴板。"
L["Report Purchases"] = "学习通知"
L["Reset the color to default"] = "重置颜色"
L["Reset the colors to default"] = "重置颜色"
L["Respec Buttons"] = "专精按钮"
L["Right-click to share"] = "右键点击分享"
--[[Translation missing --]]
L["Row/Col"] = "Row/Col"
--[[Translation missing --]]
L["Row/Col Info"] = "Row/Col Info"
--[[Translation missing --]]
L["Scale"] = "Scale"
--[[Translation missing --]]
L["Scale of the mini tree."] = "Scale of the mini tree."
L["Scale Talent Frame"] = "界面缩放"
L["Search by ID"] = "以 ID 查找"
L["Shift + Left-Click:"] = "Shift + 左键点击："
L["Shift + Right-Click:"] = "Shift + 右键点击："
L["Show %s Button"] = "显示 %s 按钮"
L["Show a slider in Talent Tree Viewer UI"] = "在天赋模拟器显示滑块"
L["Show a slider in the talent UI"] = "在天赋界面显示滑块"
L["Show Diff"] = "显示差异"
L["Show Example link in chat"] = "发送范例"
L["Show the difference between your talent choices, and the talent build in Talent Tree Viewer."] = "在 Talent Tree Viewer （天赋模拟器）中，显示你当前的天赋与模拟器中的配置的差异。"
L["Shows an example of a clickable link in chat."] = "在聊天窗口显示一个可点击连结的示例。"
L["Shows the difference between your talent choices, and the inspected player's talent choices."] = "显示你与你观察的目标在天赋选择上的差异。"
--[[Translation missing --]]
L["Simple dots"] = "Simple dots"
--[[Translation missing --]]
L["Spell Icon"] = "Spell Icon"
L["Spell ID"] = "法术 ID"
--[[Translation missing --]]
L["SpellID"] = "SpellID"
L["Talent Loadout String"] = "配置字符串"
L["Talent Tooltip"] = "天赋鼠标提示"
L["TalentTreeTweaks Diff Viewer"] = "TalentTreeTweaks 差异比对器"
L["Temporarily |cffff0000disabled|r until next reload, because you refunded a talent."] = "暂时|cffff0000停用|r，直到下次重载界面，因为你手动取消了一个天赋。"
L["They have a talent you don't"] = "你没选，对方选了"
L["This addon consists of a number of modules, each of which can be enabled or disabled, to fine-tune your experience."] = "本插件由多个模块组成，能各自选择是否启用，使你获得最佳体验。"
L["This module is incompatible with BlizzMove, and has been disabled."] = "此模块与 BlizzMove 不兼容，已禁用。"
L["Toggles for the Professions Tooltips."] = "专业天赋的鼠标提示"
L["Toggles for the Talent Tooltips."] = "天赋的鼠标提示\""
L["Tooltip IDs"] = "鼠标提示 IDs"
L["Transparency"] = "透明度"
L["Unlock In Combat Spending"] = "解除战斗锁定"
L["Unlock Restrictions"] = "解锁选择限制"
L["Unlock Share Button"] = "解锁分享按钮"
L["Unlocks several restrictions on the talent tree UI, such as being able to spend points while in combat, and being able to share your build without spending all points."] = "解锁天赋树界面的多项限制，包括允许战斗中点天赋、分享未用完所有点数的半成品配置等等。"
L["Unlocks the import button, even if at max loadouts"] = "解锁导入按钮，使其不会因为配置已满而无法导入"
L["Unlocks the share button, so you can share your build without spending all points."] = "解除分享按钮限制，使你可以分享未使用所有天赋点数的半成品配置。"
L["Unlocks the talent buttons, so you can reallocate points while in combat."] = "解除天赋按钮的战斗锁定，使你可以在战斗中重新分配天赋点。"
L["Use (Virag-)DevTool to inspect the nodeInfo table."] = "以 ViragDevTool 检索 nodeInfo 节点信息表。"
L["Use LuaBrowser to inspect the nodeInfo table."] = "以 LuaBrowser （Lua浏览器）来检索 nodeInfo 节点信息表。"
L["Various tweaks and improvements to the talent tree UI"] = "对天赋树界面的各种调整与改进"
L["Version: %s"] = "版本：%s"
L["When enabled, the \"Import into current loadout\" checkbox will be checked by default."] = "启用后，导入新配置时，自动勾选“导入至当前配置”。"
L["When enabled, the import button will be unlocked even if you have reached the maximum number of loadouts. Since you can still import into your current loadout"] = "启用后，当储存的天赋配置达到数量上限，导入按钮仍然可用，并且可以将新导入的配置直接导入到你当前启用的配置中。"
L["You can toggle any of the following on/off to enable/disable the integration with that debug tool."] = "你可以选择让 TalentTreeTweaks 转储哪种开发工具的除错日志。"
L["You have a talent they don't"] = "你选了，对方没选"
L["You have selected a different choice, or different number of points in a talent"] = "多选天赋的选择不同，或多点数天赋投入的点数不同。"
L["You have to reload your UI after disabling this module, for some of the change to take effect."] = "你必需重载界面才能禁用此模块。"

