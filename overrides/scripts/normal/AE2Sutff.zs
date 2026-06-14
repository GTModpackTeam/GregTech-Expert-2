# Imports
import crafttweaker.item.IItemStack;
import mods.jei.JEI;



########################################
# Blocks
########################################
# Crystal Growth Chamber
JEI.removeAndHide(<ae2stuff:grower>);

# Advanced Inscriber
JEI.removeAndHide(<ae2stuff:inscriber>);

# Wireless Connector
val connectors as IItemStack[] = [
    <ae2stuff:wireless:1>,
    <ae2stuff:wireless:2>,
    <ae2stuff:wireless:3>,
    <ae2stuff:wireless:4>,
    <ae2stuff:wireless:5>,
    <ae2stuff:wireless:6>,
    <ae2stuff:wireless:7>,
    <ae2stuff:wireless:8>,
    <ae2stuff:wireless:9>,
    <ae2stuff:wireless:10>,
    <ae2stuff:wireless:11>,
    <ae2stuff:wireless:12>,
    <ae2stuff:wireless:13>,
    <ae2stuff:wireless:14>,
    <ae2stuff:wireless:15>,
    <ae2stuff:wireless:16>
];
for connector in connectors {
    recipes.remove(connector);
    <ore:ae2stuffConnectors>.addItems([connector]);
}
<ore:ae2stuffConnectors>.addItems([<ae2stuff:wireless:0>]);
recipes.removeByRecipeName("ae2stuff:recipe1");
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <appliedenergistics2:material:24> * 4,
        <gtexpert:meta_item_1:1> * 2,
        <appliedenergistics2:material:41>,
        <gregtech:machine_casing:4>
    ])
    .fluidInputs([<liquid:fluix_alloy> * 1152])
    .outputs([<ae2stuff:wireless:0>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();
for i, connector in connectors {
    chemical_bath.recipeBuilder()
        .inputs([<ore:ae2stuffConnectors>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs([connector])
        .duration(20)
        .EUt(7)
        .buildAndRegister();
}

# Wireless Connector Hub
val hubs as IItemStack[] = [
    <ae2stuff:wireless_hub:1>,
    <ae2stuff:wireless_hub:2>,
    <ae2stuff:wireless_hub:3>,
    <ae2stuff:wireless_hub:4>,
    <ae2stuff:wireless_hub:5>,
    <ae2stuff:wireless_hub:6>,
    <ae2stuff:wireless_hub:7>,
    <ae2stuff:wireless_hub:8>,
    <ae2stuff:wireless_hub:9>,
    <ae2stuff:wireless_hub:10>,
    <ae2stuff:wireless_hub:11>,
    <ae2stuff:wireless_hub:12>,
    <ae2stuff:wireless_hub:13>,
    <ae2stuff:wireless_hub:14>,
    <ae2stuff:wireless_hub:15>,
    <ae2stuff:wireless_hub:16>
];
for hub in hubs {
    recipes.remove(hub);
    <ore:ae2stuffConnectorHubs>.addItems([hub]);
}
<ore:ae2stuffConnectorHubs>.addItems([<ae2stuff:wireless_hub:0>]);
recipes.removeByRecipeName("ae2stuff:recipe2");
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:ae2stuffConnectors> * 8,
        <metaitem:sensor.luv>
    ])
    .outputs([<ae2stuff:wireless_hub:0>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();
for i, hub in hubs {
    chemical_bath.recipeBuilder()
        .inputs([<ore:ae2stuffConnectorHubs>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs([hub])
        .duration(20)
        .EUt(7)
        .buildAndRegister();
}



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
