////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Crystal Growth Chamber
mods.jei.ingredient.hide(item('ae2stuff:grower'))

// Advanced Inscriber
mods.jei.ingredient.hide(item('ae2stuff:inscriber'))

// Wireless Connector
def connectors = [
    item('ae2stuff:wireless', 1),
    item('ae2stuff:wireless', 2),
    item('ae2stuff:wireless', 3),
    item('ae2stuff:wireless', 4),
    item('ae2stuff:wireless', 5),
    item('ae2stuff:wireless', 6),
    item('ae2stuff:wireless', 7),
    item('ae2stuff:wireless', 8),
    item('ae2stuff:wireless', 9),
    item('ae2stuff:wireless', 10),
    item('ae2stuff:wireless', 11),
    item('ae2stuff:wireless', 12),
    item('ae2stuff:wireless', 13),
    item('ae2stuff:wireless', 14),
    item('ae2stuff:wireless', 15),
    item('ae2stuff:wireless', 16),
]
connectors.each { connector ->
    mods.minecraft.crafting.removeByOutput(connector)
    mods.minecraft.ore_dict.add('ae2stuffConnectors', connector)
}
mods.minecraft.ore_dict.add('ae2stuffConnectors', item('ae2stuff:wireless', 0))
mods.minecraft.crafting.remove(resource('ae2stuff:recipe1'))
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        item('appliedenergistics2:material', 24) * 4,
        item('gtexpert:meta_item_1', 1) * 2,
        item('appliedenergistics2:material', 41),
        item('gregtech:machine_casing', 4)
    )
    .fluidInputs(fluid('fluix_alloy') * 1152)
    .outputs(item('ae2stuff:wireless', 0))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()
connectors.eachWithIndex { connector, i ->
    chemicalBath.recipeBuilder()
        .inputs(ore('ae2stuffConnectors'))
        .fluidInputs(colorLiquid[i] * 18)
        .outputs(connector)
        .duration(20)
        .EUt(7)
        .buildAndRegister()
}

// Wireless Connector Hub
def hubs = [
    item('ae2stuff:wireless_hub', 1),
    item('ae2stuff:wireless_hub', 2),
    item('ae2stuff:wireless_hub', 3),
    item('ae2stuff:wireless_hub', 4),
    item('ae2stuff:wireless_hub', 5),
    item('ae2stuff:wireless_hub', 6),
    item('ae2stuff:wireless_hub', 7),
    item('ae2stuff:wireless_hub', 8),
    item('ae2stuff:wireless_hub', 9),
    item('ae2stuff:wireless_hub', 10),
    item('ae2stuff:wireless_hub', 11),
    item('ae2stuff:wireless_hub', 12),
    item('ae2stuff:wireless_hub', 13),
    item('ae2stuff:wireless_hub', 14),
    item('ae2stuff:wireless_hub', 15),
    item('ae2stuff:wireless_hub', 16),
]
hubs.each { hub ->
    mods.minecraft.crafting.removeByOutput(hub)
    mods.minecraft.ore_dict.add('ae2stuffConnectorHubs', hub)
}
mods.minecraft.ore_dict.add('ae2stuffConnectorHubs', item('ae2stuff:wireless_hub', 0))
mods.minecraft.crafting.remove(resource('ae2stuff:recipe2'))
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        ore('ae2stuffConnectors') * 8,
        metaitem('sensor.luv')
    )
    .outputs(item('ae2stuff:wireless_hub', 0))
    .duration(20)
    .EUt(7680)
    .buildAndRegister()
hubs.eachWithIndex { hub, i ->
    chemicalBath.recipeBuilder()
        .inputs(ore('ae2stuffConnectorHubs'))
        .fluidInputs(colorLiquid[i] * 18)
        .outputs(hub)
        .duration(20)
        .EUt(7)
        .buildAndRegister()
}

////////////////////////////////////////
// Items
////////////////////////////////////////
// Network Visualisation Tool
mods.minecraft.crafting.removeByOutput(item('ae2stuff:visualiser'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('ae2stuff:visualiser'))
    .shape([
        [metaitem('plateAluminium'), item('appliedenergistics2:material', 43), metaitem('plateAluminium')],
        [item('appliedenergistics2:network_tool'), metaitem('wireless'), item('appliedenergistics2:entropy_manipulator')],
        [metaitem('plateAluminium'), item('appliedenergistics2:material', 44), metaitem('plateAluminium')],
    ])
    .register()
