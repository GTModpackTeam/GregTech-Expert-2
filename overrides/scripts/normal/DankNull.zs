#packmode normal
# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Panels
JEI.removeAndHide(<danknull:dank_null_panel_0>);
JEI.removeAndHide(<danknull:dank_null_panel_1>);
JEI.removeAndHide(<danknull:dank_null_panel_2>);
JEI.removeAndHide(<danknull:dank_null_panel_3>);
JEI.removeAndHide(<danknull:dank_null_panel_4>);
JEI.removeAndHide(<danknull:dank_null_panel_5>);



########################################
# Blocks
########################################
# null Mk1
recipes.remove(<danknull:dank_null_0>);
recipes.addShapeless(<danknull:dank_null_0>, [<danknull:dank_null_0>.withEmptyTag()]);
recipes.addShaped(<danknull:dank_null_0>, [
    [<minecraft:dye:1>, <ore:blockObsidian>, <minecraft:dye:1>],
    [<ore:blockObsidian>, null, <ore:blockObsidian>],
    [<minecraft:dye:1>, <ore:blockObsidian>, <minecraft:dye:1>]
]);

# null mk2
recipes.remove(<danknull:dank_null_1>);
recipes.addShapeless(<danknull:dank_null_1>, [<danknull:dank_null_1>.withEmptyTag()]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:plateLapis> * 4,
        <danknull:dank_null_0>
    ])
    .fluidInputs([<liquid:glass> * 144])
    .outputs([<danknull:dank_null_1>])
    .duration(200)
    .EUt(16)
    .buildAndRegister();

# null mk3
recipes.remove(<danknull:dank_null_2>);
recipes.addShapeless(<danknull:dank_null_2>, [<danknull:dank_null_2>.withEmptyTag()]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:plateTinAlloy> * 4,
        <danknull:dank_null_1>
    ])
    .fluidInputs([<liquid:glass> * 144])
    .outputs([<danknull:dank_null_2>])
    .duration(200)
    .EUt(64)
    .buildAndRegister();

# null mk4
recipes.remove(<danknull:dank_null_3>);
recipes.addShapeless(<danknull:dank_null_3>, [<danknull:dank_null_3>.withEmptyTag()]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:plateRoseGold> * 4,
        <danknull:dank_null_2>
    ])
    .fluidInputs([<liquid:glass> * 144])
    .outputs([<danknull:dank_null_3>])
    .duration(200)
    .EUt(256)
    .buildAndRegister();

# null mk5
recipes.remove(<danknull:dank_null_4>);
recipes.addShapeless(<danknull:dank_null_4>, [<danknull:dank_null_4>.withEmptyTag()]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:plateDiamond> * 4,
        <danknull:dank_null_3>
    ])
    .fluidInputs([<liquid:glass> * 144])
    .outputs([<danknull:dank_null_4>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();

# null mk6
recipes.remove(<danknull:dank_null_5>);
recipes.addShapeless(<danknull:dank_null_5>, [<danknull:dank_null_5>.withEmptyTag()]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:plateEmerald> * 4,
        <danknull:dank_null_4>
    ])
    .fluidInputs([<liquid:glass> * 144])
    .outputs([<danknull:dank_null_5>])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();

# Creative
JEI.removeAndHide(<danknull:dank_null_6>);
