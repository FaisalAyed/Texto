QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand('revers', function(source, args)
    if #args >= 1 then
        local msg = table.concat(args, " ")
        msg = string.reverse(msg)
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {"revers", msg}
        })
    else
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {"revers", "Error: Not enough arguments! Usage: /revers [text]"}
        })
    end
end, false)

RegisterCommand('ToUpper', function(source, args)
    if #args >= 1 then
        local msg = table.concat(args, " ")
        msg = string.upper(msg)
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {"To_Upper", msg}
        })
    else
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {"To_Upper", "Error: Not enough arguments! Usage: /ToUpper [text1] [text2] ... [textN]"}
        })
    end
end, false)


RegisterCommand('adds', function(source, args)
    if #args >= 1 then
        local msg = table.concat(args, " ")
        msg = string.upper(msg)
        QBCore.Functions.Notify(msg, "primary", 2000)
    end
end, false)
