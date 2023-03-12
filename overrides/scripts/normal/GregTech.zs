# Imports
import mods.jei.JEI;
import mods.zenutils.I18n;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;



########################################
# Items
########################################
# Tiny Pile of Ashes (Bookshelf Override)
arc_furnace.findRecipe(30, [<minecraft:bookshelf:0>], [<liquid:oxygen> * 21]).remove();
arc_furnace.recipeBuilder()
    .inputs([<ore:bookshelf>])
    .fluidInputs([<liquid:oxygen> * 21])
    .outputs([<metaitem:dustTinyAsh> * 16])
    .duration(1)
    .EUt(30)
    .buildAndRegister();

# Chad & Wood Pulp (Bookshelf Override)
macerator.findRecipe(2, [<minecraft:bookshelf:0>], null).remove();
macerator.recipeBuilder()
    .inputs([<ore:bookshelf>])
    .outputs([
        <metaitem:dustPaper> * 9,
        <metaitem:dustWood> * 6
    ])
    .duration(196)
    .EUt(2)
    .buildAndRegister();

# Red Alloy Dust
recipes.addShaped(<metaitem:dustRedAlloy>, [
    [null, <metaitem:ingotRedAlloy>, null],
    [null, <ore:craftingToolMortar>, null],
    [null, null, null]
]);

