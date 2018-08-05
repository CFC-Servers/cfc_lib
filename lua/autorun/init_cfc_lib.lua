print("Initializing CFC Lib...")
if SERVER then
	AddCSLuaFile( "cfclib/cfc_lib_general.lua" )
	AddCSLuaFile( "cfclib/cfc_lib_factions.lua" )	
	AddCSLuaFile( "cfclib/cfc_lib_pvp.lua" )
	AddCSLuaFile()
end

include( "cfclib/cfc_lib_general.lua" )
include( "cfclib/cfc_lib_factions.lua" )
include( "cfclib/cfc_lib_pvp.lua" )

CFCLib = CFCLib or {}