package post.main

import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName('assembler')

////////////////////////////////////////
// Items
////////////////////////////////////////
// Blowtorch
mods.minecraft.crafting.removeByOutput(item('catwalks:blowtorch'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('catwalks:blowtorch'))
    .shape([
        [null, metaitem('screwSteel'), item('minecraft:flint_and_steel')],
        [ore('craftingToolScrewdriver'), metaitem('stickLongSteel'), metaitem('screwSteel')],
        [metaitem('stickLongSteel'), ore('craftingToolWrench'), null],
    ])
    .register()

////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Classic Catwalk
assembler.recipeBuilder()
    .circuitMeta(6)
    .inputs(
        metaitem('frameSteel'),
        metaitem('screwSteel') * 2,
        metaitem('stickLongSteel') * 4
    )
    .outputs(item('catwalks:catwalk').withNbt(['material' : 'classic']) * 4)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(7)
    .inputs(
        ore('frameGtDarkSteel'),
        metaitem('screwDarkSteel') * 2,
        metaitem('stickLongDarkSteel') * 4
    )
    .outputs(item('catwalks:catwalk').withNbt(['material' : 'classic']) * 16)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(6)
    .inputs(item('catwalks:catwalk').withNbt(['material' : 'classic']))
    .notConsumable(item('minecraft:record_cat'))
    .outputs(item('catwalks:catwalk').withNbt(['material' : 'nyanwalk']))
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Glass Catwalk
assembler.recipeBuilder()
    .circuitMeta(6)
    .inputs(
        metaitem('frameSteel'),
        metaitem('plateGlass') * 3,
        metaitem('stickLongSteel') * 4
    )
    .outputs(item('catwalks:catwalk').withNbt(['material' : 'glass']) * 4)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(7)
    .inputs(
        ore('frameGtDarkSteel'),
        metaitem('plateGlass') * 3,
        metaitem('stickLongDarkSteel') * 4
    )
    .outputs(item('catwalks:catwalk').withNbt(['material' : 'glass']) * 16)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Wood Catwalk
assembler.recipeBuilder()
    .circuitMeta(7)
    .inputs(
        metaitem('frameTreatedWood'),
        metaitem('plateTreatedWood') * 3,
        metaitem('stickLongSteel') * 4
    )
    .outputs(item('catwalks:catwalk').withNbt(['material' : 'treated_wood']) * 4)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(8)
    .inputs(
        metaitem('frameTreatedWood'),
        metaitem('plateTreatedWood') * 3,
        metaitem('stickLongDarkSteel') * 4
    )
    .outputs(item('catwalks:catwalk').withNbt(['material' : 'treated_wood']) * 16)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('catwalks:catwalk').withNbt(['material' : 'treated_wood']))
    .input(item('catwalks:catwalk').withNbt(['material' : 'custom_0']))
    .register()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('catwalks:catwalk').withNbt(['material' : 'custom_0']))
    .input(item('catwalks:catwalk').withNbt(['material' : 'treated_wood']))
    .register()

// Classic Ladder
mods.minecraft.crafting.removeByOutput(item('catwalks:ladder'))
assembler.recipeBuilder()
    .circuitMeta(6)
    .inputs(
        item('minecraft:ladder'),
        metaitem('stickLongSteel') * 4
    )
    .outputs(item('catwalks:ladder') * 6)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(7)
    .inputs(
        item('enderio:block_dark_steel_ladder'),
        metaitem('stickLongDarkSteel') * 4
    )
    .outputs(item('catwalks:ladder') * 32)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Classic Support Cables
mods.minecraft.crafting.removeByOutput(item('catwalks:cable'))
assembler.recipeBuilder()
    .circuitMeta(8)
    .inputs(metaitem('stickLongSteel') * 3)
    .outputs(item('catwalks:cable') * 6)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(9)
    .inputs(metaitem('stickLongDarkSteel') * 3)
    .outputs(item('catwalks:cable') * 32)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
