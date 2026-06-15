package post.main

if (!isLoaded('fluxnetworks')) return

import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName('assembler')

////////////////////////////////////////
// Items
////////////////////////////////////////
// Flux
mods.jei.ingredient.hide(item('fluxnetworks:flux'))

// Flux Core
mods.jei.ingredient.hide(item('fluxnetworks:fluxcore'))

// Flux Configurator
mods.minecraft.crafting.removeByOutput(item('fluxnetworks:fluxconfigurator'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('fluxnetworks:fluxconfigurator'))
    .shape([
        [null, item('appliedenergistics2:material', 45), metaitem('quantumeye')],
        [null, metaitem('stickDarkSteel'), item('appliedenergistics2:material', 45)],
        [metaitem('stickDarkSteel'), null, null],
    ])
    .register()

////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Flux Block
mods.jei.ingredient.hide(item('fluxnetworks:fluxblock'))

// Flux Plug
mods.minecraft.crafting.removeByOutput(item('fluxnetworks:fluxplug'))
assembler.recipeBuilder()
    .circuitMeta(4)
    .inputs(
        metaitem('emitter.ev') * 2,
        metaitem('sensor.ev') * 2,
        metaitem('cover.digital.wireless'),
        item('appliedenergistics2:smooth_sky_stone_block')
    )
    .outputs(item('fluxnetworks:fluxplug'))
    .duration(200)
    .EUt(30720)
    .buildAndRegister()

// Flux Point
mods.minecraft.crafting.removeByOutput(item('fluxnetworks:fluxpoint'))
assembler.recipeBuilder()
    .circuitMeta(6)
    .inputs(
        metaitem('emitter.ev') * 2,
        metaitem('sensor.ev') * 2,
        metaitem('cover.digital.wireless'),
        item('appliedenergistics2:smooth_sky_stone_block')
    )
    .outputs(item('fluxnetworks:fluxpoint'))
    .duration(200)
    .EUt(30720)
    .buildAndRegister()

// Flux Controller
mods.minecraft.crafting.removeByOutput(item('fluxnetworks:fluxcontroller'))
assembler.recipeBuilder()
    .circuitMeta(8)
    .inputs(
        metaitem('emitter.ev') * 2,
        metaitem('sensor.ev') * 2,
        metaitem('cover.digital.wireless') * 4,
        item('gregtech:transparent_casing', 2) * 4,
        item('appliedenergistics2:smooth_sky_stone_block')
    )
    .outputs(item('fluxnetworks:fluxcontroller'))
    .duration(200)
    .EUt(30720)
    .buildAndRegister()

// Flux Storage
mods.jei.ingredient.hide(item('fluxnetworks:fluxstorage'))

// Herculean Flux Storage
mods.jei.ingredient.hide(item('fluxnetworks:herculeanfluxstorage'))

// Gargantuan Flux Storage
mods.jei.ingredient.hide(item('fluxnetworks:gargantuanfluxstorage'))
