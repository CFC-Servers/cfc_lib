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

end

function CFCLib.getPlayersInBuild()

end

function CFCLib.playerHasSpawnProtection(ply)

end

-------------------------------------------------