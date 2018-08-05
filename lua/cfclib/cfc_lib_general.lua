print("Loading CFC Lib General...")
CFCLib = CFCLib or {}

-- General Functions
-------------------------------------------------

local cfcHookPrefix = "CFC-"
function CFCLib.generateCFCHook(hookName)
	return cfcHookPrefix .. hookName
end

-------------------------------------------------
