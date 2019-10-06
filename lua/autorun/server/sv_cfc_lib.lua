require("moonscript")
local player = {
  GetHumans = function()
    return {
      joe = {
        GetNWBool = function(str)
          return true
        end
      },
      dad = {
        GetNWBool = function(str)
          return false
        end
      },
      mom = {
        GetNWBool = function(str)
          return true
        end
      }
    }
  end
}
do
  local _class_0
  local _base_0 = {
    Sum = function(toSum)
      return fold(toSum, function(self, a, b)
        return a + b
      end)
    end,
    Average = function(toAverage)
      return Sum(toAverage) / #toAverage
    end,
    IsValidPlayer = function(ply)
      return true
    end,
    GenerateCFCHook = function(hookname)
      return "CFC_" .. tostring(hookname)
    end,
    AlertPlayer = function(ply, addonName, message)
      return ply:ChatPrint("[" .. tostring(addonName) .. "] " .. tostring(message))
    end,
    GetAveragePing = function(self)
      return self.Average((function()
        local _accum_0 = { }
        local _len_0 = 1
        for p in pairs(player:GetHumans()) do
          _accum_0[_len_0] = p.Ping()
          _len_0 = _len_0 + 1
        end
        return _accum_0
      end)())
    end,
    PlayerIsInPvp = function(self, ply)
      return ply.GetNWBool("CFC_PvP_Mode", false) and self:IsValidPlayer(ply)
    end,
    PlayerIsInBuild = function(self, ply)
      if self:IsValidPlayer(ply) then
        return PlayerIsInPvp(ply) == false
      end
    end,
    GetPlayersInPvp = function(self)
      local _accum_0 = { }
      local _len_0 = 1
      for k, ply in pairs(player.GetHumans()) do
        if self:PlayerIsInPvp(ply) then
          _accum_0[_len_0] = k
          _len_0 = _len_0 + 1
        end
      end
      return _accum_0
    end,
    GetPlayersInBuild = function(self)
      local _accum_0 = { }
      local _len_0 = 1
      for k, ply in pairs(player.GetHumans()) do
        if self:PlayerIsInBuild(ply) then
          _accum_0[_len_0] = k
          _len_0 = _len_0 + 1
        end
      end
      return _accum_0
    end,
    PlayerHasSpawnProtection = function(self, ply)
      return ply.GetNWBool('test')
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function() end,
    __base = _base_0,
    __name = "CFCLib"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  CFCLib = _class_0
end
local C = CFCLib()
for _, ply in pairs(C:GetPlayersInPvp()) do
  print(ply)
end
return {
  playborp = {
    IsValid = function(self)
      return true
    end,
    IsPlayer = function(self)
      return true
    end
  }
}
