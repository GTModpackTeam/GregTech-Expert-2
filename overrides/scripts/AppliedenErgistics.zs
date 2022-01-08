# Imoprts
import mods.jei.JEI;



########################################
# Items
########################################
# Wooden Gear
recipes.remove(<appliedenergistics2:material:40>);
mods.jei.JEI.hide(<appliedenergistics2:material:40>);
<ore:gearWood>.remove(<appliedenergistics2:material:40>);

# View Cell
recipes.remove(<appliedenergistics2:view_cell>);
recipes.addShaped(<appliedenergistics2:view_cell>, [
    [<ore:plateGlass>, <ore:plateRedAlloy>, <ore:plateGlass>],
    [<ore:plateRedAlloy>, <ore:crystalCertusQuartz>, <ore:plateRedAlloy>],
    [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]
]);

# Storage Housing
recipes.remove(<appliedenergistics2:material:39>);
recipes.addShaped(<appliedenergistics2:material:39>, [
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, null, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]
]);
recipes.addShaped(<appliedenergistics2:material:39>, [
    [<ore:craftingToolScrewdriver>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, null, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<appliedenergistics2:material:39>, [
    [<ore:craftingToolHardHammer>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, null, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolScrewdriver>]
]);

# 1k Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_1k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:35>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:storage_cell_1k>, [
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:35>, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]
]);
recipes.addShaped(<appliedenergistics2:storage_cell_1k>, [
    [<ore:craftingToolScrewdriver>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:35>, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<appliedenergistics2:storage_cell_1k>, [
    [<ore:craftingToolHardHammer>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:35>, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolScrewdriver>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitPrimitive> * 4,
        <ore:plateLead> * 4,
        <ore:dustCertusQuartz> * 4,
        <appliedenergistics2:material:22>
    ]).
    outputs([<appliedenergistics2:material:35>]).
    duration(200).
    EUt(6).
    buildAndRegister();

# 4k Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_4k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:36>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:storage_cell_4k>, [
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:36>, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]
]);
recipes.addShaped(<appliedenergistics2:storage_cell_4k>, [
    [<ore:craftingToolScrewdriver>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:36>, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<appliedenergistics2:storage_cell_4k>, [
    [<ore:craftingToolHardHammer>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:36>, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolScrewdriver>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitBasic> * 4,
        <ore:plateIron> * 4,
        <ore:dustCertusQuartz> * 4,
        <appliedenergistics2:material:22>
    ]).
    outputs([<appliedenergistics2:material:36>]).
    duration(200).
    EUt(30).
    buildAndRegister();

# 16k Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_16k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:37>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:storage_cell_16k>, [
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:37>, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]
]);
recipes.addShaped(<appliedenergistics2:storage_cell_16k>, [
    [<ore:craftingToolScrewdriver>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:37>, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<appliedenergistics2:storage_cell_16k>, [
    [<ore:craftingToolHardHammer>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:37>, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolScrewdriver>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitGood> * 4,
        <ore:plateAluminium> * 4,
        <ore:dustCertusQuartz> * 8,
        <appliedenergistics2:material:24>
    ]).
    outputs([<appliedenergistics2:material:37>]).
    duration(200).
    EUt(120).
    buildAndRegister();

# 64k Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_64k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:38>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:storage_cell_64k>, [
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:38>, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]
]);
recipes.addShaped(<appliedenergistics2:storage_cell_64k>, [
    [<ore:craftingToolScrewdriver>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:38>, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<appliedenergistics2:storage_cell_64k>, [
    [<ore:craftingToolHardHammer>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, <appliedenergistics2:material:38>, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolScrewdriver>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitAdvanced> * 4,
        <ore:plateStainlessSteel> * 4,
        <ore:dustCertusQuartz> * 8,
        <appliedenergistics2:material:24>
    ]).
    outputs([<appliedenergistics2:material:38>]).
    duration(200).
    EUt(480).
    buildAndRegister();

# 1k Fluid Cell
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_1k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:54>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_1k>, [
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:54>, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>]
]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_1k>, [
    [<ore:craftingToolScrewdriver>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:54>, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_1k>, [
    [<ore:craftingToolHardHammer>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:54>, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]
]);

# 4k Fluid Cell
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_4k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:55>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_4k>, [
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:55>, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>]
]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_4k>, [
    [<ore:craftingToolScrewdriver>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:55>, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_4k>, [
    [<ore:craftingToolHardHammer>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:55>, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]
]);

# 16k Fluid Cell
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_16k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:56>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_16k>, [
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:56>, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>]
]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_16k>, [
    [<ore:craftingToolScrewdriver>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:56>, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_16k>, [
    [<ore:craftingToolHardHammer>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:56>, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]
]);

# 64k Fluid Cell
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_64k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:57>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_64k>, [
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:57>, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>]
]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_64k>, [
    [<ore:craftingToolScrewdriver>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:57>, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_64k>, [
    [<ore:craftingToolHardHammer>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:57>, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]
]);

# 2k Spatial Cell
recipes.removeShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:32>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>, [
    [<ore:screwStainlessSteel>, <ore:plateAluminium>, <ore:screwStainlessSteel>],
    [<ore:plateAluminium>, <appliedenergistics2:material:32>, <ore:plateAluminium>],
    [<ore:screwStainlessSteel>, <ore:plateAluminium>, <ore:screwStainlessSteel>]
]);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>, [
    [<ore:craftingToolScrewdriver>, <ore:plateAluminium>, <ore:screwStainlessSteel>],
    [<ore:plateAluminium>, <appliedenergistics2:material:32>, <ore:plateAluminium>],
    [<ore:screwStainlessSteel>, <ore:plateAluminium>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>, [
    [<ore:craftingToolHardHammer>, <ore:plateAluminium>, <ore:screwStainlessSteel>],
    [<ore:plateAluminium>, <appliedenergistics2:material:32>, <ore:plateAluminium>],
    [<ore:screwStainlessSteel>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]
]);

# 16k Spatial Cell
recipes.removeShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:33>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>, [
    [<ore:screwAluminium>, <ore:plateAluminium>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:33>, <ore:plateAluminium>],
    [<ore:screwAluminium>, <ore:plateAluminium>, <ore:screwAluminium>]
]);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>, [
    [<ore:craftingToolScrewdriver>, <ore:plateAluminium>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:33>, <ore:plateAluminium>],
    [<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>, [
    [<ore:craftingToolHardHammer>, <ore:plateAluminium>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:33>, <ore:plateAluminium>],
    [<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]
]);

# 128k Spatial Cell
recipes.removeShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:34>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>, [
    [<ore:screwAluminium>, <ore:plateAluminium>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:34>, <ore:plateAluminium>],
    [<ore:screwAluminium>, <ore:plateAluminium>, <ore:screwAluminium>]
]);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>, [
    [<ore:craftingToolScrewdriver>, <ore:plateAluminium>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:34>, <ore:plateAluminium>],
    [<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>, [
    [<ore:craftingToolHardHammer>, <ore:plateAluminium>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:34>, <ore:plateAluminium>],
    [<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]
]);

# 1k Storage Component
recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped(<appliedenergistics2:material:35>, [
    [<gregtech:meta_item_1:516>, <ore:dustCertusQuartz>, <gregtech:meta_item_1:516>],
    [<ore:dustCertusQuartz>, <appliedenergistics2:material:22>, <ore:dustCertusQuartz>],
    [<gregtech:meta_item_1:516>, <ore:dustCertusQuartz>, <gregtech:meta_item_1:516>]
]);

# 4k Storage Component
recipes.remove(<appliedenergistics2:material:36>);
recipes.addShaped(<appliedenergistics2:material:36>, [
    [<ore:circuitBasic>, <appliedenergistics2:material:35>, <ore:circuitBasic>],
    [<appliedenergistics2:material:35>, <appliedenergistics2:material:22>, <appliedenergistics2:material:35>],
    [<ore:circuitBasic>, <appliedenergistics2:material:35>, <ore:circuitBasic>]
]);

# 16k Storage Component
recipes.remove(<appliedenergistics2:material:37>);
recipes.addShaped(<appliedenergistics2:material:37>, [
    [<ore:circuitGood>, <appliedenergistics2:material:36>, <ore:circuitGood>],
    [<appliedenergistics2:material:36>, <appliedenergistics2:material:23>, <appliedenergistics2:material:36>],
    [<ore:circuitGood>, <appliedenergistics2:material:36>, <ore:circuitGood>]
]);

# 64k Storage Component
recipes.remove(<appliedenergistics2:material:38>);
recipes.addShaped(<appliedenergistics2:material:38>, [
    [<ore:circuitAdvanced>, <appliedenergistics2:material:37>, <ore:circuitAdvanced>],
    [<appliedenergistics2:material:37>, <appliedenergistics2:material:23>, <appliedenergistics2:material:37>],
    [<ore:circuitAdvanced>, <appliedenergistics2:material:37>, <ore:circuitAdvanced>]
]);

# 1k Fluid Component
recipes.remove(<appliedenergistics2:material:54>);
recipes.addShaped(<appliedenergistics2:material:54>, [
    [<gregtech:meta_item_1:516>, <appliedenergistics2:material:8>, <gregtech:meta_item_1:516>],
    [<appliedenergistics2:material:8>, <appliedenergistics2:material:22>, <appliedenergistics2:material:8>],
    [<gregtech:meta_item_1:516>, <appliedenergistics2:material:8>, <gregtech:meta_item_1:516>]
]);

# 4k Fluid Component
recipes.remove(<appliedenergistics2:material:55>);
recipes.addShaped(<appliedenergistics2:material:55>, [
    [<ore:circuitBasic>, <appliedenergistics2:material:54>, <ore:circuitBasic>],
    [<appliedenergistics2:material:54>, <appliedenergistics2:material:22>, <appliedenergistics2:material:54>],
    [<ore:circuitBasic>, <appliedenergistics2:material:54>, <ore:circuitBasic>]
]);

# 16k Fluid Component
recipes.remove(<appliedenergistics2:material:56>);
recipes.addShaped(<appliedenergistics2:material:56>, [
    [<ore:circuitGood>, <appliedenergistics2:material:55>, <ore:circuitGood>],
    [<appliedenergistics2:material:55>, <appliedenergistics2:material:23>, <appliedenergistics2:material:55>],
    [<ore:circuitGood>, <appliedenergistics2:material:55>, <ore:circuitGood>]
]);

# 64k Fluid Component
recipes.remove(<appliedenergistics2:material:57>);
recipes.addShaped(<appliedenergistics2:material:57>, [
    [<ore:circuitAdvanced>, <appliedenergistics2:material:56>, <ore:circuitAdvanced>],
    [<appliedenergistics2:material:56>, <appliedenergistics2:material:23>, <appliedenergistics2:material:56>],
    [<ore:circuitAdvanced>, <appliedenergistics2:material:56>, <ore:circuitAdvanced>]
]);

# 2k Spatial Component
recipes.remove(<appliedenergistics2:material:32>);
recipes.addShaped(<appliedenergistics2:material:32>, [
    [<ore:plateGlowstone>, <ore:pearlFluix>, <ore:plateGlowstone>],
    [<ore:pearlFluix>, <appliedenergistics2:material:22>, <ore:pearlFluix>],
    [<ore:plateGlowstone>, <ore:pearlFluix>, <ore:plateGlowstone>]
]);

# 16k Spatial Component
recipes.remove(<appliedenergistics2:material:33>);
recipes.addShaped(<appliedenergistics2:material:33>, [
    [<ore:plateEnderPearl>, <appliedenergistics2:material:32>, <ore:plateEnderPearl>],
    [<appliedenergistics2:material:32>, <appliedenergistics2:material:23>, <appliedenergistics2:material:32>],
    [<ore:plateEnderPearl>, <appliedenergistics2:material:32>, <ore:plateEnderPearl>]
]);

# 128k Spatial Component
recipes.remove(<appliedenergistics2:material:34>);
recipes.addShaped(<appliedenergistics2:material:34>, [
    [<ore:plateTungstenSteel>, <appliedenergistics2:material:33>, <ore:plateTungstenSteel>],
    [<appliedenergistics2:material:33>, <appliedenergistics2:material:24>, <appliedenergistics2:material:33>],
    [<ore:plateTungstenSteel>, <appliedenergistics2:material:33>, <ore:plateTungstenSteel>]
]);

# Charged Certus Quartz Crystal
electrolyzer.recipeBuilder().
    inputs([<ore:crystalCertusQuartz>]).
    outputs([<appliedenergistics2:material:1>]).
    duration(2000).
    EUt(30).
    buildAndRegister();



########################################
# Blocks
########################################
# ME Controller
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, [
    [<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>],
    [<appliedenergistics2:material:24>, <appliedenergistics2:fluix_block>, <appliedenergistics2:material:24>],
    [<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>]
]);
