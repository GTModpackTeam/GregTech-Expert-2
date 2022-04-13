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
        <metaitem:stickRedAlloy> * 2,
        <metaitem:screwRedAlloy> * 2,
        <metaitem:dustIron>,
        <metaitem:board.coated>,
        <ore:circuitUlv>,
        <ore:batteryLv>
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
        <metaitem:stickRedAlloy> * 2,
        <metaitem:screwRedAlloy> * 2,
        <metaitem:dustGold>,
        <metaitem:board.coated>,
        <ore:circuitUlv>,
        <ore:batteryLv>
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
        <metaitem:stickRedAlloy> * 3,
        <metaitem:screwRedAlloy> * 3,
        <metaitem:dustObsidian>,
        <metaitem:board.coated> * 2,
        <ore:circuitUlv>,
        <ore:batteryLv>
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
        <metaitem:stickRedAlloy> * 2,
        <metaitem:screwRedAlloy> * 2,
        <enderio:item_material:20>,
        <metaitem:board.coated>,
        <ore:circuitUlv>,
        <ore:batteryLv>
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
        <metaitem:plateSteel> * 3,
        <metaitem:plateGold> * 2,
        <ore:circuitLv>,
        <gregtech:machine_casing:1>
    ])
    .outputs([<buildinggadgets:templatemanager>])
    .duration(100)
    .EUt(7)
    .buildAndRegister();
