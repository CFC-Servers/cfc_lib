print("Loading CFC Lib Pvp...")
CFCLib = CFCLib or {}

-- PvP Functions
-------------------------------------------------

function CFCLib.playerIsInPvp(ply)
    if ply:GetNWBool( "CFC_PvP_Mode", false ) then return true end
    return false
end

function CFCLib.playerIsInBuild(ply)
    if ply:GetNWBool( "CFC_PvP_Mode", false ) then return false end
    return true
end

function CFCLib.getPlayersInPvp()
	local plys = {}
	for _, ply in pairs( player.GetHumans() ) do
		if ply:GetNWBool( "CFC_PvP_Mode", false ) then table.insert(plys, ply) end
	end
	
	return plys
end

function CFCLib.getPlayersInBuild()
	local plys = {}
	for _, ply in pairs( player.GetHumans() ) do
		if not ply:GetNWBool( "CFC_PvP_Mode", false ) then table.insert(plys, ply) end
	end
	
	return plys
end

function CFCLib.playerHasSpawnProtection(ply)
	return ply:GetNWBool("hasSpawnProtection", false)
end

-------------------------------------------------