class TreasureChest
    new: =>
        @@gold = 0

    add_gold: (amount) => @@gold += amount
    spend_gold: (amount) => @@gold -= amount
    show_gold: => print(@@gold)

treasureChest = TreasureChest!

treasureChest\add_gold 42
treasureChest\spend_gold 10
treasureChest\show_gold!

TC = TreasureChest!
TC\show_gold!

print(TreasureChest)
