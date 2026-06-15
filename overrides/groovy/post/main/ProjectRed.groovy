package post.main

////////////////////////////////////////
// Items
////////////////////////////////////////
// Electrotine
mods.jei.ingredient.hide(item('projectred-core:resource_item', 105))
mods.minecraft.ore_dict.remove('dustElectrotine', item('projectred-core:resource_item', 105))

// Sandy Compound
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 250))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 250))

// Silicon Boule
mods.minecraft.furnace.removeByOutput(item('projectred-core:resource_item', 300))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 300))

// Silicon
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 301))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 301))

// Red Silicon Compound
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 310))
mods.minecraft.crafting.shapedBuilder()
    .output(item('projectred-core:resource_item', 310))
    .shape([
        [item('minecraft:redstone'), item('minecraft:redstone'), item('minecraft:redstone')],
        [item('minecraft:redstone'), metaitem('wafer.silicon'), item('minecraft:redstone')],
        [item('minecraft:redstone'), item('minecraft:redstone'), item('minecraft:redstone')],
    ])
    .register()

// Glowing Silicon Compound
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 311))
mods.minecraft.crafting.shapedBuilder()
    .output(item('projectred-core:resource_item', 311))
    .shape([
        [item('minecraft:glowstone_dust'), item('minecraft:glowstone_dust'), item('minecraft:glowstone_dust')],
        [item('minecraft:glowstone_dust'), metaitem('wafer.silicon'), item('minecraft:glowstone_dust')],
        [item('minecraft:glowstone_dust'), item('minecraft:glowstone_dust'), item('minecraft:glowstone_dust')],
    ])
    .register()

// Electrotine Silicon Compound
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 312))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 312))

// Electro Silicon
mods.minecraft.furnace.removeByOutput(item('projectred-core:resource_item', 342))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 342))

// Copper Ingot
mods.jei.ingredient.hide(item('projectred-core:resource_item', 100))
mods.minecraft.ore_dict.remove('ingotCopper', item('projectred-core:resource_item', 100))

// Tin Ingot
mods.jei.ingredient.hide(item('projectred-core:resource_item', 101))
mods.minecraft.ore_dict.remove('ingotTin', item('projectred-core:resource_item', 101))

// Silver Ingot
mods.jei.ingredient.hide(item('projectred-core:resource_item', 102))
mods.minecraft.ore_dict.remove('ingotSilver', item('projectred-core:resource_item', 102))

// RedAlloy Ingot
mods.minecraft.furnace.removeByOutput(item('projectred-core:resource_item', 103))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 103))
mods.minecraft.ore_dict.remove('ingotRedAlloy', item('projectred-core:resource_item', 103))

// ElectrotineAlloy Ingot
mods.minecraft.furnace.removeByOutput(item('projectred-core:resource_item', 104))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 104))
mods.minecraft.ore_dict.remove('ingotElectrotineAlloy', item('projectred-core:resource_item', 104))

// Ruby
mods.jei.ingredient.hide(item('projectred-core:resource_item', 200))
mods.minecraft.ore_dict.remove('gemRuby', item('projectred-core:resource_item', 200))

// Sapphire
mods.jei.ingredient.hide(item('projectred-core:resource_item', 201))
mods.minecraft.ore_dict.remove('gemSapphire', item('projectred-core:resource_item', 201))

// Peridot
mods.jei.ingredient.hide(item('projectred-core:resource_item', 202))
mods.minecraft.ore_dict.remove('gemPeridot', item('projectred-core:resource_item', 202))

// Red Iron Compound
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 251))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 251))

// Electrotine Iron Compound
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 252))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 252))

// Woven Cloth
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 420))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 420))

// Sail
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 421))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 421))

// Motor
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 410))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 410))

// Copper Coil
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 400))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 400))

// Iron Coil
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 401))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 401))

// Gold Coil
mods.minecraft.crafting.removeByOutput(item('projectred-core:resource_item', 402))
mods.jei.ingredient.hide(item('projectred-core:resource_item', 402))
