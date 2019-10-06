local TreasureChest
do
  local _class_0
  local _base_0 = {
    add_gold = function(self, amount)
      self.__class.gold = self.__class.gold + amount
    end,
    spend_gold = function(self, amount)
      self.__class.gold = self.__class.gold - amount
    end,
    show_gold = function(self)
      return print(self.__class.gold)
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self)
      self.__class.gold = 0
    end,
    __base = _base_0,
    __name = "TreasureChest"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  TreasureChest = _class_0
end
local treasureChest = TreasureChest()
treasureChest:add_gold(42)
treasureChest:spend_gold(10)
treasureChest:show_gold()
local TC = TreasureChest()
TC:show_gold()
return print(TreasureChest)
