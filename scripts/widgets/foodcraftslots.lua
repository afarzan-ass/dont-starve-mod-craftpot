require "class"

local CraftSlots = require "widgets/craftslots"
local FoodCraftSlot = require "widgets/foodcraftslot"--mod

-- finished i guess
local FoodCraftSlots = Class(CraftSlots, function(self, num, owner)
    CraftSlots._base._ctor(self, "FoodCraftSlots")

    self.slots = {}
    for k = 1, num do
        local slot = FoodCraftSlot(HUD_ATLAS, "craft_slot.tex", owner)
        self.slots[k] = slot
        self:AddChild(slot)
    end
end)

return FoodCraftSlots
