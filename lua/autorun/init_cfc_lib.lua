if SERVER then
	AddCSLuaFile( "cfc_lib/cfc_lib_general.lua" )
	AddCSLuaFile( "cfc_lib/cfc_lib_factions.lua" )	
	AddCSLuaFile( "cfc_lib/cfc_lib_pvp.lua" )
end

include( "cfc_lib/cfc_lib_general.lua" )
include( "cfc_lib/cfc_lib_factions.lua" )
include( "cfc_lib/cfc_lib_pvp.lua" )

CFCLib = CFCLib or {}