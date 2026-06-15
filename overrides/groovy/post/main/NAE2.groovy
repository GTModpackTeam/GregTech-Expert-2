package post.main

import gregtech.api.recipes.RecipeMap

def packer = RecipeMap.getByName('packer')

////////////////////////////////////////
// Items
////////////////////////////////////////
// ME Storage Component
mods.minecraft.crafting.removeByOutput(item('nae2:material', 1))
mods.jei.ingredient.hide(item('nae2:material', 1))
mods.minecraft.crafting.removeByOutput(item('nae2:material', 2))
mods.jei.ingredient.hide(item('nae2:material', 2))
mods.minecraft.crafting.removeByOutput(item('nae2:material', 3))
mods.jei.ingredient.hide(item('nae2:material', 3))
mods.minecraft.crafting.removeByOutput(item('nae2:material', 4))
mods.jei.ingredient.hide(item('nae2:material', 4))
mods.minecraft.crafting.removeByOutput(item('nae2:material', 5))
mods.jei.ingredient.hide(item('nae2:material', 5))
mods.minecraft.crafting.removeByOutput(item('nae2:material', 6))
mods.jei.ingredient.hide(item('nae2:material', 6))
mods.minecraft.crafting.removeByOutput(item('nae2:material', 7))
mods.jei.ingredient.hide(item('nae2:material', 7))
mods.minecraft.crafting.removeByOutput(item('nae2:material', 8))
mods.jei.ingredient.hide(item('nae2:material', 8))

// ME Storage Cell
mods.minecraft.crafting.removeByOutput(item('nae2:storage_cell_256k'))
mods.jei.ingredient.hide(item('nae2:storage_cell_256k'))
mods.minecraft.crafting.removeByOutput(item('nae2:storage_cell_1024k'))
mods.jei.ingredient.hide(item('nae2:storage_cell_1024k'))
mods.minecraft.crafting.removeByOutput(item('nae2:storage_cell_4096k'))
mods.jei.ingredient.hide(item('nae2:storage_cell_4096k'))
mods.minecraft.crafting.removeByOutput(item('nae2:storage_cell_16384k'))
mods.jei.ingredient.hide(item('nae2:storage_cell_16384k'))
mods.minecraft.crafting.removeByOutput(item('nae2:storage_cell_fluid_256k'))
mods.jei.ingredient.hide(item('nae2:storage_cell_fluid_256k'))
mods.minecraft.crafting.removeByOutput(item('nae2:storage_cell_fluid_1024k'))
mods.jei.ingredient.hide(item('nae2:storage_cell_fluid_1024k'))
mods.minecraft.crafting.removeByOutput(item('nae2:storage_cell_fluid_4096k'))
mods.jei.ingredient.hide(item('nae2:storage_cell_fluid_4096k'))
mods.minecraft.crafting.removeByOutput(item('nae2:storage_cell_fluid_16384k'))
mods.jei.ingredient.hide(item('nae2:storage_cell_fluid_16384k'))

// ME Beam Former
mods.minecraft.crafting.removeByOutput(item('nae2:part'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('nae2:part'))
    .shape([
        [null, item('appliedenergistics2:material', 41), null],
        [
            item('appliedenergistics2:quartz_glass'),
            item('appliedenergistics2:material', 24),
            item('appliedenergistics2:quartz_glass'),
        ],
        [null, ore('craftGlassCable'), null],
    ])
    .register()

// ME Void Storage Component
mods.minecraft.crafting.removeByOutput(item('nae2:material'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('nae2:material'))
    .shape([
        [null, item('appliedenergistics2:material', 47), null],
        [
            item('appliedenergistics2:material', 44),
            item('appliedenergistics2:material', 32),
            item('appliedenergistics2:material', 44),
        ],
        [null, item('appliedenergistics2:material', 47), null],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('nae2:material'))
    .shape([
        [null, item('appliedenergistics2:material', 44), null],
        [
            item('appliedenergistics2:material', 47),
            item('appliedenergistics2:material', 32),
            item('appliedenergistics2:material', 47),
        ],
        [null, item('appliedenergistics2:material', 44), null],
    ])
    .register()

// ME Void Storage Cell
mods.minecraft.crafting.removeByOutput(item('nae2:storage_cell_void'))
packer.recipeBuilder()
    .inputs(
        item('nae2:material'),
        item('appliedenergistics2:material', 39)
    )
    .outputs(item('nae2:storage_cell_void'))
    .duration(10)
    .EUt(7)
    .buildAndRegister()
packer.recipeBuilder()
    .inputs(item('nae2:storage_cell_void'))
    .outputs(
        item('nae2:material'),
        item('appliedenergistics2:material', 39)
    )
    .duration(10)
    .EUt(7)
    .buildAndRegister()

// ME Void Fluid Storage Cell
mods.minecraft.crafting.removeByOutput(item('nae2:fluid_storage_cell_void'))
packer.recipeBuilder()
    .inputs(
        item('nae2:material'),
        item('aeadditions:storage.casing', 1)
    )
    .outputs(item('nae2:fluid_storage_cell_void'))
    .duration(10)
    .EUt(7)
    .buildAndRegister()
packer.recipeBuilder()
    .inputs(item('nae2:fluid_storage_cell_void'))
    .outputs(
        item('nae2:material'),
        item('aeadditions:storage.casing', 1)
    )
    .duration(10)
    .EUt(7)
    .buildAndRegister()

// Programmed Circuit Card
mods.minecraft.crafting.removeByOutput(item('nae2:upgrade', 2))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('nae2:upgrade', 2))
    .input(item('appliedenergistics2:material', 53), ore('circuitHv'))
    .register()

////////////////////////////////////////
// Blocks
////////////////////////////////////////
// ME Storage Exposer
mods.minecraft.crafting.removeByOutput(item('nae2:exposer'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('nae2:exposer'))
    .shape([
        [metaitem('plateTitanium'), item('appliedenergistics2:part', 463), metaitem('plateTitanium')],
        [
            item('appliedenergistics2:material', 43),
            item('appliedenergistics2:material', 47),
            item('appliedenergistics2:material', 44),
        ],
        [metaitem('plateTitanium'), item('appliedenergistics2:part', 462), metaitem('plateTitanium')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('nae2:exposer'))
    .shape([
        [metaitem('plateTitanium'), item('appliedenergistics2:part', 220), metaitem('plateTitanium')],
        [
            item('appliedenergistics2:material', 43),
            item('appliedenergistics2:material', 47),
            item('appliedenergistics2:material', 44),
        ],
        [metaitem('plateTitanium'), item('appliedenergistics2:part', 221), metaitem('plateTitanium')],
    ])
    .register()
