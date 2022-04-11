AddEventHandler('chatMessage', function(source, n, message)
    command = stringsplit(message, " ")
	if(command[1] == "/do") then
    CancelEvent()                                                                   --This is the config you can edit it all you want
    TriggerClientEvent("chatMessage", source, n, {255, 0, 0}, "^5 you sent a chatMessage ' !")
    end
end)


function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end