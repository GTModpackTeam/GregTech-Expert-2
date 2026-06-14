////////////////////////////////////////
// Materials
////////////////////////////////////////
// Ball
def balls = [
    item('enderio:item_alloy_ball'),
    item('enderio:item_alloy_ball', 1),
    item('enderio:item_alloy_ball', 2),
    item('enderio:item_alloy_ball', 3),
    item('enderio:item_alloy_ball', 4),
    item('enderio:item_alloy_ball', 5),
    item('enderio:item_alloy_ball', 6),
    item('enderio:item_alloy_ball', 7),
    item('enderio:item_alloy_ball', 8),
    item('enderio:item_alloy_ball', 9),
    item('enderio:item_alloy_endergy_ball'),
    item('enderio:item_alloy_endergy_ball', 1),
    item('enderio:item_alloy_endergy_ball', 2),
    item('enderio:item_alloy_endergy_ball', 3),
    item('enderio:item_alloy_endergy_ball', 4),
    item('enderio:item_alloy_endergy_ball', 5),
    item('enderio:item_alloy_endergy_ball', 6),
    item('enderio:item_material', 57),
    item('enderio:item_material', 58),
    item('enderio:item_material', 59)
]

// Nugget
def nuggets = [
    item('enderio:item_alloy_nugget'),
    item('enderio:item_alloy_nugget', 1),
    item('enderio:item_alloy_nugget', 2),
    item('enderio:item_alloy_nugget', 3),
    item('enderio:item_alloy_nugget', 4),
    item('enderio:item_alloy_nugget', 5),
    item('enderio:item_alloy_nugget', 6),
    item('enderio:item_alloy_nugget', 7),
    item('enderio:item_alloy_nugget', 8),
    item('enderio:item_alloy_nugget', 9),
    item('enderio:item_alloy_endergy_nugget'),
    item('enderio:item_alloy_endergy_nugget', 1),
    item('enderio:item_alloy_endergy_nugget', 2),
    item('enderio:item_alloy_endergy_nugget', 3),
    item('enderio:item_alloy_endergy_nugget', 4),
    item('enderio:item_alloy_endergy_nugget', 5),
    item('enderio:item_alloy_endergy_nugget', 6)
]

// Ingot
def ingots = [
    item('enderio:item_alloy_ingot'),
    item('enderio:item_alloy_ingot', 1),
    item('enderio:item_alloy_ingot', 2),
    item('enderio:item_alloy_ingot', 3),
    item('enderio:item_alloy_ingot', 4),
    item('enderio:item_alloy_ingot', 5),
    item('enderio:item_alloy_ingot', 6),
    item('enderio:item_alloy_ingot', 7),
    item('enderio:item_alloy_ingot', 8),
    item('enderio:item_alloy_ingot', 9),
    item('enderio:item_alloy_endergy_ingot'),
    item('enderio:item_alloy_endergy_ingot', 1),
    item('enderio:item_alloy_endergy_ingot', 2),
    item('enderio:item_alloy_endergy_ingot', 3),
    item('enderio:item_alloy_endergy_ingot', 4),
    item('enderio:item_alloy_endergy_ingot', 5),
    item('enderio:item_alloy_endergy_ingot', 6)
]

// Block
def blocks = [
    item('enderio:block_alloy'),
    item('enderio:block_alloy', 1),
    item('enderio:block_alloy', 2),
    item('enderio:block_alloy', 3),
    item('enderio:block_alloy', 4),
    item('enderio:block_alloy', 5),
    item('enderio:block_alloy', 6),
    item('enderio:block_alloy', 7),
    item('enderio:block_alloy', 8),
    item('enderio:block_alloy', 9),
    item('enderio:block_alloy_endergy'),
    item('enderio:block_alloy_endergy', 1),
    item('enderio:block_alloy_endergy', 2),
    item('enderio:block_alloy_endergy', 3),
    item('enderio:block_alloy_endergy', 4),
    item('enderio:block_alloy_endergy', 5),
    item('enderio:block_alloy_endergy', 6)
]


// Set Recipe
// Ball
balls.each { ball ->
    mods.jei.ingredient.hide(ball)
}

// Nugget
nuggets.each { nugget ->
    mods.jei.ingredient.hide(nugget)
}

// Ingot
ingots.each { ingot ->
    mods.jei.ingredient.hide(ingot)
    mods.minecraft.furnace.removeByOutput(ingot)
}

// Block
blocks.each { block ->
    mods.jei.ingredient.hide(block)
}

// Gear
mods.minecraft.ore_dict.add('gearElectricalSteel', item('enderio:item_material', 11))
mods.minecraft.ore_dict.add('gearEnergeticAlloy', item('enderio:item_material', 12))
mods.minecraft.ore_dict.add('gearVibrantAlloy', item('enderio:item_material', 13))

// Capacitor
mods.minecraft.ore_dict.add('eio.capacitor', item('enderio:item_basic_capacitor'))
mods.minecraft.ore_dict.add('eio.capacitor', item('enderio:item_capacitor_silver'))
