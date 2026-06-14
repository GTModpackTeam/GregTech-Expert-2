import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName("assembler")

////////////////////////////////////////
// Items
////////////////////////////////////////
// Building Gadget
mods.minecraft.crafting.removeByOutput(item('buildinggadgets:buildingtool'))
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        mi('stickRedAlloy', 2),
        mi('screwRedAlloy', 2),
        mi('dustIron'),
        mi('circuit_board.basic'),
        ore('circuitUlv'),
        mi('battery.re.lv.sodium')
    )
    .outputs(item('buildinggadgets:buildingtool'))
    .duration(100)
    .EUt(7)
    .buildAndRegister()

// Copy-Paste Gadget
mods.minecraft.crafting.removeByOutput(item('buildinggadgets:copypastetool'))
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        mi('stickRedAlloy', 2),
        mi('screwRedAlloy', 2),
        mi('dustGold'),
        mi('circuit_board.basic'),
        ore('circuitUlv'),
        mi('battery.re.lv.sodium')
    )
    .outputs(item('buildinggadgets:copypastetool'))
    .duration(100)
    .EUt(7)
    .buildAndRegister()

// Exchanging Gadget
mods.minecraft.crafting.removeByOutput(item('buildinggadgets:exchangertool'))
assembler.recipeBuilder()
    .circuitMeta(3)
    .inputs(
        mi('stickRedAlloy', 3),
        mi('screwRedAlloy', 3),
        mi('dustObsidian'),
        mi('circuit_board.basic', 2),
        ore('circuitUlv'),
        mi('battery.re.lv.sodium')
    )
    .outputs(item('buildinggadgets:exchangertool'))
    .duration(100)
    .EUt(7)
    .buildAndRegister()

// Destruction Gadget
mods.minecraft.crafting.removeByOutput(item('buildinggadgets:destructiontool'))
assembler.recipeBuilder()
    .circuitMeta(4)
    .inputs(
        mi('stickRedAlloy', 2),
        mi('screwRedAlloy', 2),
        item('enderio:item_material', 20),
        mi('circuit_board.basic'),
        ore('circuitUlv'),
        mi('battery.re.lv.sodium')
    )
    .outputs(item('buildinggadgets:destructiontool'))
    .duration(100)
    .EUt(7)
    .buildAndRegister()



////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Template Manager
mods.minecraft.crafting.removeByOutput(item('buildinggadgets:templatemanager'))
assembler.recipeBuilder()
    .circuitMeta(4)
    .inputs(
        mi('plateSteel', 3),
        mi('plateGold', 2),
        ore('circuitLv'),
        item('gregtech:machine_casing', 1)
    )
    .outputs(item('buildinggadgets:templatemanager'))
    .duration(100)
    .EUt(7)
    .buildAndRegister()
