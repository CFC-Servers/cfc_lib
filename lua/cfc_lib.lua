
local cfc_lib = {}


-- General Functions
-------------------------------------------------

function cfc_lib.generateCFCHook(name)

end

-------------------------------------------------

-- PvP Functions
-------------------------------------------------

function cfc_lib.playerIsInPvp(ply)
    if ply:GetNWBool( "CFC_PvP_Mode", false ) then return true end
    return false
end

function cfc_lib.playerIsInBuild(ply)
    if ply:GetNWBool( "CFC_PvP_Mode", false ) then return false end
    return true
end

function cfc_lib.getPlayersInPvp()

end

function cfc_lib.getPlayersInBuild()

end

function cfc_lib.playerHasSpawnProtection(ply)

end

-------------------------------------------------

-- Faction Functions
-------------------------------------------------

function cfc_lib.getFactionForPlayer(ply)

end

function cfc_lib.getPlayersInFaction(factionProperty)

end

function cfc_lib.getAllFactions()

end

function cfc_lib.getOnlineFactioneers()

end

-------------------------------------------------

