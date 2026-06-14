import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName("assembler")

// ########################################
// Blocks
// ########################################
// Blank Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:blank_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:blank_box'))
    .shape([
        [ore('logWood'), ore('craftingToolHardHammer'), ore('logWood')],
        [mi('plateBronze'), ore('logWood'), mi('plateBronze')],
        [ore('logWood'), mi('plateBronze'), ore('logWood')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(mi('plateBronze', 2), ore('logWood') * 3)
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
        [mi('plateIron'), item('ezstorage:storage_box'), mi('plateIron')],
        [ore('logWood'), mi('plateIron'), ore('logWood')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(item('ezstorage:storage_box'), ore('logWood') * 2, mi('plateIron', 2))
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
        [item('ezstorage:blank_box'), mi('crate.wood'), item('ezstorage:blank_box')],
        [ore('logWood'), item('ezstorage:blank_box'), ore('logWood')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(mi('crate.wood'), ore('logWood') * 2, item('ezstorage:blank_box') * 3)
    .outputs(item('ezstorage:storage_box'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Condensed Storage Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:condensed_storage_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:condensed_storage_box'))
    .shape([
        [mi('plateIron'), ore('craftingToolHardHammer'), mi('plateIron')],
        [mi('plateIron'), mi('crate.bronze'), mi('plateIron')],
        [mi('plateIron'), item('ezstorage:storage_box'), mi('plateIron')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(mi('crate.bronze'), item('ezstorage:storage_box'), mi('plateIron', 3))
    .outputs(item('ezstorage:condensed_storage_box'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Super Storage Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:super_storage_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:super_storage_box'))
    .shape([
        [mi('plateGold'), ore('craftingToolHardHammer'), mi('plateGold')],
        [mi('plateGold'), mi('crate.steel'), mi('plateGold')],
        [mi('plateGold'), item('ezstorage:condensed_storage_box'), mi('plateGold')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(mi('crate.steel'), item('ezstorage:condensed_storage_box'), mi('plateGold', 3))
    .outputs(item('ezstorage:super_storage_box'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Ultra Storage Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:ultra_storage_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:ultra_storage_box'))
    .shape([
        [mi('plateAluminium'), ore('craftingToolHardHammer'), mi('plateAluminium')],
        [mi('plateAluminium'), mi('crate.aluminium'), mi('plateAluminium')],
        [mi('plateAluminium'), item('ezstorage:super_storage_box'), mi('plateAluminium')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(mi('crate.aluminium'), item('ezstorage:super_storage_box'), mi('plateAluminium', 3))
    .outputs(item('ezstorage:ultra_storage_box'))
    .duration(100)
    .EUt(120)
    .buildAndRegister()

// Hyper Storage Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:hyper_storage_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:hyper_storage_box'))
    .shape([
        [mi('plateStainlessSteel'), ore('craftingToolHardHammer'), mi('plateStainlessSteel')],
        [mi('plateStainlessSteel'), mi('crate.stainless_steel'), mi('plateStainlessSteel')],
        [mi('plateStainlessSteel'), item('ezstorage:ultra_storage_box'), mi('plateStainlessSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(mi('crate.stainless_steel'), item('ezstorage:ultra_storage_box'), mi('plateStainlessSteel', 3))
    .outputs(item('ezstorage:hyper_storage_box'))
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Input Port
mods.minecraft.crafting.removeByOutput(item('ezstorage:input_port'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:input_port'))
    .shape([
        [mi('plateSteel'), ore('craftingToolWrench'), mi('plateSteel')],
        [item('minecraft:hopper'), item('ezstorage:storage_core'), item('minecraft:hopper')],
        [mi('plateSteel'), ore('craftingPiston'), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(ore('craftingPiston'), item('ezstorage:storage_core'), mi('plateSteel', 2))
    .outputs(item('ezstorage:input_port'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Output Port
mods.minecraft.crafting.removeByOutput(item('ezstorage:output_port'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:output_port'))
    .shape([
        [mi('plateSteel'), item('minecraft:dropper'), mi('plateSteel')],
        [item('minecraft:dropper'), item('ezstorage:input_port'), item('minecraft:dropper')],
        [mi('plateSteel'), ore('craftingToolWrench'), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(item('minecraft:dropper'), item('ezstorage:input_port'), mi('plateSteel', 2))
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
        [item('minecraft:iron_bars'), item('minecraft:comparator'), item('minecraft:iron_bars')]
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
        [mi('plateSteel'), ore('craftingToolHardHammer'), mi('plateSteel')],
        [mi('workbench'), item('ezstorage:blank_box'), mi('workbench')],
        [mi('plateSteel'), ore('craftingToolWrench'), mi('plateSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:crafting_box'))
    .shape([
        [mi('plateSteel'), ore('craftingToolWrench'), mi('plateSteel')],
        [mi('workbench'), item('ezstorage:blank_box'), mi('workbench')],
        [mi('plateSteel'), ore('craftingToolHardHammer'), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(mi('workbench'), item('ezstorage:blank_box'), mi('plateSteel', 2))
    .outputs(item('ezstorage:crafting_box'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Search Box
mods.minecraft.crafting.removeByOutput(item('ezstorage:search_box'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:search_box'))
    .shape([
        [mi('plateSteel'), ore('craftingToolWrench'), mi('plateSteel')],
        [item('minecraft:compass'), item('ezstorage:blank_box'), item('minecraft:compass')],
        [mi('plateSteel'), ore('craftingToolHardHammer'), mi('plateSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('ezstorage:search_box'))
    .shape([
        [mi('plateSteel'), ore('craftingToolHardHammer'), mi('plateSteel')],
        [item('minecraft:compass'), item('ezstorage:blank_box'), item('minecraft:compass')],
        [mi('plateSteel'), ore('craftingToolWrench'), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(item('minecraft:compass'), item('ezstorage:blank_box'), mi('plateSteel', 2))
    .outputs(item('ezstorage:search_box'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()