# Stone Rod
recipes.addShaped(<metaitem:stickStone>, [
    [<ore:craftingToolFile>, null, null],
    [null, <minecraft:stone>, null],
    [null, null, null]
]);
lathe.recipeBuilder()
    .inputs([<minecraft:stone>])
    .outputs([
        <metaitem:stickStone>,
        <metaitem:dustSmallStone> * 2
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Wrought Iron Nugget
recipes.addShapeless(<metaitem:nuggetWroughtIron> * 9, [<metaitem:ingotWroughtIron>]);

# Wrought Iron Ingot
recipes.addShaped(<metaitem:ingotWroughtIron>, [
    [<metaitem:nuggetWroughtIron>, <metaitem:nuggetWroughtIron>, <metaitem:nuggetWroughtIron>],
    [<metaitem:nuggetWroughtIron>, <metaitem:nuggetWroughtIron>, <metaitem:nuggetWroughtIron>],
    [<metaitem:nuggetWroughtIron>, <metaitem:nuggetWroughtIron>, <metaitem:nuggetWroughtIron>]
]);

# Tiny Charcoal Dust
furnace.setFuel(<metaitem:dustTinyCharcoal>, 200);

# Tiny Coal Dust
furnace.setFuel(<metaitem:dustTinyCoal>, 200);

# Solar Panels
var solarPanels as IItemStack[] = [
    <metaitem:cover.solar.panel.ulv>,
    <metaitem:cover.solar.panel.lv>,
    <metaitem:cover.solar.panel.mv>,
    <metaitem:cover.solar.panel.hv>,
    <metaitem:cover.solar.panel.ev>,
    <metaitem:cover.solar.panel.iv>,
    <metaitem:cover.solar.panel.luv>,
    <metaitem:cover.solar.panel.zpm>,
    <metaitem:cover.solar.panel.uv>
];
for solarPanel in solarPanels {
    recipes.remove(solarPanel);
}

# Solar Panel (8V)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel> * 8])
    .inputs([<minecraft:daylight_detector> * 8])
    .inputs([<ore:circuitUlv> * 4])
    .inputs([<metaitem:plate.ultra_low_power_integrated_circuit> * 4])
    .inputs([<minecraft:glass>])
    .inputs([<metaitem:transformer.ulv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<metaitem:cover.solar.panel.ulv>])
    .duration(20)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (LV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.ulv> * 4])
    .inputs([<metaitem:sensor.lv> * 8])
    .inputs([<metaitem:circuit.electronic> * 4])
    .inputs([<metaitem:plate.ultra_low_power_integrated_circuit> * 16])
    .inputs([<appliedenergistics2:quartz_glass>])
    .inputs([<metaitem:transformer.lv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs([<metaitem:cover.solar.panel.lv>])
    .duration(40)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (MV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.lv> * 4])
    .inputs([<metaitem:sensor.mv> * 8])
    .inputs([<metaitem:circuit.good_electronic> * 4])
    .inputs([<metaitem:plate.low_power_integrated_circuit> * 4])
    .inputs([<enderio:block_fused_quartz>])
    .inputs([<metaitem:transformer.mv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 576)
    .outputs([<metaitem:cover.solar.panel.mv>])
    .duration(80)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (HV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.mv> * 4])
    .inputs([<metaitem:sensor.hv> * 8])
    .inputs([<metaitem:circuit.advanced_integrated> * 4])
    .inputs([<metaitem:plate.low_power_integrated_circuit> * 16])
    .inputs([<enderio:block_fused_quartz>])
    .inputs([<metaitem:transformer.hv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 1152)
    .outputs([<metaitem:cover.solar.panel.hv>])
    .duration(160)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (EV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.hv> * 4])
    .inputs([<metaitem:sensor.ev> * 8])
    .inputs([<metaitem:circuit.workstation> * 4])
    .inputs([<metaitem:plate.power_integrated_circuit> * 4])
    .inputs([<gregtech:transparent_casing>])
    .inputs([<metaitem:transformer.ev>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 2304)
    .outputs([<metaitem:cover.solar.panel.ev>])
    .duration(320)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (IV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.ev> * 4])
    .inputs([<metaitem:sensor.iv> * 8])
    .inputs([<metaitem:circuit.mainframe> * 4])
    .inputs([<metaitem:plate.power_integrated_circuit> * 16])
    .inputs([<gregtech:transparent_casing>])
    .inputs([<metaitem:transformer.iv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 4608)
    .outputs([<metaitem:cover.solar.panel.iv>])
    .duration(640)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (LuV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.iv> * 4])
    .inputs([<metaitem:sensor.luv> * 8])
    .inputs([<metaitem:circuit.nano_mainframe> * 4])
    .inputs([<metaitem:plate.high_power_integrated_circuit> * 8])
    .inputs([<gregtech:transparent_casing:1>])
    .inputs([<metaitem:transformer.luv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 9216)
    .outputs([<metaitem:cover.solar.panel.luv>])
    .duration(1280)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (ZPM)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.luv> * 4])
    .inputs([<metaitem:sensor.zpm> * 8])
    .inputs([<metaitem:circuit.quantum_mainframe> * 4])
    .inputs([<metaitem:plate.high_power_integrated_circuit> * 32])
    .inputs([<gregtech:transparent_casing:1>])
    .inputs([<metaitem:transformer.zpm>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 18432)
    .outputs([<metaitem:cover.solar.panel.zpm>])
    .duration(2560)
    .EUt(122880)
    .buildAndRegister();

# Solar Panel (UV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.zpm> * 4])
    .inputs([<metaitem:sensor.uv> * 8])
    .inputs([<metaitem:circuit.crystal_mainframe> * 4])
    .inputs([<metaitem:plate.ultra_high_power_integrated_circuit> * 64])
    .inputs([<gregtech:transparent_casing:1>])
    .inputs([<metaitem:transformer.uv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 36864)
    .outputs([<metaitem:cover.solar.panel.uv>])
    .duration(5120)
    .EUt(491520)
    .buildAndRegister();

# Hopper (Override)
assembler.findRecipe(2, [<minecraft:chest:0>, <metaitem:plateIron> * 5], null).remove();
assembler.findRecipe(2, [<minecraft:chest:0>, <metaitem:plateWroughtIron> * 5], null).remove();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:chest>,
        <metaitem:plateIron> * 5
    ])
    .outputs([<minecraft:hopper>])
    .duration(800)
    .EUt(2)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:chest>,
        <metaitem:plateWroughtIron> * 5
    ])
    .outputs([<minecraft:hopper>])
    .duration(800)
    .EUt(2)
    .buildAndRegister();


########################################
# Blocks
########################################
# Enchanting Table (Override)
recipes.remove(<minecraft:enchanting_table>);
recipes.addShaped(<minecraft:enchanting_table>, [
    [<minecraft:diamond>, <minecraft:carpet:14>, <minecraft:diamond>],
    [<metaitem:plateObsidian>, <ore:bookshelf>, <metaitem:plateObsidian>],
    [<minecraft:diamond>, <metaitem:plateObsidian>, <minecraft:diamond>]
]);

# Crafting Station
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:plankWood> * 4,
        <ore:chestWood> * 2,
        <ore:slabWood>,
        <minecraft:crafting_table>
    ])
    .outputs([<metaitem:workbench>])
    .duration(100)
    .EUt(16)
    .buildAndRegister();
