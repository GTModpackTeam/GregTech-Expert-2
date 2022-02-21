#packmode normal
# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Building Gadget
recipes.remove(<buildinggadgets:buildingtool>);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:stickRedAlloy> * 2,
        <ore:screwRedAlloy> * 2,
        <ore:dustIron>,
        <metaitem:board.coated>,
        <ore:circuitPrimitive>,
        <ore:batteryBasic>
    ])
    .outputs([<buildinggadgets:buildingtool>])
    .duration(100)
    .EUt(7)
    .buildAndRegister();

# Copy-Paste Gadget
recipes.remove(<buildinggadgets:copypastetool>);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:stickRedAlloy> * 2,
        <ore:screwRedAlloy> * 2,
        <ore:dustGold>,
        <metaitem:board.coated>,
        <ore:circuitPrimitive>,
        <ore:batteryBasic>
    ])
    .outputs([<buildinggadgets:copypastetool>])
    .duration(100)
    .EUt(7)
    .buildAndRegister();

# Exchanging Gadget
recipes.remove(<buildinggadgets:exchangertool>);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <ore:stickRedAlloy> * 3,
        <ore:screwRedAlloy> * 3,
        <ore:dustObsidian>,
        <metaitem:board.coated> * 2,
        <ore:circuitPrimitive>,
        <ore:batteryBasic>
    ])
    .outputs([<buildinggadgets:exchangertool>])
    .duration(100)
    .EUt(7)
    .buildAndRegister();

# Destruction Gadget
recipes.remove(<buildinggadgets:destructiontool>);
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <ore:stickRedAlloy> * 2,
        <ore:screwRedAlloy> * 2,
        <ore:dustBedrock>,
        <metaitem:board.coated>,
        <ore:circuitPrimitive>,
        <ore:batteryBasic>
    ])
    .outputs([<buildinggadgets:destructiontool>])
    .duration(100)
    .EUt(7)
    .buildAndRegister();



########################################
# Blocks
########################################
# Template Manager
recipes.remove(<buildinggadgets:templatemanager>);
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <ore:plateSteel> * 3,
        <ore:plateGold> * 2,
        <ore:circuitBasic>,
        <gregtech:machine_casing:1>
    ])
    .outputs([<buildinggadgets:templatemanager>])
    .duration(100)
    .EUt(7)
    .buildAndRegister();
