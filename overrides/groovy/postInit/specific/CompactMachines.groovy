


if (isLoaded('compactmachines3')) {
    /* 
    * ########################################
    * Items
    * ########################################
    */

    // Personal Shrinking Device
    crafting.removeByOutput(item('compactmachines3:psd'))
    crafting.addShaped('personal_shrinking_device', item('compactmachines3:psd'), [
        [null, metaitem('cover.screen'), null],
        [metaitem('emitter.mv'), item('minecraft:book'), metaitem('emitter.mv')],
        [null, ore('circuitMv'), null]
    ])

    // Tunnel
    mods.gregtech.assembler.recipeBuilder()
        .inputs([
            metaitem('cover.energy.detector'),
            metaitem('cover.item.detector'),
            metaitem('cover.fluid.detector')
        ])
        .outputs([item('compactmachines3:tunneltool') * 4])
        .duration(100)
        .EUt(120)
        .buildAndRegister()  

    // Redstone Tunnel
    mods.gregtech.assembler.recipeBuilder()
        .inputs([
            metaitem('cover.activity.detector'),
            metaitem('component.resistor')
        ])
        .outputs([item('compactmachines3:redstonetunneltool') * 4])
        .duration(100)
        .EUt(120)
        .buildAndRegister()

    /*
    * ########################################
    * Blocks
    * ########################################
    */

    // Compact Machine Wall
    crafting.addShaped('compact_machine_wall', item('compactmachines3:wallbreakable') * 8, [
        [metaitem('frameSteel'), metaitem('frameSteel'), metaitem('frameSteel')],
        [metaitem('frameSteel'), metaitem('sensor.mv'), metaitem('frameSteel')],
        [metaitem('frameSteel'), metaitem('frameSteel'), metaitem('frameSteel')]
    ])

    // Tiny Compact Machine
    mods.gregtech.assembler.recipeBuilder()
        .inputs([
            item('compactmachines3:wallbreakable') * 8,
            metaitem('field.generator.mv')
        ])
        .outputs([item('compactmachines3:machine')])
        .duration(200)
        .EUt(120)
        .buildAndRegister()

    // Small Compact Machine
    mods.gregtech.assembler.recipeBuilder()
        .inputs([
            item('compactmachines3:wallbreakable') * 16,
            metaitem('field.generator.hv')
        ])
        .outputs([item('compactmachines3:machine', 1)])
        .duration(200)
        .EUt(480)
        .buildAndRegister()

    // Normal Compact Machine
    mods.gregtech.assembler.recipeBuilder()
        .inputs([
            item('compactmachines3:wallbreakable') * 24,
            metaitem('field.generator.ev')
        ])
        .outputs([item('compactmachines3:machine', 2)])
        .duration(200)
        .EUt(1920)
        .buildAndRegister()
    
    // Large Compact Machine
    mods.gregtech.assembler.recipeBuilder()
        .inputs([
            item('compactmachines3:wallbreakable') * 32,
            metaitem('field.generator.iv')
        ])
        .outputs([item('compactmachines3:machine', 3)])
        .duration(200)
        .EUt(7680)
        .buildAndRegister()
    
    // Giant Compact Machine
    mods.gregtech.assembler.recipeBuilder()
        .inputs([
            item('compactmachines3:wallbreakable') * 40,
            metaitem('field.generator.luv')
        ])
        .outputs([item('compactmachines3:machine', 4)])
        .duration(200)
        .EUt(30720)
        .buildAndRegister()
    
    // Maximum Compact Machine
    mods.gregtech.assembler.recipeBuilder()
        .inputs([
            item('compactmachines3:wallbreakable') * 48,
            metaitem('field.generator.zpm')
        ])
        .outputs([item('compactmachines3:machine', 5)])
        .duration(200)
        .EUt(122880)
        .buildAndRegister()
    
}
