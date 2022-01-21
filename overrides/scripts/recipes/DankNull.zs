# Imoprts
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
recipes.addShaped(<danknull:dank_null_0>, [
    [<minecraft:dye:1>, <ore:blockCoal>, <minecraft:dye:1>],
    [<ore:blockCoal>, null, <ore:blockCoal>],
    [<minecraft:dye:1>, <ore:blockCoal>, <minecraft:dye:1>]
]);

# null mk2
recipes.remove(<danknull:dank_null_1>);
assembler.recipeBuilder().
    inputs([
        <ore:plateLapis> * 4,
        <danknull:dank_null_0>
    ]).
    fluidInputs([<liquid:glass> * 144]).
    circuit(0).
    outputs([<danknull:dank_null_1>]).
    duration(200).
    EUt(16).
    buildAndRegister();

# null mk3
recipes.remove(<danknull:dank_null_2>);
assembler.recipeBuilder().
    inputs([
        <ore:plateTinAlloy> * 4,
        <danknull:dank_null_1>
    ]).
    fluidInputs([<liquid:glass> * 144]).
    circuit(0).
    outputs([<danknull:dank_null_2>]).
    duration(200).
    EUt(64).
    buildAndRegister();

# null mk4
recipes.remove(<danknull:dank_null_3>);
assembler.recipeBuilder().
    inputs([
        <ore:plateRoseGold> * 4,
        <danknull:dank_null_2>
    ]).
    fluidInputs([<liquid:glass> * 144]).
    circuit(0).
    outputs([<danknull:dank_null_3>]).
    duration(200).
    EUt(256).
    buildAndRegister();

# null mk5
recipes.remove(<danknull:dank_null_4>);
assembler.recipeBuilder().
    inputs([
        <ore:plateDiamond> * 4,
        <danknull:dank_null_3>
    ]).
    fluidInputs([<liquid:glass> * 144]).
    circuit(0).
    outputs([<danknull:dank_null_4>]).
    duration(200).
    EUt(1024).
    buildAndRegister();

# null mk6
JEI.removeAndHide(<danknull:dank_null_5>);
