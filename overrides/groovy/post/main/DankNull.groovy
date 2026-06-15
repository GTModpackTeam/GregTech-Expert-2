package post.main

import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName('assembler')

////////////////////////////////////////
// Items
////////////////////////////////////////
// Panels
mods.minecraft.crafting.removeByOutput(item('danknull:dank_null_panel_0'))
mods.jei.ingredient.hide(item('danknull:dank_null_panel_0'))
mods.minecraft.crafting.removeByOutput(item('danknull:dank_null_panel_1'))
mods.jei.ingredient.hide(item('danknull:dank_null_panel_1'))
mods.minecraft.crafting.removeByOutput(item('danknull:dank_null_panel_2'))
mods.jei.ingredient.hide(item('danknull:dank_null_panel_2'))
mods.minecraft.crafting.removeByOutput(item('danknull:dank_null_panel_3'))
mods.jei.ingredient.hide(item('danknull:dank_null_panel_3'))
mods.minecraft.crafting.removeByOutput(item('danknull:dank_null_panel_4'))
mods.jei.ingredient.hide(item('danknull:dank_null_panel_4'))
mods.minecraft.crafting.removeByOutput(item('danknull:dank_null_panel_5'))
mods.jei.ingredient.hide(item('danknull:dank_null_panel_5'))

////////////////////////////////////////
// Blocks
////////////////////////////////////////
// null Mk1
mods.minecraft.crafting.removeByOutput(item('danknull:dank_null_0'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('danknull:dank_null_0'))
    .input(item('danknull:dank_null_0'))
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('danknull:dank_null_0'))
    .shape([
        [item('minecraft:dye', 1), ore('blockObsidian'), item('minecraft:dye', 1)],
        [ore('blockObsidian'), null, ore('blockObsidian')],
        [item('minecraft:dye', 1), ore('blockObsidian'), item('minecraft:dye', 1)],
    ])
    .register()

// null mk2
mods.minecraft.crafting.removeByOutput(item('danknull:dank_null_1'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('danknull:dank_null_1'))
    .input(item('danknull:dank_null_1'))
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('plateLapis') * 4,
        item('danknull:dank_null_0')
    )
    .fluidInputs(fluid('glass') * 144)
    .outputs(item('danknull:dank_null_1'))
    .duration(200)
    .EUt(16)
    .buildAndRegister()

// null mk3
mods.minecraft.crafting.removeByOutput(item('danknull:dank_null_2'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('danknull:dank_null_2'))
    .input(item('danknull:dank_null_2'))
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('plateTinAlloy') * 4,
        item('danknull:dank_null_1')
    )
    .fluidInputs(fluid('glass') * 144)
    .outputs(item('danknull:dank_null_2'))
    .duration(200)
    .EUt(64)
    .buildAndRegister()

// null mk4
mods.minecraft.crafting.removeByOutput(item('danknull:dank_null_3'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('danknull:dank_null_3'))
    .input(item('danknull:dank_null_3'))
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('plateRoseGold') * 4,
        item('danknull:dank_null_2')
    )
    .fluidInputs(fluid('glass') * 144)
    .outputs(item('danknull:dank_null_3'))
    .duration(200)
    .EUt(256)
    .buildAndRegister()

// null mk5
mods.minecraft.crafting.removeByOutput(item('danknull:dank_null_4'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('danknull:dank_null_4'))
    .input(item('danknull:dank_null_4'))
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('plateDiamond') * 4,
        item('danknull:dank_null_3')
    )
    .fluidInputs(fluid('glass') * 144)
    .outputs(item('danknull:dank_null_4'))
    .duration(200)
    .EUt(1920)
    .buildAndRegister()

// null mk6
mods.minecraft.crafting.removeByOutput(item('danknull:dank_null_5'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('danknull:dank_null_5'))
    .input(item('danknull:dank_null_5'))
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('plateEmerald') * 4,
        item('danknull:dank_null_4')
    )
    .fluidInputs(fluid('glass') * 144)
    .outputs(item('danknull:dank_null_5'))
    .duration(200)
    .EUt(7680)
    .buildAndRegister()

// Creative
mods.jei.ingredient.hide(item('danknull:dank_null_6'))
