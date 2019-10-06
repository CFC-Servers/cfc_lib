require "moonscript"

export CFCLib

player = {
    GetHumans: -> {
        joe: {GetNWBool: (str) -> true}
        dad: {GetNWBool: (str) -> false}
        mom: {GetNWBool: (str) -> true}
     }
}

class CFCLib
    Sum: (toSum) -> fold(toSum, (a,b) => a + b)
    Average: (toAverage) -> Sum( toAverage ) / #toAverage
--  IsValidPlayer: (ply) -> ply\IsValid! and ply\IsPlayer!
    IsValidPlayer: (ply) -> true
    GenerateCFCHook: (hookname) -> "CFC_#{hookname}"
    AlertPlayer: ( ply, addonName, message ) -> ply\ChatPrint( "[#{addonName}] #{message}")
    GetAveragePing: => self.Average [p.Ping! for p in pairs player\GetHumans!]
    PlayerIsInPvp: (ply) => ply.GetNWBool( "CFC_PvP_Mode", false ) and @IsValidPlayer ply
    PlayerIsInBuild: (ply) => PlayerIsInPvp( ply ) == false if @IsValidPlayer ply
    GetPlayersInPvp: => [k for k, ply in pairs player.GetHumans! when @PlayerIsInPvp ply]
    GetPlayersInBuild: => [k for k,  ply in pairs player.GetHumans! when @PlayerIsInBuild ply]
    PlayerHasSpawnProtection: (ply) => ply\GetNWBool('test')


C = CFCLib!

print ply for _,ply in pairs C\GetPlayersInPvp!
































-- TESTS
playborp: {
    IsValid: => true,
    IsPlayer: => true
}

-- print( IsValidPlayer( playborp ) )
