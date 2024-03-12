-- Clicked, a World of Warcraft keybind manager.
-- Copyright (C) 2022  Kevin Krol
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.

local L = LibStub("AceLocale-3.0"):NewLocale("Clicked", "koKR")

if not L then
	return
end

L["<No one>"] = "<없음>"
L["<Remove this target>"] = "<이 대상 제거>"
L["A binding commonly used by healers, it will prioritize mouseover -> target -> player."] = "힐러가 보통 사용하는 단축키 지정으로, 우선 순위는 마우스오버 -> 대상 -> 플레이어입니다."
L["A binding that only activates when hovering over a unit frame."] = "유닛창 위로 마우스를 가져갈 때만 활성화되는 단축키 지정입니다."
L["A custom macro that can interact with other bindings and can be configured with load conditions."] = "다른 단축키 지정과 상호 작용할 수 있고 불러오기 조건을 구성할 수 있는 사용자 정의 매크로입니다."
L["A group to organize multiple bindings."] = "여러 단축키 지정을 구성하는 그룹입니다."
L["A simple binding without any target prioritization, identical to standard action buttons."] = "대상 우선 순위가 없는 단순 단축키 지정으로, 표준 행동 단축 버튼과 동일합니다."
L["Action"] = "행동"
L["Add a unit frame"] = "유닛창 추가"
L["Alive"] = "생존"
L["Alive, Dead"] = "생존, 죽음"
L["Allow profile sharing"] = "프로필 공유 허용"
L["Allow starting of auto attacks"] = "자동 공격 시작 허용"
L["Append after bindings (super advanced)"] = "단축키 지정 후 추가 (초고급)"
L["Are you sure you want to delete this binding?"] = "이 단축키 지정을 삭제할까요?"
L["Binding macro"] = "매크로 단축키 지정"
L["Binding Targets"] = "대상 단축키 지정"
L["Blizzard"] = "블리자드"
L["Cast %s"] = "%s 시전"
L["Cast a spell"] = "주문 시전"
L["Click on a spell book entry to select it."] = "마법책 항목을 클릭하여 선택합니다."
L["Clicked"] = true
L["Clicked Binding Configuration"] = "Clicked 단축키 지정 구성"
L["Conditions"] = "조건"
L["Copy Data"] = "데이터 복사"
L["Create"] = "생성"
L["Create a new binding"] = "새 단축키 지정 만들기"
L["Cursor"] = "커서"
L["Custom Macro (advanced)"] = "사용자 정의 매크로 (고급)"
L["Dungeon"] = "던전"
L["Duplicate"] = "복제"
L["ElvUI"] = true
L["Enable minimap icon"] = "미니맵 아이콘 사용"
L["Enable or disable the minimap icon."] = "미니맵 아이콘을 켜거나 끕니다."
L["Export"] = "내보내기"
L["Export Bindings"] = "단축키 지정 내보내기"
L["Export Full Profile"] = "전체 프로필 내보내기"
L["Form"] = "변신"
L["Frame Blacklist"] = "창 차단목록"
L["Generated full macro"] = "생성된 전체 매크로"
L["Gladius"] = true
L["Grid2"] = true
L["Group"] = "그룹"
L["Group Name and Icon"] = "그룹 이름 및 아이콘"
L["Healer Binding"] = "힐러 단축키 지정"
L["Humanoid Form"] = "인간 형상"
L["If you want to exclude certain unit frames from click-cast functionality, you can tick the boxes next to each item in order to blacklist them. This will take effect immediately."] = "클릭 시전 기능에서 특정 유닛창을 제외하려면 각 항목 옆 체크박스를 선택하여 차단목록에 올릴 수 있습니다. 이는 즉시 적용됩니다."
L["Immediately share the current profile with another player. The target player must be on the same realm as you (or a connected realm), and allow for profile sharing."] = "현재 프로필을 다른 플레이어와 즉시 공유합니다. 대상 플레이어는 같은 서버( 또는 연합 서버)에 있어야 하며 프로필 공유를 허용해야 합니다."
L["Import"] = "가져오기"
L["Import Bindings"] = "단축키 지정 가져오기"
L["Import external profile data into your current profile, or export the current profile into a sharable format."] = "외부 프로필 데이터를 현재 프로필로 가져오거나 현재 프로필을 공유 가능한 형식으로 내보냅니다."
L["Import Full Profile"] = "전체 프로필 가져오기"
L["In a party"] = "파티 중"
L["In a party or raid group"] = "파티 또는 공격대 중"
L["In a raid group"] = "공격대 중"
L["In combat"] = "전투 중"
L["In group"] = "그룹 중"
L["Instance type"] = "인스턴스 유형"
L["Interrupt current cast"] = "현재 시전 차단"
L["Keep %s"] = "%s 유지"
L["Key"] = "키"
L["Loaded"] = "불러옴"
L["Macro Name and Icon (optional)"] = "매크로 이름 및 아이콘 (선택사항)"
L["Mouseover"] = "마우스오버"
L["New Group"] = "새 그룹"
L["No pet"] = "소환수 없음"
L["Not in a group"] = "그룹 중 아님"
L["Not in combat"] = "전투 중 아님"
L["Not loaded"] = "불러오지 않음"
L["On this target"] = "이 대상에"
L["Open the unit menu"] = "유닛 메뉴 열기"
L["Options"] = "옵션"
L["Or"] = "또는"
L["Or (inactive)"] = "또는 (비활성)"
L["Override queued spell"] = "대기 중인 주문 무시"
L["Party %s"] = "%s번 파티원"
L["Paste Data"] = "데이터 붙여넣기"
L["Pet exists"] = "소환수 존재"
L["Pet target"] = "소환수 대상"
L["Pick from spellbook"] = "마법책에서 선택"
L["Player (you)"] = "플레이어 (당신)"
L["Player in group"] = "그룹 내 플레이어"
L["Player Name-Realm"] = "플레이어 이름-서버"
L["Press a key to bind, or ESC to clear the binding."] = "단축키를 지정하려면 키를 누르고 해제하려면 ESC를 누르세요."
L["Profiles"] = "프로필"
L["PvP Talent %s"] = "PvP 특성 %s"
L["PvP talent selected"] = "선택한 PvP 특성"
L["Raid"] = "공격대"
L["Run a macro (advanced)"] = "매크로 실행 (고급)"
L["Run custom macro"] = "사용자 정의 매크로 실행"
L["Run first (default)"] = "먼저 실행 (기본값)"
L["Run last"] = "마지막으로 실행"
L["Scenario"] = "시나리오"
L["Search..."] = "검색..."
L["Select"] = "선택"
L["Selected"] = "선택됨"
L["Share"] = "공유"
L["Shared Options"] = "공유 옵션"
L["Simple Binding"] = "단순 단축키 지정"
L["Specialization %s"] = "%s 전문화"
L["Stance"] = "태세"
L["Status"] = "상태"
L["Talent %s/%s"] = "특성 %s/%s"
L["Talent selected"] = "선택한 특성"
L["Talent specialization"] = "직업 전문화"
L["Target Item"] = "대상 아이템"
L["Target of target"] = "대상의 대상"
L["Target player"] = "대상 플레이어"
L["Target Spell"] = "대상 주문"
L["Target the unit"] = "유닛을 대상으로 선택"
L["Targets"] = "대상"
L["The left and right mouse button can only activate when hovering over unit frames."] = "마우스 좌우 버튼은 유닛창 위로 마우스를 가져갈 때만 활성화됩니다."
L["Tip: You can shift-click an item in your bags when the input field is selected to autofill."] = "팁: 입력 칸이 선택된 경우 가방에 있는 아이템을 Shift+클릭하여 자동으로 채울 수 있습니다."
L["UNBOUND"] = "지정 안 됨"
L["Unit frame"] = "유닛창"
L["Unit frame macro"] = "유닛창 매크로"
L["Unit Frame Target"] = "대상 유닛창"
L["Use %s"] = "%s 사용"
L["Use an item"] = "아이템 사용"
L["VuhDo"] = true
L["War Mode"] = "전쟁 모드"
L["War Mode disabled"] = "전쟁 모드 비활성화"
L["War Mode enabled"] = "전쟁 모드 활성화"