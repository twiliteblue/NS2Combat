--________________________________
--
--   	NS2 Combat Mod
--	Made by JimWest and MCMLXXXIV, 2012
--
--________________________________

-- combat_TeamMessenger.lua

-- Intercept and block any 'No Commander' messages, Hooking caused errors so we replace it
function SendTeamMessage(team, messageType, optionalData)

    local function SendToPlayer(player)
        Server.SendNetworkMessage(player, "TeamMessage", { type = messageType, data = optionalData or 0 }, true)
    end    
    
	-- Only intercept NoCommander messages, for now.
    if not ((messageType == kTeamMessageTypes.NoCommander) or
			(messageType == kTeamMessageTypes.CannotSpawn)) then
			
		team:ForEachPlayer(SendToPlayer)
		
	end
	
end