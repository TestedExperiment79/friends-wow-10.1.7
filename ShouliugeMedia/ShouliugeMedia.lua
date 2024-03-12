
local LSM = LibStub("LibSharedMedia-3.0")
local region = 128
if GetLocale() == 'zhCN' then region = 4 end
if GetLocale() == 'zhTW' then region = 8 end

-- English 例子
-- LSM:Register("font", "Vistor", [[Interface\Addons\ShouliugeMedia\font\EN_Vistor.ttf]], region) 

-- 简体 例子
if region == 4 then
	-- LSM:Register("font", "思源黑体 Heavy", [[Interface\Addons\ShouliugeMedia\font\CN_Siyuan_Heavy.ttf]], region)
	LSM:Register("font", "01", [[Interface\Fonts\001.ttf]], region)
	LSM:Register("font", "02", [[Interface\Fonts\002.ttf]], region)
	LSM:Register("font", "03", [[Interface\Fonts\003.ttf]], region)
	LSM:Register("font", "04", [[Interface\Fonts\004.ttf]], region)
	LSM:Register("font", "05", [[Interface\Fonts\005.ttf]], region)
	LSM:Register("font", "06", [[Interface\Fonts\006.ttf]], region)
	LSM:Register("font", "07", [[Interface\Fonts\007.ttf]], region)
	LSM:Register("font", "08", [[Interface\Fonts\008.ttf]], region)
    LSM:Register("font", "09", [[Interface\Fonts\009.ttf]], region)
end
-- 正體  例子
if region == 8 then
	-- LSM:Register("font", "思源黑體 Heavy", [[Interface\Addons\ShouliugeMedia\font\CN_Siyuan_Heavy.ttf]], region) 
end

-- 状态条材质
-- ElvUI_CustomMedia
LSM:Register("statusbar", "ElvUI_01", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI A.tga]]) 
LSM:Register("statusbar", "ElvUI_02", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI B.tga]]) 
LSM:Register("statusbar", "ElvUI_03", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI C.tga]]) 
LSM:Register("statusbar", "ElvUI_04", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI D.tga]]) 
LSM:Register("statusbar", "ElvUI_05", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI E.tga]]) 
LSM:Register("statusbar", "ElvUI_06", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI F.tga]]) 
LSM:Register("statusbar", "ElvUI_07", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI G.tga]]) 
LSM:Register("statusbar", "ElvUI_08", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI H.tga]]) 
LSM:Register("statusbar", "ElvUI_09", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI I.tga]]) 
LSM:Register("statusbar", "ElvUI_10", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI J.tga]]) 
LSM:Register("statusbar", "ElvUI_11", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI K.tga]]) 
LSM:Register("statusbar", "ElvUI_12", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI L.tga]]) 
LSM:Register("statusbar", "ElvUI_13", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI M.tga]]) 
LSM:Register("statusbar", "ElvUI_14", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI N.tga]]) 
LSM:Register("statusbar", "ElvUI_15", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI O.tga]]) 
LSM:Register("statusbar", "ElvUI_16", [[Interface\Addons\ShouliugeMedia\statusbar\ElvUI P.tga]])
-- FreeUI.Fluffy
LSM:Register("statusbar", "ElvUI_17", [[Interface\Addons\ShouliugeMedia\statusbar\FF_Angelique.tga]]) 
LSM:Register("statusbar", "ElvUI_18", [[Interface\Addons\ShouliugeMedia\statusbar\FF_Antonia.tga]]) 
LSM:Register("statusbar", "ElvUI_19", [[Interface\Addons\ShouliugeMedia\statusbar\FF_Bettina.tga]]) 
LSM:Register("statusbar", "ElvUI_20", [[Interface\Addons\ShouliugeMedia\statusbar\FF_Jasmin.tga]]) 
LSM:Register("statusbar", "ElvUI_21", [[Interface\Addons\ShouliugeMedia\statusbar\FF_Larissa.tga]]) 
LSM:Register("statusbar", "ElvUI_22", [[Interface\Addons\ShouliugeMedia\statusbar\FF_Lisa.tga]])
LSM:Register("statusbar", "ElvUI_23", [[Interface\Addons\ShouliugeMedia\statusbar\FF_Sam.tga]])
LSM:Register("statusbar", "ElvUI_24", [[Interface\Addons\ShouliugeMedia\statusbar\FF_Stella.tga]])

