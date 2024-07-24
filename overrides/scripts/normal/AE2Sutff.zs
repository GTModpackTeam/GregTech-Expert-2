# Imports
import mods.jei.JEI;



########################################
# Blocks
########################################
# Crystal Growth Chamber
JEI.removeAndHide(<ae2stuff:grower>);

# Advanced Inscriber
JEI.removeAndHide(<ae2stuff:inscriber>);

# Wireless Connector
recipes.remove(<ae2stuff:wireless>);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <appliedenergistics2:material:24> * 4,
        <gtexpert:meta_item_1:1> * 2,
        <appliedenergistics2:material:41>,
        <gregtech:machine_casing:6>
    ])
    .fluidInputs([<liquid:fluix_alloy> * 1152])
    .outputs([<ae2stuff:wireless>])
    .duration(20)
    .EUt(30720)
    .buildAndRegister();



########################################
# Items
########################################
# Network Visualisation Tool
recipes.remove(<ae2stuff:visualiser>);
recipes.addShaped(<ae2stuff:visualiser>, [
    [<metaitem:plateAluminium>, <appliedenergistics2:material:43>, <metaitem:plateAluminium>],
    [<appliedenergistics2:network_tool>, <metaitem:wireless>, <appliedenergistics2:entropy_manipulator>],
    [<metaitem:plateAluminium>, <appliedenergistics2:material:44>, <metaitem:plateAluminium>]
]);
