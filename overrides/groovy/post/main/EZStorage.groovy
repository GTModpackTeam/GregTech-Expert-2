// ########################################
// Blocks
// ########################################
// Blank Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:blank_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:blank_box'))
    .shape([
        [ore('logWood'), ore('craftingToolHardHammer'), ore('logWood')],
        [metaitem('plateBronze'), ore('logWood'), metaitem('plateBronze')],
        [ore('logWood'), metaitem('plateBronze'), ore('logWood')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(metaitem('plateBronze') * 2, ore('logWood') * 3)
    .outputs(item('ezstorage:blank_box'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Storage Core
mods.minecraft.crafting.removeByOutput(item('ezstorage:storage_core'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:storage_core'))
    .shape([
        [ore('logWood'), ore('craftingToolHardHammer'), ore('logWood')],
        [metaitem('plateIron'), item('ezstorage:storage_box'), metaitem('plateIron')],
        [ore('logWood'), metaitem('plateIron'), ore('logWood')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(item('ezstorage:storage_box'), ore('logWood') * 2, metaitem('plateIron') * 2)
    .outputs(item('ezstorage:storage_core'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Storage Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:storage_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:storage_box'))
    .shape([
        [ore('logWood'), ore('craftingToolHardHammer'), ore('logWood')],
        [item('ezstorage:blank_box'), metaitem('crate.wood'), item('ezstorage:blank_box')],
        [ore('logWood'), item('ezstorage:blank_box'), ore('logWood')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(metaitem('crate.wood'), ore('logWood') * 2, item('ezstorage:blank_box') * 3)
    .outputs(item('ezstorage:storage_box'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Condensed Storage Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:condensed_storage_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:condensed_storage_box'))
    .shape([
        [metaitem('plateIron'), ore('craftingToolHardHammer'), metaitem('plateIron')],
        [metaitem('plateIron'), metaitem('crate.bronze'), metaitem('plateIron')],
        [metaitem('plateIron'), item('ezstorage:storage_box'), metaitem('plateIron')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(metaitem('crate.bronze'), item('ezstorage:storage_box'), metaitem('plateIron') * 3)
    .outputs(item('ezstorage:condensed_storage_box'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Super Storage Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:super_storage_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:super_storage_box'))
    .shape([
        [metaitem('plateGold'), ore('craftingToolHardHammer'), metaitem('plateGold')],
        [metaitem('plateGold'), metaitem('crate.steel'), metaitem('plateGold')],
        [metaitem('plateGold'), item('ezstorage:condensed_storage_box'), metaitem('plateGold')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(metaitem('crate.steel'), item('ezstorage:condensed_storage_box'), metaitem('plateGold') * 3)
    .outputs(item('ezstorage:super_storage_box'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Ultra Storage Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:ultra_storage_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:ultra_storage_box'))
    .shape([
        [metaitem('plateAluminium'), ore('craftingToolHardHammer'), metaitem('plateAluminium')],
        [metaitem('plateAluminium'), metaitem('crate.aluminium'), metaitem('plateAluminium')],
        [metaitem('plateAluminium'), item('ezstorage:super_storage_box'), metaitem('plateAluminium')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(metaitem('crate.aluminium'), item('ezstorage:super_storage_box'), metaitem('plateAluminium') * 3)
    .outputs(item('ezstorage:ultra_storage_box'))
    .duration(100)
    .EUt(120)
    .buildAndRegister()

// Hyper Storage Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:hyper_storage_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:hyper_storage_box'))
    .shape([
        [metaitem('plateStainlessSteel'), ore('craftingToolHardHammer'), metaitem('plateStainlessSteel')],
        [metaitem('plateStainlessSteel'), metaitem('crate.stainless_steel'), metaitem('plateStainlessSteel')],
        [metaitem('plateStainlessSteel'), item('ezstorage:ultra_storage_box'), metaitem('plateStainlessSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(metaitem('crate.stainless_steel'), item('ezstorage:ultra_storage_box'), metaitem('plateStainlessSteel') * 3)
    .outputs(item('ezstorage:hyper_storage_box'))
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Input Port
mods.minecraft.crafting.removeByOutput(item('ezstorage:input_port'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:input_port'))
    .shape([
        [metaitem('plateSteel'), ore('craftingToolWrench'), metaitem('plateSteel')],
        [item('minecraft:hopper'), item('ezstorage:storage_core'), item('minecraft:hopper')],
        [metaitem('plateSteel'), ore('craftingPiston'), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(ore('craftingPiston'), item('ezstorage:storage_core'), metaitem('plateSteel') * 2)
    .outputs(item('ezstorage:input_port'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Output Port
mods.minecraft.crafting.removeByOutput(item('ezstorage:output_port'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:output_port'))
    .shape([
        [metaitem('plateSteel'), item('minecraft:dropper'), metaitem('plateSteel')],
        [item('minecraft:dropper'), item('ezstorage:input_port'), item('minecraft:dropper')],
        [metaitem('plateSteel'), ore('craftingToolWrench'), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(item('minecraft:dropper'), item('ezstorage:input_port'), metaitem('plateSteel') * 2)
    .outputs(item('ezstorage:output_port'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Extract Port
mods.minecraft.crafting.removeByOutput(item('ezstorage:extract_port'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:extract_port'))
    .shape([
        [item('minecraft:iron_bars'), item('minecraft:comparator'), item('minecraft:iron_bars')],
        [item('minecraft:hopper'), item('ezstorage:input_port'), item('minecraft:hopper')],
        [item('minecraft:iron_bars'), item('minecraft:comparator'), item('minecraft:iron_bars')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(item('minecraft:comparator'), item('minecraft:hopper'), item('ezstorage:input_port'), item('minecraft:iron_bars') * 2)
    .outputs(item('ezstorage:extract_port'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Crafting Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:crafting_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:crafting_box'))
    .shape([
        [metaitem('plateSteel'), ore('craftingToolHardHammer'), metaitem('plateSteel')],
        [metaitem('workbench'), item('ezstorage:blank_box'), metaitem('workbench')],
        [metaitem('plateSteel'), ore('craftingToolWrench'), metaitem('plateSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:crafting_box'))
    .shape([
        [metaitem('plateSteel'), ore('craftingToolWrench'), metaitem('plateSteel')],
        [metaitem('workbench'), item('ezstorage:blank_box'), metaitem('workbench')],
        [metaitem('plateSteel'), ore('craftingToolHardHammer'), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(metaitem('workbench'), item('ezstorage:blank_box'), metaitem('plateSteel') * 2)
    .outputs(item('ezstorage:crafting_box'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Search Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:search_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:search_box'))
    .shape([
        [metaitem('plateSteel'), ore('craftingToolWrench'), metaitem('plateSteel')],
        [item('minecraft:compass'), item('ezstorage:blank_box'), item('minecraft:compass')],
        [metaitem('plateSteel'), ore('craftingToolHardHammer'), metaitem('plateSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:search_box'))
    .shape([
        [metaitem('plateSteel'), ore('craftingToolHardHammer'), metaitem('plateSteel')],
        [item('minecraft:compass'), item('ezstorage:blank_box'), item('minecraft:compass')],
        [metaitem('plateSteel'), ore('craftingToolWrench'), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(item('minecraft:compass'), item('ezstorage:blank_box'), metaitem('plateSteel') * 2)
    .outputs(item('ezstorage:search_box'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()