LSM:Register("statusbar", "A01", [[Interface\Addons\ShouliugeMedia\statusbar\FX_001.tga]])
LSM:Register("statusbar", "A02", [[Interface\Addons\ShouliugeMedia\statusbar\FX_002.tga]])
LSM:Register("statusbar", "A03", [[Interface\Addons\ShouliugeMedia\statusbar\FX_003.tga]])
LSM:Register("statusbar", "A04", [[Interface\Addons\ShouliugeMedia\statusbar\FX_004.tga]])
LSM:Register("statusbar", "A004", [[Interface\Addons\ShouliugeMedia\statusbar\009.tga]])
LSM:Register("statusbar", "MaUI1", [[Interface\Addons\ShouliugeMedia\statusbar\MaUI1.blp]])
LSM:Register("statusbar", "MaUI2", [[Interface\Addons\ShouliugeMedia\statusbar\MaUI2.blp]])
LSM:Register("statusbar", "MaUI3", [[Interface\Addons\ShouliugeMedia\statusbar\MaUI3.blp]])
LSM:Register("statusbar", "MaUI4", [[Interface\Addons\ShouliugeMedia\statusbar\MaUI4.blp]])
LSM:Register("statusbar", "MaUI5", [[Interface\Addons\ShouliugeMedia\statusbar\MaUI5.blp]])
LSM:Register("statusbar", "MaUI6", [[Interface\Addons\ShouliugeMedia\statusbar\MaUI6.blp]])
LSM:Register("statusbar", "MaUI7", [[Interface\Addons\ShouliugeMedia\statusbar\MaUI7.blp]])
LSM:Register("statusbar", "MaUI8", [[Interface\Addons\ShouliugeMedia\statusbar\MaUI8.blp]])
LSM:Register("statusbar", "MaUI9", [[Interface\Addons\ShouliugeMedia\statusbar\MaUI9.blp]])
LSM:Register("statusbar", "MaUI10", [[Interface\Addons\ShouliugeMedia\statusbar\MaUI10.blp]])
LSM:Register("statusbar", "MaUI11", [[Interface\Addons\ShouliugeMedia\statusbar\MaUI11.blp]])
LSM:Register("statusbar", "MaUI12", [[Interface\Addons\ShouliugeMedia\statusbar\MaUI12.blp]])

LSM:Register("statusbar", "Wind_1", [[Interface\Addons\ShouliugeMedia\statusbar\WindTools_1.tga]])

LSM:Register("statusbar", "Wind_2", [[Interface\Addons\ShouliugeMedia\statusbar\WindTools_2.tga]])

