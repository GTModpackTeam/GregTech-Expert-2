import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName("assembler")

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
        mi('plateGlass', 2),
        ore('circuitHv') * 2,
        mi('electric.pump.hv', 2),
        mi('fluid.regulator.hv', 2),
        mi('plateSteel', 4)
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
        [mi('plateStainlessSteel'), mi('electric.piston.hv'), mi('plateStainlessSteel')],
        [ore('craftGlassCable'), ore('craftInterfaceFluid'), ore('craftGlassCable')],
        [mi('plateStainlessSteel'), item('appliedenergistics2:material', 23), mi('plateStainlessSteel')]
    ])
    .register()

// Precision Burette
mods.minecraft.crafting.removeByOutput(item('ae2fc:burette'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:burette'))
    .shape([
        [mi('plateStainlessSteel'), mi('electric.piston.hv'), mi('plateStainlessSteel')],
        [item('appliedenergistics2:quartz_glass'), item('minecraft:bucket'), item('appliedenergistics2:quartz_glass')],
        [mi('plateStainlessSteel'), item('appliedenergistics2:material', 23), mi('plateStainlessSteel')]
    ])
    .register()

// Fluid Discretizer
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:fluid_discretizer'))
    .shape([
        [mi('plateStainlessSteel'), item('appliedenergistics2:material', 24), mi('plateStainlessSteel')],
        [item('appliedenergistics2:part', 220), item('appliedenergistics2:condenser'), item('appliedenergistics2:part', 221)],
        [mi('plateStainlessSteel'), item('appliedenergistics2:material', 24), mi('plateStainlessSteel')]
    ])
    .register()

// ME Dual Interface
mods.minecraft.crafting.remove(resource('ae2fc:dual_interface'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:dual_interface'))
    .shape([
        [mi('plateTitanium'), mi('plateGlass'), mi('plateTitanium')],
        [item('gtexpert:meta_item_1', 1), item('gregtech:machine_casing', 3), item('gtexpert:meta_item_1', 1)],
        [mi('plateTitanium'), mi('plateGlass'), mi('plateTitanium')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(3)
    .inputs(
        item('gregtech:machine_casing', 3),
        item('gtexpert:meta_item_1', 1),
        mi('plateGlass'),
        mi('plateTitanium', 2)
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
        [mi('screwStainlessSteel'), item('appliedenergistics2:material', 52), mi('screwStainlessSteel')],
        [mi('plateStainlessSteel'), item('appliedenergistics2:material', 23), mi('plateStainlessSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:part_fluid_pattern_terminal'))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 380), ore('craftingToolScrewdriver')],
        [mi('screwStainlessSteel'), item('appliedenergistics2:material', 52), mi('screwStainlessSteel')],
        [mi('plateStainlessSteel'), item('appliedenergistics2:material', 23), mi('plateStainlessSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 23),
        item('appliedenergistics2:part', 380),
        item('appliedenergistics2:material', 52),
        mi('screwStainlessSteel'),
        mi('plateStainlessSteel')
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
        [mi('screwStainlessSteel'), item('appliedenergistics2:material', 52), mi('screwStainlessSteel')],
        [mi('plateStainlessSteel'), item('appliedenergistics2:material', 24), mi('plateStainlessSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:part_fluid_pattern_ex_terminal'))
    .shape([
        [ore('craftingToolSoftHammer'), item('ae2fc:part_fluid_pattern_terminal'), ore('craftingToolScrewdriver')],
        [mi('screwStainlessSteel'), item('appliedenergistics2:material', 52), mi('screwStainlessSteel')],
        [mi('plateStainlessSteel'), item('appliedenergistics2:material', 24), mi('plateStainlessSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        item('ae2fc:part_fluid_pattern_terminal'),
        item('appliedenergistics2:material', 52),
        mi('screwStainlessSteel'),
        mi('plateStainlessSteel')
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
        [mi('plateFluixAlloy'), item('appliedenergistics2:part', 281), mi('plateFluixAlloy')],
        [item('appliedenergistics2:material', 22), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 22)],
        [mi('plateFluixAlloy'), item('appliedenergistics2:material', 53), mi('plateFluixAlloy')]
    ])
    .register()


////////////////////////////////////////
// Items
////////////////////////////////////////
// Wireless Fluid Interface Terminal
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2fc:wireless_fluid_pattern_terminal'))
    .shape([
        [item('appliedenergistics2:material', 41), item('ae2fc:part_fluid_pattern_terminal'), item('appliedenergistics2:material', 41)],
        [item('appliedenergistics2:material', 24), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 24)],
        [mi('plateNetherQuartz'), item('appliedenergistics2:dense_energy_cell'), mi('plateNetherQuartz')]
    ])
    .register()
