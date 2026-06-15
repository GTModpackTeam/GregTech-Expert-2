package post.main

import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName('assembler')

////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Fluid Pattern Encoder
mods.minecraft.crafting.removeByOutput(item('ae2fc:fluid_pattern_encoder'))
mods.jei.ingredient.hide(item('ae2fc:fluid_pattern_encoder'))

// Ingredient Buffer
mods.minecraft.crafting.removeByOutput(item('ae2fc:ingredient_buffer'))
mods.jei.ingredient.hide(item('ae2fc:ingredient_buffer'))

// Large Ingredient Buffer
mods.minecraft.crafting.removeByOutput(item('ae2fc:large_ingredient_buffer'))
mods.jei.ingredient.hide(item('ae2fc:large_ingredient_buffer'))

// ME Fluid Assembler
mods.minecraft.crafting.removeByOutput(item('ae2fc:fluid_assembler'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('ae2fc:fluid_assembler'))
    .input(item('aeadditions:fluidcrafter'))
    .register()
assembler.recipeBuilder()
    .circuitMeta(3)
    .inputs(
        metaitem('plateGlass') * 2,
        ore('circuitHv') * 2,
        metaitem('electric.pump.hv') * 2,
        metaitem('fluid.regulator.hv') * 2,
        metaitem('plateSteel') * 4
    )
    .fluidInputs(fluid('plastic') * 144)
    .outputs(item('ae2fc:fluid_assembler'))
    .duration(200)
    .EUt(480)
    .buildAndRegister()

// Fluid Packet Decoder
mods.minecraft.crafting.removeByOutput(item('ae2fc:fluid_packet_decoder'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:fluid_packet_decoder'))
    .shape([
        [metaitem('plateStainlessSteel'), metaitem('electric.piston.hv'), metaitem('plateStainlessSteel')],
        [ore('craftGlassCable'), ore('craftInterfaceFluid'), ore('craftGlassCable')],
        [metaitem('plateStainlessSteel'), item('appliedenergistics2:material', 23), metaitem('plateStainlessSteel')],
    ])
    .register()

// Precision Burette
mods.minecraft.crafting.removeByOutput(item('ae2fc:burette'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:burette'))
    .shape([
        [metaitem('plateStainlessSteel'), metaitem('electric.piston.hv'), metaitem('plateStainlessSteel')],
        [item('appliedenergistics2:quartz_glass'), item('minecraft:bucket'), item('appliedenergistics2:quartz_glass')],
        [metaitem('plateStainlessSteel'), item('appliedenergistics2:material', 23), metaitem('plateStainlessSteel')],
    ])
    .register()

// Fluid Discretizer
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:fluid_discretizer'))
    .shape([
        [metaitem('plateStainlessSteel'), item('appliedenergistics2:material', 24), metaitem('plateStainlessSteel')],
        [item('appliedenergistics2:part', 220), item('appliedenergistics2:condenser'), item('appliedenergistics2:part', 221)],
        [metaitem('plateStainlessSteel'), item('appliedenergistics2:material', 24), metaitem('plateStainlessSteel')],
    ])
    .register()

// ME Dual Interface
mods.minecraft.crafting.remove(resource('ae2fc:dual_interface'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:dual_interface'))
    .shape([
        [metaitem('plateTitanium'), metaitem('plateGlass'), metaitem('plateTitanium')],
        [item('gtexpert:meta_item_1', 1), item('gregtech:machine_casing', 3), item('gtexpert:meta_item_1', 1)],
        [metaitem('plateTitanium'), metaitem('plateGlass'), metaitem('plateTitanium')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(3)
    .inputs(
        item('gregtech:machine_casing', 3),
        item('gtexpert:meta_item_1', 1),
        metaitem('plateGlass'),
        metaitem('plateTitanium') * 2
    )
    .outputs(item('ae2fc:dual_interface'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Fluid Pattern Terminal
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:part_fluid_pattern_terminal'))
    .shape([
        [ore('craftingToolScrewdriver'), item('appliedenergistics2:part', 380), ore('craftingToolSoftHammer')],
        [metaitem('screwStainlessSteel'), item('appliedenergistics2:material', 52), metaitem('screwStainlessSteel')],
        [metaitem('plateStainlessSteel'), item('appliedenergistics2:material', 23), metaitem('plateStainlessSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:part_fluid_pattern_terminal'))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 380), ore('craftingToolScrewdriver')],
        [metaitem('screwStainlessSteel'), item('appliedenergistics2:material', 52), metaitem('screwStainlessSteel')],
        [metaitem('plateStainlessSteel'), item('appliedenergistics2:material', 23), metaitem('plateStainlessSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 23),
        item('appliedenergistics2:part', 380),
        item('appliedenergistics2:material', 52),
        metaitem('screwStainlessSteel'),
        metaitem('plateStainlessSteel')
    )
    .outputs(item('ae2fc:part_fluid_pattern_terminal'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Extended Processing Fluid Pattern Terminal
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:part_fluid_pattern_ex_terminal'))
    .shape([
        [ore('craftingToolScrewdriver'), item('ae2fc:part_fluid_pattern_terminal'), ore('craftingToolSoftHammer')],
        [metaitem('screwStainlessSteel'), item('appliedenergistics2:material', 52), metaitem('screwStainlessSteel')],
        [metaitem('plateStainlessSteel'), item('appliedenergistics2:material', 24), metaitem('plateStainlessSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:part_fluid_pattern_ex_terminal'))
    .shape([
        [ore('craftingToolSoftHammer'), item('ae2fc:part_fluid_pattern_terminal'), ore('craftingToolScrewdriver')],
        [metaitem('screwStainlessSteel'), item('appliedenergistics2:material', 52), metaitem('screwStainlessSteel')],
        [metaitem('plateStainlessSteel'), item('appliedenergistics2:material', 24), metaitem('plateStainlessSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        item('ae2fc:part_fluid_pattern_terminal'),
        item('appliedenergistics2:material', 52),
        metaitem('screwStainlessSteel'),
        metaitem('plateStainlessSteel')
    )
    .outputs(item('ae2fc:part_fluid_pattern_ex_terminal'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Fluid Level Maintainer
mods.minecraft.crafting.removeByOutput(item('ae2fc:fluid_level_maintainer'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:fluid_level_maintainer'))
    .shape([
        [metaitem('plateFluixAlloy'), item('appliedenergistics2:part', 281), metaitem('plateFluixAlloy')],
        [item('appliedenergistics2:material', 22), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 22)],
        [metaitem('plateFluixAlloy'), item('appliedenergistics2:material', 53), metaitem('plateFluixAlloy')],
    ])
    .register()

////////////////////////////////////////
// Items
////////////////////////////////////////
// Wireless Fluid Interface Terminal
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:wireless_fluid_pattern_terminal'))
    .shape([
        [
            item('appliedenergistics2:material', 41),
            item('ae2fc:part_fluid_pattern_terminal'),
            item('appliedenergistics2:material', 41),
        ],
        [item('appliedenergistics2:material', 24), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 24)],
        [metaitem('plateNetherQuartz'), item('appliedenergistics2:dense_energy_cell'), metaitem('plateNetherQuartz')],
    ])
    .register()
