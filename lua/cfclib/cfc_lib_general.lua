print("Loading CFC Lib General...")
CFCLib = CFCLib or {}

-- General Functions
-------------------------------------------------

local cfcHookPrefix = "CFC_"
function CFCLib.generateCFCHook(hookName)
	return cfcHookPrefix .. hookName
end

function CFCLib.isValidPlayer(ply)
    return IsValid( ply ) and ply:IsPlayer()
end

-------------------------------------------------
