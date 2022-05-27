---iconNotif
---@param icon string
---@param type number
---@param sender string
---@param title string
---@param text string
---@param colorBg number
---@public

function _NCS:iconNotif(icon, type, sender, title, text, colorBg)--( logo, 1, expediteur, objet, message)
    if colorBg then ThefeedNextPostBackgroundColor(colorBg) end
	SetNotificationTextEntry("STRING");
	AddTextComponentString(text);
	SetNotificationMessage(icon, icon, true, type, sender, title, text);
	DrawNotification(false, true);
end