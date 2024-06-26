if GetLocale() ~= "koKR" then
	return
end

local _, L = ...

L["author"] = "제작자"
L["%s Configuration"] = "%s 설정"
L["Profile"] = "프로필"
L["New profile"] = "새 프로필"
L["Create"] = "생성"
L["Copy current"] = "현재 복사"
L["Set as default"] = "디폴트로 설정"
L["A profile with the same name exists."] = "같은 이름의 프로필이 존재합니다."
-- L["Are you sure you want to delete profile %s?"] = ""
L["RELOAD_INTERFACE_QUESTION"] = "설정을 업데이트하려면 리로드해야합니다. 지금할까요?"
L["ADD_IGNORE_MBTN_QUESTION"] = "%s 버튼을 무시하고 싶나요?"
L["REMOVE_IGNORE_MBTN_QUESTION"] = "%s 를 무시하고 싶나요?"
-- L["ADD_CUSTOM_GRAB_BTN_QUESTION"] = ""
-- L["REMOVE_CUSTOM_GRAB_BTN_QUESTION"] = ""
L["Add bar"] = "바 추가"
L["A bar with the same name exists."] = "같은 이름의 바가 존재합니다."
-- L["Are you sure you want to delete bar %s?"] = ""
L["Bar"] = "바"
L["Source:"] = "소스 :"
-- L["Manually added"] = ""
L["Move to"] = "이동하기"
-- L["Clip button"] = ""
-- L["Prevents button elements from going over the edges."] = ""
L["Auto show/hide"] = "자동 보기/숨기"
-- L["Allow the button to control its own visibility"] = ""
-- L["Disable Masque"] = ""
L["Add to ignore list"] = "무시 목록에 추가"
L["Options of adding buttons"] = "버튼 추가 옵션"
L["Bar settings"] = "바 설정"
L["Button settings"] = "버튼 설정"
L["SETTINGS_DESCRIPTION"] = "|cff%s선|r 를 클릭:\n•|cffffd200LMB|r 드레그 바.\n•|cffffd200RMB + Shift|r - 설정 열기.\n•|cffffd200RMB + Alt|r - 바 위치 잠금."
-- L["TEXTURES_HELP_TOOLTIP"] = ""
L["Line"] = "선"
L["Background"] = "바탕화면"
L["Fade out line"] = "투명도 |cff%s선|r"
-- L["Fade out bar"] = ""
L["Opacity"] = "투명도"
L["Line width"] = "|cff%s선|r폭"
L["Line Border"] = "테두리 선"
-- L["Line Border Offset"] = ""
L["Line Border Size"] = "테두리 선 크기"
L["Distance from line to bar"] = "선과 바 간격"
L["Orientation"] = "방향"
L["Auto"] = "자동"
L["Horizontal"] = "수평"
L["Vertical"] = "수직"
L["Strata of panel"] = "패널 계층"
L["Lock the bar's location"] = "바 잠그기"
L["Expand to"] = "확장"
L["Right / Bottom"] = "우로 아래로"
L["Left / Top"] = "좌로 위로"
L["Both direction"] = "바 방향"
L["Add buttons from DataBroker"] = "DataBroker에 버튼 추가"
-- L["Add buttons of any data type"] = ""
L["Grab default buttons on minimap"] = "미니맵에 기본 버튼 회수"
L["Grab addon buttons on minimap"] = "미니맵에 애드온버튼 회수"
L["Try to grab after"] = "버튼 가져오기"
L["sec."] = "초"
L["Grab buttons without a name"] = "미니맵에 무명버튼 회수"
L["Add button manually"] = "버튼 수동 추가"
L["Point to button"] = "점에서 버튼으로"
L["Number of buttons"] = "버튼 수 행 / 렬"
L["Buttons Size"] = "버튼 크기"
L["Distance to bar border"] = "테두리 바 길이"
L["Distance between buttons"] = "버튼 간격"
L["Position of minimap buttons"] = "아이콘 배열"
L["A new line"] = "새 줄"
L["Followed"] = "따라가기"
L["Mixed"] = "짬뽕"
L["Direction of buttons"] = "버튼 방향"
L["Right to left"] = "우로 좌로"
L["Left to right"] = "좌로 우로"
L["Top to bottom"] = "위로 아래로"
L["Bottom to top"] = "하단에서 상단으로"
-- L["Intercept the position of tooltips"] = ""
L["Top"] = "위로"
L["Top left"] = "위로 좌로"
L["Top right"] = "위로 우로"
L["Bottom"] = "하단"
L["Bottom left"] = "하단 좌측"
L["Bottom right"] = "하단 우측"
L["Left"] = "좌로"
L["Left top"] = "좌로 위로"
L["Left bottom"] = "좌로 아래로"
L["Right"] = "우로"
L["Right top"] = "우로 위로"
L["Right bottom"] = "우로 아래로"
L["Buttons"] = "버튼"
L["Ignore list"] = "리스트 무시"
L["BUTTON_TOOLTIP"] = "버튼_툴팁"
L["IGNORE_DESCRIPTION"] = "특정 명칭을 설정할 수 있습니다.\n\n예를 들어,  |cffffd200HidingBar|r 를 무시:\n|cffffd200HidingBar1|r\n|cffffd200HidingBar2|r\n|cffffd200HidingBar3|r\n..."
L["DataBroker Buttons"] = "DataBroker 버튼"
L["Minimap Buttons"] = "미니맵 버튼"
-- L["Manually Grabbed Buttons"] = ""
L["Own Minimap Button"] = "자기 미니맵 버튼"
L["Show on"] = "보이게 하기"
L["Hover"] = "마우스오버"
L["Click"] = "클릭"
L["Hover or Click"] = "마우스오버/클릭"
L["Allways"] = "항상"
L["Delay to show"] = "대기 후 나타남"
-- L["Hide by"] = ""
L["Timer"] = "타이머"
L["Clicking on a free place"] = "공간 클릭"
-- L["Timer or clicking on a free place"] = ""
L["Clicking on a line or button"] = "선 또는 버튼 클릭"
L["Delay to hide"] = "대기 후 사라짐"
L["Display"] = "디스플레이"
L["Border"] = "테두리"
L["Border Size"] = "테두리 크기"
-- L["Border Offset"] = ""
L["Bar position"] = "바 위치"
L["Bar attached to the side"] = "화면가장자리의 바 형태"
L["Bar moves freely"] = "자유로운 바"
L["Bar like a minimap button"] = "미니맵 옆 바 형태"
L["Hiding to left"] = "좌로 숨기기"
L["Hiding to right"] = "우로 숨기기"
L["Hiding to up"] = "위로 숨기기"
L["Hiding to down"] = "아래로 숨기기"
L["Show to left"] = "좌로 보이기"
L["Show to right"] = "우로 보이기"
L["Show to up"] = "위로 보이기"
L["Show to down"] = "아래로 보이기"
L["Button Size"] = "버튼 크기"
L["Distance from button to bar"] = "버튼과 바 간격"
-- L["Bar offset relative to the button"] = ""
-- L["The button can be grabbed"] = ""
-- L["If a suitable bar exists then the button will be grabbed"] = ""
L["About"] = "소개"
L["Help with translation of %s. Thanks."] = "%s 번역 도움 감사합니다."
L["Localization Translators:"] = "로컬 번역자:"