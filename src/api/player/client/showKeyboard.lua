---showKeyboard
---@param TextEntry string
---@param ExampleText string
---@param MaxStringLenght number
function API_Player:showKeyboard(TextEntry, ExampleText, MaxStringLenght)
    local blockinput = true
    
    AddTextEntry("FMMC_KEY_TIP1", TextEntry)
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "Somme", ExampleText, "", "", "", MaxStringLenght)
    while (UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2) do
        Wait(0)
    end

    if (UpdateOnscreenKeyboard() ~= 2) then
        local result = GetOnscreenKeyboardResult()
        Wait(500)
        blockinput = false
        return (result)
    else
        Citizen.Wait(500)
        blockinput = false
        return (nil)
    end
end