---------------------plater
LSM:Register("statusbar", "11StripesOverlay",				[[Interface\AddOns\SharedMedia_MyMedia\background\StripesOverlay.tga]])
LSM:Register("statusbar", "11Stripes",				[[Interface\AddOns\SharedMedia_MyMedia\background\Stripes.tga]])
LSM:Register("statusbar", "11Stripes2",				[[Interface\AddOns\SharedMedia_MyMedia\background\Stripes2.tga]])
LSM:Register("statusbar", "11StripesOverlay2",				[[Interface\AddOns\SharedMedia_MyMedia\background\StripesOverlay2.tga]])
LSM:Register("statusbar", "11Statusbar",				[[Interface\AddOns\SharedMedia_MyMedia\background\Statusbar2]])
LSM:Register("statusbar", "11RenStripe3L",				[[Interface\AddOns\SharedMedia_MyMedia\background\RenStripe3L]])
LSM:Register("statusbar", "11RenStripe3L-",				[[Interface\AddOns\SharedMedia_MyMedia\background\RenStripe3L-]])
LSM:Register("statusbar", "11RenStripe3LL",				[[Interface\AddOns\SharedMedia_MyMedia\background\RenStripe3LL]])
LSM:Register("statusbar", "11RenStripe3LL-",				[[Interface\AddOns\SharedMedia_MyMedia\background\RenStripe3LL-]])
LSM:Register("statusbar", "11RenStripe3",				[[Interface\AddOns\SharedMedia_MyMedia\background\RenStripe3]])
LSM:Register("statusbar", "11RenStripe3-",				[[Interface\AddOns\SharedMedia_MyMedia\background\RenStripe3-]])
LSM:Register("statusbar", "11StatusBar3",				[[Interface\AddOns\SharedMedia_MyMedia\background\StatusBar3]])
LSM:Register("statusbar", "11Neonbar",				[[Interface\AddOns\SharedMedia_MyMedia\background\Neon_Bar]])
LSM:Register("statusbar", "11Neon_Bar_Backdrop",				[[Interface\AddOns\SharedMedia_MyMedia\background\Neon_Bar_Backdrop]])
LSM:Register("statusbar", "11nameplate_bar",				[[Interface\AddOns\SharedMedia_MyMedia\background\nameplate_bar]])
LSM:Register("statusbar", "11cast_bar",				[[Interface\AddOns\SharedMedia_MyMedia\background\cast_bar]])
LSM:Register("statusbar", "11nameplate_bar2",				[[Interface\AddOns\SharedMedia_MyMedia\background\nameplate_bar2]])
LSM:Register("statusbar", "11Neon_HealthOverlay",				[[Interface\AddOns\SharedMedia_MyMedia\background\Neon_HealthOverlay]])
LSM:Register("statusbar", "11Stripes",				[[Interface\AddOns\SharedMedia_MyMedia\background\Stripes]])
LSM:Register("statusbar", "11RenStripe3LL",				[[Interface\AddOns\SharedMedia_MyMedia\background\RenStripe3LL]])
LSM:Register("statusbar", "11stippled-bar",				[[Interface\AddOns\SharedMedia_MyMedia\background\stippled-bar]])
LSM:Register("statusbar", "11mMedia6b",				[[Interface\AddOns\SharedMedia_MyMedia\background\mMedia6b]])
LSM:Register("statusbar", "11Bar5",				[[Interface\AddOns\SharedMedia_MyMedia\background\Bar5]])
LSM:Register("statusbar", "11Bar5Sd",				[[Interface\AddOns\SharedMedia_MyMedia\background\Bar5Sd]])
LSM:Register("statusbar", "11Bar5Glow",				[[Interface\AddOns\SharedMedia_MyMedia\background\Bar5Glow]])
LSM:Register("statusbar", "11Bar5Fill",				[[Interface\AddOns\SharedMedia_MyMedia\background\Bar5Fill]])
LSM:Register("statusbar", "11Bar7",				[[Interface\AddOns\SharedMedia_MyMedia\background\Bar7]])
LSM:Register("statusbar", "11statusbar-glass",				[[Interface\AddOns\SharedMedia_MyMedia\background\statusbar-glass]])
LSM:Register("statusbar", "11statusbar-texture",				[[Interface\AddOns\SharedMedia_MyMedia\background\statusbar-texture]])
LSM:Register("statusbar", "11statusbar-normal",				[[Interface\AddOns\SharedMedia_MyMedia\background\statusbar-normal]])
LSM:Register("statusbar", "11mUI_3",				[[Interface\AddOns\SharedMedia_MyMedia\background\mUI_3]])
LSM:Register("statusbar", "11k9",				[[Interface\AddOns\SharedMedia_MyMedia\background\k9]])
LSM:Register("statusbar", "11n16",				[[Interface\AddOns\SharedMedia_MyMedia\background\n16]])
LSM:Register("statusbar", "11n19",				[[Interface\AddOns\SharedMedia_MyMedia\background\n19]])
LSM:Register("statusbar", "Melli",				[[Interface\AddOns\SharedMedia_MyMedia\background\Melli]])
LSM:Register("statusbar", "MelliDark",				[[Interface\AddOns\SharedMedia_MyMedia\background\MelliDark]])
LSM:Register("statusbar", "11BottomLine",				[[Interface\AddOns\SharedMedia_MyMedia\background\BottomLine]])
LSM:Register("statusbar", "11Flat",				[[Interface\AddOns\SharedMedia_MyMedia\background\Flat]])
LSM:Register("statusbar", "11WildstarTexture",				[[Interface\AddOns\SharedMedia_MyMedia\background\WildstarTexture]])
LSM:Register("statusbar", "11YS",				[[Interface\AddOns\SharedMedia_MyMedia\background\YS]])



--alt点击批量购买
local savedMerchantItemButton_OnModifiedClick = MerchantItemButton_OnModifiedClick 
function MerchantItemButton_OnModifiedClick(self, ...) 
   if ( IsAltKeyDown() ) then 
      local itemLink = GetMerchantItemLink(self:GetID()) 
      if not itemLink then return end 
      local maxStack = select(8, GetItemInfo(itemLink)) 
      if ( maxStack and maxStack > 1 ) then 
         BuyMerchantItem(self:GetID(), GetMerchantItemMaxStack(self:GetID())) 
      end 
   end 
   savedMerchantItemButton_OnModifiedClick(self, ...) 
end

--自动Delete
hooksecurefunc(StaticPopupDialogs["DELETE_GOOD_ITEM"],"OnShow",function(boxEditor) boxEditor.editBox:SetText(DELETE_ITEM_CONFIRM_STRING) end)

--聊天敏感词汇过滤关闭
--SET profanityFilter "0"
--SetCVar("profanityFilter", 0) ReloadUI()