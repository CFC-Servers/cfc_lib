print("Loading CFC Lib Factions...")
CFCLib = CFCLib or {}

-- Faction Functions
-------------------------------------------------

function CFCLib.getFactionForPlayer(ply)
    if not ply:IsInFaction() then return {} end

    local id = ply:GetFactionID()
    local name = nil
    local rank = ply:GetFactionRank()

    return {
        id = factionID,
        name = name,
        rank = rank
    }
end

function CFCLib.getPlayersInFaction(factionProperty)

end

function CFCLib.getAllFactions()

end

function CFCLib.getOnlineFactioneers()

end

-------------------------------------------------

