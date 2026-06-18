// ########################################
// Items
// ########################################
// Pouch
mods.minecraft.crafting.removeByOutput(item('enderstorage:ender_pouch', 0))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderstorage:ender_pouch', 0))
    .input(item('enderstorage:ender_pouch', 0))
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(ore('foilBronze') * 4, item('minecraft:leather') * 3, ore('wool'), metaitem('cover.ender_fluid_link'))
    .outputs(item('enderstorage:ender_pouch', 0))
    .duration(400)
    .EUt(480)
    .buildAndRegister()

// ########################################
// Blocks
// ########################################
// Chest
mods.minecraft.crafting.removeByOutput(item('enderstorage:ender_storage', 0))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderstorage:ender_storage', 0))
    .input(item('enderstorage:ender_storage', 0))
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('screwBronze') * 8,
        item('enderio:block_reinforced_obsidian') * 2,
        ore('wool'),
        metaitem('cover.ender_fluid_link'),
        metaitem('conveyor.module.hv'),
        metaitem('crate.bronze')
    )
    .outputs(item('enderstorage:ender_storage', 0))
    .duration(400)
    .EUt(480)
    .buildAndRegister()

// Tank
mods.minecraft.crafting.removeByOutput(item('enderstorage:ender_storage', 1))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderstorage:ender_storage', 1))
    .input(item('enderstorage:ender_storage', 1))
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('stickBronze') * 4,
        item('enderio:block_reinforced_obsidian') * 2,
        ore('wool'),
        metaitem('cover.ender_fluid_link'),
        metaitem('electric.pump.hv'),
        metaitem('drum.bronze')
    )
    .outputs(item('enderstorage:ender_storage', 1))
    .duration(400)
    .EUt(480)
    .buildAndRegister()
