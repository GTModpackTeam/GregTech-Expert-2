////////////////////////////////////////
// Items
////////////////////////////////////////
// Tool Belt
mods.minecraft.crafting.removeByOutput(item('toolbelt:belt'))
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(item('toolbelt:pouch') * 2, item('minecraft:string') * 2, item('minecraft:leather') * 5)
    .fluidInputs(fluid('glue') * 50)
    .outputs(item('toolbelt:belt'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Belt Pouch
mods.minecraft.crafting.removeByOutput(item('toolbelt:pouch'))
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(metaitem('screwIronMagnetic'), metaitem('ringIron'), item('minecraft:string') * 4, item('minecraft:leather') * 3)
    .fluidInputs(fluid('glue') * 100)
    .outputs(item('toolbelt:pouch'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()
