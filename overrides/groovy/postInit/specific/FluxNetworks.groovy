


if (isLoaded('fluxnetworks')) {
    /*
    * ########################################
    * Items
    * ########################################
    */

    // Flux
    mods.jei.removeAndHide(item('fluxnetworks:flux'))

    // Flux Core
    mods.jei.removeAndHide(item('fluxnetworks:fluxcore'))    

    // Flux Configurator
    crafting.removeByOutput(item('fluxnetworks:fluxconfigurator'))
    crafting.addShaped('flux_configurator', item('fluxnetworks:fluxconfigurator'), [
        [null, item('appliedenergistics2:material', 45), metaitem('quantumeye')],
        [null, metaitem('stickDarkSteel'), item('appliedenergistics2:material', 45)],
        [metaitem('stickDarkSteel'), null, null]
    ])


    /*
    * ########################################
    * Blocks
    * ########################################
    */

    // Flux Block
    mods.jei.removeAndHide(item('fluxnetworks:fluxblock'))

    // Flux Plug
    crafting.removeByOutput(item('fluxnetworks:fluxplug'))
    mods.gregtech.assembler.recipeBuilder()
        .circuitMeta(2)
        .inputs([
            metaitem('emitter.ev') * 2,
            metaitem('sensor.ev') * 2,
            metaitem('cover.digital.wireless'),
            item('appliedenergistics2:smooth_sky_stone_block')
        ])
        .outputs([item('fluxnetworks:fluxplug')])
        .duration(2000)
        .EUt(1920)
        .buildAndRegister()
    
    // Flux Point
    crafting.removeByOutput(item('fluxnetworks:fluxpoint'))
    mods.gregtech.assembler.recipeBuilder()
        .circuitMeta(6)
        .inputs([
            metaitem('emitter.ev') * 2,
            metaitem('sensor.ev') * 2,
            metaitem('cover.digital.wireless'),
            item('appliedenergistics2:smooth_sky_stone_block')
        ])
        .outputs([item('fluxnetworks:fluxpoint')])
        .duration(2000)
        .EUt(1920)
        .buildAndRegister()

    // Flux Controller
    crafting.removeByOutput(item('fluxnetworks:fluxcontroller'))
    mods.gregtech.assembler.recipeBuilder()
        .circuitMeta(8)
        .inputs([
            metaitem('emitter.ev') * 2,
            metaitem('sensor.ev') * 2,
            metaitem('cover.digital.wireless') * 4,
            item('gregtech:transparent_casing:2') * 4,
            item('appliedenergistics2:smooth_sky_stone_block')
        ])
        .outputs([item('fluxnetworks:fluxcontroller')])
        .duration(2000)
        .EUt(1920)
        .buildAndRegister()
    
    // Flux Storage
    mods.jei.removeAndHide(item('fluxnetworks:fluxstorage'))

    // Herculean Flux Storage
    mods.jei.removeAndHide(item('fluxnetworks:herculeanfluxstorage'))

    // Gargantuan Flux Storage
    mods.jei.removeAndHide(item('fluxnetworks:gargantuanfluxstorage'))
}
