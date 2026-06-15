package post.main

import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName('assembler')

////////////////////////////////////////
// Items
////////////////////////////////////////
// Building Gadget
mods.minecraft.crafting.removeByOutput(item('buildinggadgets:buildingtool'))
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('stickRedAlloy') * 2,
        metaitem('screwRedAlloy') * 2,
        metaitem('dustIron'),
        metaitem('circuit_board.basic'),
        ore('circuitUlv'),
        metaitem('battery.re.lv.sodium')
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
        metaitem('stickRedAlloy') * 2,
        metaitem('screwRedAlloy') * 2,
        metaitem('dustGold'),
        metaitem('circuit_board.basic'),
        ore('circuitUlv'),
        metaitem('battery.re.lv.sodium')
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
        metaitem('stickRedAlloy') * 3,
        metaitem('screwRedAlloy') * 3,
        metaitem('dustObsidian'),
        metaitem('circuit_board.basic') * 2,
        ore('circuitUlv'),
        metaitem('battery.re.lv.sodium')
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
        metaitem('stickRedAlloy') * 2,
        metaitem('screwRedAlloy') * 2,
        item('enderio:item_material', 20),
        metaitem('circuit_board.basic'),
        ore('circuitUlv'),
        metaitem('battery.re.lv.sodium')
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
        metaitem('plateSteel') * 3,
        metaitem('plateGold') * 2,
        ore('circuitLv'),
        item('gregtech:machine_casing', 1)
    )
    .outputs(item('buildinggadgets:templatemanager'))
    .duration(100)
    .EUt(7)
    .buildAndRegister()
