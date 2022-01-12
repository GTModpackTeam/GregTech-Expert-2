# Imoprts
import mods.jei.JEI;
import mods.enderio.AlloySmelter;
import mods.enderio.SagMill;
import mods.enderio.SliceNSplice;



########################################
# Items
########################################
# Ender Dust
JEI.removeAndHide(<enderio:item_material:28>);
JEI.removeAndHide(<appliedenergistics2:material:46>);

# Enderios
recipes.remove(<enderio:item_ender_food>);
recipes.addShaped(<enderio:item_ender_food>, [
    [<minecraft:bowl>, <minecraft:milk_bucket>, null],
    [<minecraft:wheat>, <ore:dustEnderPearl>, null],
    [null, null, null]
]);

# Clippings and Trimmings
macerator.recipeBuilder().
    inputs([<ore:grass>]).
    outputs([<enderio:item_material:46>]).
    duration(100).
    EUt(480).
    buildAndRegister();

# Twings and Prunings
macerator.recipeBuilder().
    inputs([<minecraft:deadbush>]).
    outputs([<enderio:item_material:47>]).
    duration(100).
    EUt(480).
    buildAndRegister();

# Organic Green Dye
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_material:46> * 6,
        <minecraft:egg>
    ]).
    outputs([<enderio:item_material:48>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Organic Brown Dye
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_material:47> * 6,
        <minecraft:egg>
    ]).
    outputs([<enderio:item_material:49>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Organic Black Dye
alloy_smelter.recipeBuilder().
    inputs([
        <ore:dustCoal> * 3,
        <minecraft:egg>
    ]).
    outputs([<enderio:item_material:50>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Silicon
JEI.removeAndHide(<enderio:item_material:5>);
SagMill.removeRecipe(<minecraft:clay>);
SagMill.removeRecipe(<minecraft:sand:*>);
SagMill.removeRecipe(<minecraft:redstone_ore>);

# Basic Capacitor
recipes.remove(<enderio:item_basic_capacitor>);
assembler.recipeBuilder().
    inputs([
        <ore:ingotRoseGold> * 4,
        <gregtech:meta_item_1:717>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_basic_capacitor>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Double-layer Capacitor
recipes.remove(<enderio:item_basic_capacitor:1>);
assembler.recipeBuilder().
    inputs([
        <enderio:item_basic_capacitor> * 2,
        <ore:dustCoal>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_basic_capacitor:1>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Double-layer Capacitor
recipes.remove(<enderio:item_basic_capacitor:1>);
assembler.recipeBuilder().
    inputs([
        <enderio:item_basic_capacitor> * 2,
        <ore:dustCoal>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_basic_capacitor:1>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Zombie Eletrode
SliceNSplice.removeRecipe(<enderio:item_material:40>);
SliceNSplice.addRecipe(<enderio:item_material:40>, [
    <ore:ingotEnergeticAlloy>, <minecraft:skull:2>, <ore:ingotEnergeticAlloy>,
    <ore:dustSilicon>, <enderio:item_basic_capacitor>, <ore:dustSilicon>
]);
SliceNSplice.addRecipe(<enderio:item_material:40>, [
    <ore:ingotEnergeticAlloy>, <minecraft:skull:2>, <ore:ingotEnergeticAlloy>,
    <ore:dustSilicon>, <enderio:item_capacitor_silver>, <ore:dustSilicon>
]);

# Z-Logic Controller
SliceNSplice.removeRecipe(<enderio:item_material:41>);
SliceNSplice.addRecipe(<enderio:item_material:41>, [
    <ore:ingotSoularium>, <minecraft:skull:2>, <ore:ingotSoularium>,
    <ore:dustSilicon>, <ore:dustRedstone>, <ore:dustSilicon>
]);

# Ender Resonator
SliceNSplice.removeRecipe(<enderio:item_material:43>);
SliceNSplice.addRecipe(<enderio:item_material:43>, [
    <ore:ingotSoularium>, <enderio:block_enderman_skull>, <ore:ingotSoularium>,
    <ore:dustSilicon>, <ore:ingotVibrantAlloy>, <ore:dustSilicon>
]);

# Octadic Capacitor
recipes.remove(<enderio:item_basic_capacitor:2>);
assembler.recipeBuilder().
    inputs([
        <enderio:item_basic_capacitor:1> * 2,
        <ore:glowstone>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_basic_capacitor:2>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Electrical Steel Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotSteel>,
        <ore:dustSilicon>
    ]).
    outputs([<enderio:item_alloy_ingot>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Energetic Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotRedAlloy>,
        <ore:dustGlowstone>
    ]).
    outputs([<enderio:item_alloy_ingot:1>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Vibrant Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_alloy_ingot:1>,
        <ore:dustEnderPearl>
    ]).
    outputs([<enderio:item_alloy_ingot:2>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Redstone Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotRedAlloy>,
        <ore:dustSilicon>
    ]).
    outputs([<enderio:item_alloy_ingot:3>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Conductive Iron Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotIron>,
        <ore:dustRedstone>
    ]).
    outputs([<enderio:item_alloy_ingot:4>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Plusating Iron Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotIron>,
        <ore:dustEnderPearl>
    ]).
    outputs([<enderio:item_alloy_ingot:5>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Dark Steel Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotSteel>,
        <ore:dustObsidian>
    ]).
    outputs([<enderio:item_alloy_ingot:6>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Soularium Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotGold>,
        <minecraft:soul_sand>
    ]).
    outputs([<enderio:item_alloy_ingot:7>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# End Steel Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_alloy_ingot:6>,
        <minecraft:end_stone>
    ]).
    outputs([<enderio:item_alloy_ingot:8>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Iron Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_alloy_ingot:6>,
        <ore:dustCobalt>
    ]).
    outputs([<enderio:item_alloy_ingot:9>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Grinding Balls
JEI.removeAndHide(<enderio:item_alloy_ball:*>);
JEI.hideCategory("GrindingBall");

# Remote Awareness Upgrade
recipes.remove(<enderio:item_material:64>);
recipes.addShaped(<enderio:item_material:64>, [
    [<enderio:item_material:4>, <ore:dustIron>, <enderio:item_material:4>],
    [<ore:dustIron>, <minecraft:ender_eye>, <ore:dustIron>],
    [<enderio:item_material:4>, <enderio:item_alloy_ingot>, <enderio:item_material:4>]
]);

# Electric Light
recipes.remove(<enderio:block_electric_light>);
recipes.addShaped(<enderio:block_electric_light>, [
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>], 
    [<ore:plateSilicon>, <ore:dustGlowstone>, <ore:plateSilicon>], 
    [<ore:plateSilicon>, <enderio:item_basic_capacitor>, <ore:plateSilicon>]
]);

# Photovoltaic Composite
recipes.remove(<enderio:item_material:38>);
recipes.addShaped(<enderio:item_material:38>, [
    [<ore:dustLapis>, <ore:dustCoal>, null],
    [<ore:dustSilicon>, null, null],
    [null, null, null]
]);

# Photovoltaic Plate
AlloySmelter.removeRecipe(<enderio:item_material:3>);
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_material:38> * 8,
        <ore:dustSilicon>
    ]).
    outputs([<enderio:item_material:3>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Grains of Infinite
macerator.recipeBuilder().
    inputs([<ore:compressed6xCobblestone>]).
    outputs([<enderio:item_material:20>]).
    duration(50).
    EUt(480).
    buildAndRegister();



########################################
# Blocks
########################################
# Industrial Machine Chassis
alloy_smelter.recipeBuilder().
    inputs([
        <ore:itemSimpleMachineChassi>,
        <ore:dyeMachine>
    ]).
    outputs([<enderio:item_material:1>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Soul Machine Chassis
alloy_smelter.recipeBuilder().
    inputs([
        <ore:itemSimpleMachineChassi>,
        <ore:dyeSoulMachine>
    ]).
    outputs([<enderio:item_material:53>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Enhanced Machine Chassis
alloy_smelter.recipeBuilder().
    inputs([
        <ore:itemEndSteelMachineChassi>,
        <ore:dyeEnhancedMachine>
    ]).
    outputs([<enderio:item_material:54>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Stirling Generator
JEI.removeAndHide(<enderio:block_simple_stirling_generator>);
recipes.remove(<enderio:block_stirling_generator>);
recipes.addShaped(<enderio:block_stirling_generator>, [
    [<ore:stoneBricks>, <minecraft:furnace>, <ore:stoneBricks>],
    [<ore:ingotDarkSteel>, <enderio:item_material:1>, <ore:ingotDarkSteel>],
    [<enderio:item_material:73>, <minecraft:piston>, <enderio:item_material:73>]
]);

# Buffer
JEI.removeAndHide(<enderio:block_buffer>);

# Stirling Generator
JEI.removeAndHide(<enderio:block_simple_furnace>);

# Alloy Smelter
// JEI.hideCategory("AlloySmelter");
JEI.removeAndHide(<enderio:block_simple_alloy_smelter>);
JEI.removeAndHide(<enderio:block_alloy_smelter>);
JEI.removeAndHide(<enderio:block_enhanced_alloy_smelter>);

# SAG Mill
// JEI.hideCategory("SagMill");
JEI.removeAndHide(<enderio:block_simple_sag_mill>);
recipes.remove(<enderio:block_sag_mill>);
recipes.addShaped(<enderio:block_sag_mill>, [
    [<ore:ingotElectricalSteel>, <gregtech:meta_item_1:266>, <ore:ingotElectricalSteel>],
    [<minecraft:flint>, <enderio:item_material:1>, <minecraft:flint>],
    [<gregtech:meta_item_1:173>, <enderio:item_basic_capacitor:1>, <gregtech:meta_item_1:128>]
]);

# Crafter
JEI.removeAndHide(<enderio:block_simple_crafter>);
recipes.remove(<enderio:block_crafter>);
recipes.addShaped(<enderio:block_crafter>, [
    [<ore:dustSilicon>, <ore:dustSilicon>, <ore:dustSilicon>], 
    [<enderio:item_alloy_ingot:9>, <ore:itemMachineChassi>, <enderio:item_alloy_ingot:9>], 
    [<ore:gearIronInfinity>, <ore:workbench>, <ore:gearIronInfinity>]
]);

# Wired Charger
JEI.removeAndHide(<enderio:block_simple_wired_charger>);
recipes.remove(<enderio:block_wired_charger>);
recipes.addShaped(<enderio:block_wired_charger>, [
    [<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>],
    [<ore:ingotElectricalSteel>, <enderio:item_material:1>, <ore:ingotElectricalSteel>],
    [<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>]
]);

# Reinforced Obsidian
recipes.remove(<enderio:block_reinforced_obsidian>);
recipes.addShaped(<enderio:block_reinforced_obsidian>, [
    [<enderio:item_alloy_ingot:6>, <enderio:block_infinity>, <enderio:item_alloy_ingot:6>],
    [<enderio:block_infinity>, <minecraft:obsidian>, <enderio:block_infinity>],
    [<enderio:item_alloy_ingot:6>, <enderio:block_infinity>, <enderio:item_alloy_ingot:6>]
]);
