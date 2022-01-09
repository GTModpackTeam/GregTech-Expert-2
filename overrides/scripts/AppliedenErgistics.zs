# Imoprts
import mods.jei.JEI;
import mods.appliedenergistics2.Inscriber;



########################################
# Items
########################################
# Wooden Gear
recipes.remove(<appliedenergistics2:material:40>);
mods.jei.JEI.hide(<appliedenergistics2:material:40>);
<ore:gearWood>.remove(<appliedenergistics2:material:40>);

# Inscriber Calulation Press
Inscriber.removeRecipe(<appliedenergistics2:material:13>);
laser_engraver.recipeBuilder().
    inputs([
        <ore:blockWroughtIron>,
        <gregtech:meta_item_1:823>
    ]).
    outputs([<appliedenergistics2:material:13>]).
    duration(2000).
    EUt(1920).
    buildAndRegister();

# Inscriber Engineering Press
Inscriber.removeRecipe(<appliedenergistics2:material:14>); 
laser_engraver.recipeBuilder().
    inputs([
        <ore:blockIron>,
        <gregtech:meta_item_1:824>
    ]).
    outputs([<appliedenergistics2:material:14>]).
    duration(2000).
    EUt(1920).
    buildAndRegister();

# Inscriber Logic Press
Inscriber.removeRecipe(<appliedenergistics2:material:15>); 
laser_engraver.recipeBuilder().
    inputs([
        <ore:blockWroughtIron>,
        <gregtech:meta_item_1:825>
    ]).
    outputs([<appliedenergistics2:material:15>]).
    duration(2000).
    EUt(1920).
    buildAndRegister();

# Inscriber Silicon Press
Inscriber.removeRecipe(<appliedenergistics2:material:19>); 
laser_engraver.recipeBuilder().
    inputs([
        <ore:blockIron>,
        <gregtech:meta_item_1:828>
    ]).
    outputs([<appliedenergistics2:material:19>]).
    duration(2000).
    EUt(1920).
    buildAndRegister();

# Printed Calulation Circuit
Inscriber.removeRecipe(<appliedenergistics2:material:16>);
forming_press.recipeBuilder().
    inputs([
        <ore:plateCertusQuartz>,
        <appliedenergistics2:material:13>
    ]).
    outputs([<appliedenergistics2:material:16>]).
    duration(100).
    EUt(30).
    buildAndRegister();

# Printed Engineering Circuit
Inscriber.removeRecipe(<appliedenergistics2:material:17>);
forming_press.recipeBuilder().
    inputs([
        <ore:plateDiamond>,
        <appliedenergistics2:material:14>
    ]).
    outputs([<appliedenergistics2:material:17>]).
    duration(100).
    EUt(30).
    buildAndRegister();

# Printed Logic Circuit
Inscriber.removeRecipe(<appliedenergistics2:material:18>);
forming_press.recipeBuilder().
    inputs([
        <ore:plateGold>,
        <appliedenergistics2:material:15>
    ]).
    outputs([<appliedenergistics2:material:18>]).
    duration(100).
    EUt(30).
    buildAndRegister();

# Printed Silicon
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
forming_press.recipeBuilder().
    inputs([
        <ore:plateSilicon>,
        <appliedenergistics2:material:19>
    ]).
    outputs([<appliedenergistics2:material:20>]).
    duration(100).
    EUt(30).
    buildAndRegister();

# Calulation Processor
Inscriber.removeRecipe(<appliedenergistics2:material:23>);
assembler.recipeBuilder().
    inputs([
        <appliedenergistics2:material:16>,
        <appliedenergistics2:material:20>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<appliedenergistics2:material:23>]).
    duration(50).
    EUt(32).
    buildAndRegister();

# Engineering Processor
Inscriber.removeRecipe(<appliedenergistics2:material:24>);
assembler.recipeBuilder().
    inputs([
        <appliedenergistics2:material:17>,
        <appliedenergistics2:material:20>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<appliedenergistics2:material:24>]).
    duration(50).
    EUt(32).
    buildAndRegister();

# Logic Processor
Inscriber.removeRecipe(<appliedenergistics2:material:22>);
assembler.recipeBuilder().
    inputs([
        <appliedenergistics2:material:18>,
        <appliedenergistics2:material:20>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<appliedenergistics2:material:22>]).
    duration(50).
    EUt(32).
    buildAndRegister();

# Formation Core
recipes.remove(<appliedenergistics2:material:43>);
recipes.addShaped(<appliedenergistics2:material:43>, [
    [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>],
    [<appliedenergistics2:material:24>, <ore:gemNetherQuartz>, <appliedenergistics2:material:24>],
    [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>]
]);
recipes.addShaped(<appliedenergistics2:material:43> * 2, [
    [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>],
    [<appliedenergistics2:material:24>, <ore:crystalPureNetherQuartz>, <appliedenergistics2:material:24>],
    [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>]
]);

# Annihilation Core
recipes.remove(<appliedenergistics2:material:44>);
recipes.addShaped(<appliedenergistics2:material:44>, [
    [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>],
    [<appliedenergistics2:material:24>, <ore:gemCertusQuartz>, <appliedenergistics2:material:24>],
    [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>]
]);
recipes.addShaped(<appliedenergistics2:material:44> * 2, [
    [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>],
    [<appliedenergistics2:material:24>, <ore:crystalPureCertusQuartz>, <appliedenergistics2:material:24>],
    [<ore:stickAluminium>, <appliedenergistics2:material:24>, <ore:stickAluminium>]
]);

# View Cell
recipes.remove(<appliedenergistics2:view_cell>);
recipes.addShaped(<appliedenergistics2:view_cell>, [
    [<ore:plateGlass>, <ore:plateRedAlloy>, <ore:plateGlass>],
    [<ore:plateRedAlloy>, <ore:crystalCertusQuartz>, <ore:plateRedAlloy>],
    [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]
]);

# Blank Pattern
recipes.remove(<appliedenergistics2:material:52>);
recipes.addShaped(<appliedenergistics2:material:52>, [
    [<appliedenergistics2:quartz_glass>, <ore:plateGlowstone>, <appliedenergistics2:quartz_glass>],
    [<ore:plateGlowstone>, <ore:crystalCertusQuartz>, <ore:plateGlowstone>],
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
// recipes.addShaped(<appliedenergistics2:storage_cell_1k>, [
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>],
//     [<ore:plateSteel>, <appliedenergistics2:material:35>, <ore:plateSteel>],
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]
// ]);
// recipes.addShaped(<appliedenergistics2:storage_cell_1k>, [
//     [<ore:craftingToolScrewdriver>, <ore:plateSteel>, <ore:screwSteel>],
//     [<ore:plateSteel>, <appliedenergistics2:material:35>, <ore:plateSteel>],
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolHardHammer>]
// ]);
// recipes.addShaped(<appliedenergistics2:storage_cell_1k>, [
//     [<ore:craftingToolHardHammer>, <ore:plateSteel>, <ore:screwSteel>],
//     [<ore:plateSteel>, <appliedenergistics2:material:35>, <ore:plateSteel>],
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolScrewdriver>]
// ]);

# 4k Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_4k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:36>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
// recipes.addShaped(<appliedenergistics2:storage_cell_4k>, [
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>],
//     [<ore:plateSteel>, <appliedenergistics2:material:36>, <ore:plateSteel>],
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]
// ]);
// recipes.addShaped(<appliedenergistics2:storage_cell_4k>, [
//     [<ore:craftingToolScrewdriver>, <ore:plateSteel>, <ore:screwSteel>],
//     [<ore:plateSteel>, <appliedenergistics2:material:36>, <ore:plateSteel>],
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolHardHammer>]
// ]);
// recipes.addShaped(<appliedenergistics2:storage_cell_4k>, [
//     [<ore:craftingToolHardHammer>, <ore:plateSteel>, <ore:screwSteel>],
//     [<ore:plateSteel>, <appliedenergistics2:material:36>, <ore:plateSteel>],
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolScrewdriver>]
// ]);

# 16k Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_16k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:37>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
// recipes.addShaped(<appliedenergistics2:storage_cell_16k>, [
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>],
//     [<ore:plateSteel>, <appliedenergistics2:material:37>, <ore:plateSteel>],
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]
// ]);
// recipes.addShaped(<appliedenergistics2:storage_cell_16k>, [
//     [<ore:craftingToolScrewdriver>, <ore:plateSteel>, <ore:screwSteel>],
//     [<ore:plateSteel>, <appliedenergistics2:material:37>, <ore:plateSteel>],
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolHardHammer>]
// ]);
// recipes.addShaped(<appliedenergistics2:storage_cell_16k>, [
//     [<ore:craftingToolHardHammer>, <ore:plateSteel>, <ore:screwSteel>],
//     [<ore:plateSteel>, <appliedenergistics2:material:37>, <ore:plateSteel>],
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolScrewdriver>]
// ]);

# 64k Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_64k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:38>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
// recipes.addShaped(<appliedenergistics2:storage_cell_64k>, [
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>],
//     [<ore:plateSteel>, <appliedenergistics2:material:38>, <ore:plateSteel>],
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]
// ]);
// recipes.addShaped(<appliedenergistics2:storage_cell_64k>, [
//     [<ore:craftingToolScrewdriver>, <ore:plateSteel>, <ore:screwSteel>],
//     [<ore:plateSteel>, <appliedenergistics2:material:38>, <ore:plateSteel>],
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolHardHammer>]
// ]);
// recipes.addShaped(<appliedenergistics2:storage_cell_64k>, [
//     [<ore:craftingToolHardHammer>, <ore:plateSteel>, <ore:screwSteel>],
//     [<ore:plateSteel>, <appliedenergistics2:material:38>, <ore:plateSteel>],
//     [<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolScrewdriver>]
// ]);

# 1k Fluid Cell
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_1k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:54>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
// recipes.addShaped(<appliedenergistics2:fluid_storage_cell_1k>, [
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, <appliedenergistics2:material:54>, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>]
// ]);
// recipes.addShaped(<appliedenergistics2:fluid_storage_cell_1k>, [
//     [<ore:craftingToolScrewdriver>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, <appliedenergistics2:material:54>, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolHardHammer>]
// ]);
// recipes.addShaped(<appliedenergistics2:fluid_storage_cell_1k>, [
//     [<ore:craftingToolHardHammer>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, <appliedenergistics2:material:54>, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]
// ]);

# 4k Fluid Cell
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_4k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:55>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
// recipes.addShaped(<appliedenergistics2:fluid_storage_cell_4k>, [
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, <appliedenergistics2:material:55>, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>]
// ]);
// recipes.addShaped(<appliedenergistics2:fluid_storage_cell_4k>, [
//     [<ore:craftingToolScrewdriver>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, <appliedenergistics2:material:55>, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolHardHammer>]
// ]);
// recipes.addShaped(<appliedenergistics2:fluid_storage_cell_4k>, [
//     [<ore:craftingToolHardHammer>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, <appliedenergistics2:material:55>, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]
// ]);

# 16k Fluid Cell
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_16k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:56>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
// recipes.addShaped(<appliedenergistics2:fluid_storage_cell_16k>, [
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, <appliedenergistics2:material:56>, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>]
// ]);
// recipes.addShaped(<appliedenergistics2:fluid_storage_cell_16k>, [
//     [<ore:craftingToolScrewdriver>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, <appliedenergistics2:material:56>, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolHardHammer>]
// ]);
// recipes.addShaped(<appliedenergistics2:fluid_storage_cell_16k>, [
//     [<ore:craftingToolHardHammer>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, <appliedenergistics2:material:56>, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]
// ]);

# 64k Fluid Cell
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_64k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:57>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
// recipes.addShaped(<appliedenergistics2:fluid_storage_cell_64k>, [
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, <appliedenergistics2:material:57>, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>]
// ]);
// recipes.addShaped(<appliedenergistics2:fluid_storage_cell_64k>, [
//     [<ore:craftingToolScrewdriver>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, <appliedenergistics2:material:57>, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolHardHammer>]
// ]);
// recipes.addShaped(<appliedenergistics2:fluid_storage_cell_64k>, [
//     [<ore:craftingToolHardHammer>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, <appliedenergistics2:material:57>, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]
// ]);

# 2k Spatial Cell
recipes.removeShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:32>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
// recipes.addShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>, [
//     [<ore:screwStainlessSteel>, <ore:plateAluminium>, <ore:screwStainlessSteel>],
//     [<ore:plateAluminium>, <appliedenergistics2:material:32>, <ore:plateAluminium>],
//     [<ore:screwStainlessSteel>, <ore:plateAluminium>, <ore:screwStainlessSteel>]
// ]);
// recipes.addShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>, [
//     [<ore:craftingToolScrewdriver>, <ore:plateAluminium>, <ore:screwStainlessSteel>],
//     [<ore:plateAluminium>, <appliedenergistics2:material:32>, <ore:plateAluminium>],
//     [<ore:screwStainlessSteel>, <ore:plateAluminium>, <ore:craftingToolHardHammer>]
// ]);
// recipes.addShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>, [
//     [<ore:craftingToolHardHammer>, <ore:plateAluminium>, <ore:screwStainlessSteel>],
//     [<ore:plateAluminium>, <appliedenergistics2:material:32>, <ore:plateAluminium>],
//     [<ore:screwStainlessSteel>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]
// ]);

# 16k Spatial Cell
recipes.removeShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:33>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
// recipes.addShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>, [
//     [<ore:screwAluminium>, <ore:plateAluminium>, <ore:screwAluminium>],
//     [<ore:plateAluminium>, <appliedenergistics2:material:33>, <ore:plateAluminium>],
//     [<ore:screwAluminium>, <ore:plateAluminium>, <ore:screwAluminium>]
// ]);
// recipes.addShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>, [
//     [<ore:craftingToolScrewdriver>, <ore:plateAluminium>, <ore:screwAluminium>],
//     [<ore:plateAluminium>, <appliedenergistics2:material:33>, <ore:plateAluminium>],
//     [<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolHardHammer>]
// ]);
// recipes.addShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>, [
//     [<ore:craftingToolHardHammer>, <ore:plateAluminium>, <ore:screwAluminium>],
//     [<ore:plateAluminium>, <appliedenergistics2:material:33>, <ore:plateAluminium>],
//     [<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]
// ]);

# 128k Spatial Cell
recipes.removeShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:34>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
// recipes.addShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>, [
//     [<ore:screwAluminium>, <ore:plateAluminium>, <ore:screwAluminium>],
//     [<ore:plateAluminium>, <appliedenergistics2:material:34>, <ore:plateAluminium>],
//     [<ore:screwAluminium>, <ore:plateAluminium>, <ore:screwAluminium>]
// ]);
// recipes.addShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>, [
//     [<ore:craftingToolScrewdriver>, <ore:plateAluminium>, <ore:screwAluminium>],
//     [<ore:plateAluminium>, <appliedenergistics2:material:34>, <ore:plateAluminium>],
//     [<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolHardHammer>]
// ]);
// recipes.addShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>, [
//     [<ore:craftingToolHardHammer>, <ore:plateAluminium>, <ore:screwAluminium>],
//     [<ore:plateAluminium>, <appliedenergistics2:material:34>, <ore:plateAluminium>],
//     [<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]
// ]);

# 1k Storage Component
recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped(<appliedenergistics2:material:35>, [
    [<gregtech:meta_item_1:516>, <ore:dustCertusQuartz>, <gregtech:meta_item_1:516>],
    [<ore:dustCertusQuartz>, <appliedenergistics2:material:22>, <ore:dustCertusQuartz>],
    [<gregtech:meta_item_1:516>, <ore:dustCertusQuartz>, <gregtech:meta_item_1:516>]
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

# 4k Storage Component
recipes.remove(<appliedenergistics2:material:36>);
recipes.addShaped(<appliedenergistics2:material:36>, [
    [<ore:circuitBasic>, <appliedenergistics2:material:35>, <ore:circuitBasic>],
    [<appliedenergistics2:material:35>, <appliedenergistics2:material:22>, <appliedenergistics2:material:35>],
    [<ore:circuitBasic>, <appliedenergistics2:material:35>, <ore:circuitBasic>]
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

# 16k Storage Component
recipes.remove(<appliedenergistics2:material:37>);
recipes.addShaped(<appliedenergistics2:material:37>, [
    [<ore:circuitGood>, <appliedenergistics2:material:36>, <ore:circuitGood>],
    [<appliedenergistics2:material:36>, <appliedenergistics2:material:23>, <appliedenergistics2:material:36>],
    [<ore:circuitGood>, <appliedenergistics2:material:36>, <ore:circuitGood>]
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

# 64k Storage Component
recipes.remove(<appliedenergistics2:material:38>);
recipes.addShaped(<appliedenergistics2:material:38>, [
    [<ore:circuitAdvanced>, <appliedenergistics2:material:37>, <ore:circuitAdvanced>],
    [<appliedenergistics2:material:37>, <appliedenergistics2:material:23>, <appliedenergistics2:material:37>],
    [<ore:circuitAdvanced>, <appliedenergistics2:material:37>, <ore:circuitAdvanced>]
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

# 1k Fluid Component
recipes.remove(<appliedenergistics2:material:54>);
recipes.addShaped(<appliedenergistics2:material:54>, [
    [<gregtech:meta_item_1:516>, <ore:dustNetherQuartz>, <gregtech:meta_item_1:516>],
    [<ore:dustNetherQuartz>, <appliedenergistics2:material:22>, <ore:dustNetherQuartz>],
    [<gregtech:meta_item_1:516>, <ore:dustNetherQuartz>, <gregtech:meta_item_1:516>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitPrimitive> * 4,
        <ore:plateLead> * 4,
        <ore:dustNetherQuartz> * 4,
        <appliedenergistics2:material:22>
    ]).
    outputs([<appliedenergistics2:material:54>]).
    duration(200).
    EUt(6).
    buildAndRegister();

# 4k Fluid Component
recipes.remove(<appliedenergistics2:material:55>);
recipes.addShaped(<appliedenergistics2:material:55>, [
    [<ore:circuitBasic>, <appliedenergistics2:material:54>, <ore:circuitBasic>],
    [<appliedenergistics2:material:54>, <appliedenergistics2:material:22>, <appliedenergistics2:material:54>],
    [<ore:circuitBasic>, <appliedenergistics2:material:54>, <ore:circuitBasic>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitBasic> * 4,
        <ore:plateIron> * 4,
        <ore:dustNetherQuartz> * 4,
        <appliedenergistics2:material:22>
    ]).
    outputs([<appliedenergistics2:material:55>]).
    duration(200).
    EUt(30).
    buildAndRegister();

# 16k Fluid Component
recipes.remove(<appliedenergistics2:material:56>);
recipes.addShaped(<appliedenergistics2:material:56>, [
    [<ore:circuitGood>, <appliedenergistics2:material:55>, <ore:circuitGood>],
    [<appliedenergistics2:material:55>, <appliedenergistics2:material:23>, <appliedenergistics2:material:55>],
    [<ore:circuitGood>, <appliedenergistics2:material:55>, <ore:circuitGood>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitGood> * 4,
        <ore:plateAluminium> * 4,
        <ore:dustNetherQuartz> * 8,
        <appliedenergistics2:material:24>
    ]).
    outputs([<appliedenergistics2:material:56>]).
    duration(200).
    EUt(120).
    buildAndRegister();

# 64k Fluid Component
recipes.remove(<appliedenergistics2:material:57>);
recipes.addShaped(<appliedenergistics2:material:57>, [
    [<ore:circuitAdvanced>, <appliedenergistics2:material:56>, <ore:circuitAdvanced>],
    [<appliedenergistics2:material:56>, <appliedenergistics2:material:23>, <appliedenergistics2:material:56>],
    [<ore:circuitAdvanced>, <appliedenergistics2:material:56>, <ore:circuitAdvanced>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitAdvanced> * 4,
        <ore:plateStainlessSteel> * 4,
        <ore:dustNetherQuartz> * 8,
        <appliedenergistics2:material:24>
    ]).
    outputs([<appliedenergistics2:material:57>]).
    duration(200).
    EUt(480).
    buildAndRegister();

# 2k Spatial Component
recipes.remove(<appliedenergistics2:material:32>);
recipes.addShaped(<appliedenergistics2:material:32>, [
    [<ore:plateGlowstone>, <ore:pearlFluix>, <ore:plateGlowstone>],
    [<ore:pearlFluix>, <appliedenergistics2:material:22>, <ore:pearlFluix>],
    [<ore:plateGlowstone>, <ore:pearlFluix>, <ore:plateGlowstone>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitMaster> * 4,
        <ore:plateTungstenSteel> * 4,
        <ore:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ]).
    outputs([<appliedenergistics2:material:32>]).
    duration(200).
    EUt(30720).
    buildAndRegister();

# 16k Spatial Component
recipes.remove(<appliedenergistics2:material:33>);
recipes.addShaped(<appliedenergistics2:material:33>, [
    [<ore:plateEnderPearl>, <appliedenergistics2:material:32>, <ore:plateEnderPearl>],
    [<appliedenergistics2:material:32>, <appliedenergistics2:material:23>, <appliedenergistics2:material:32>],
    [<ore:plateEnderPearl>, <appliedenergistics2:material:32>, <ore:plateEnderPearl>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitMaster> * 4,
        <ore:plateTungstenSteel> * 4,
        <ore:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ]).
    outputs([<appliedenergistics2:material:33>]).
    duration(200).
    EUt(30720).
    buildAndRegister();


# 128k Spatial Component
recipes.remove(<appliedenergistics2:material:34>);
recipes.addShaped(<appliedenergistics2:material:34>, [
    [<ore:plateTungstenSteel>, <appliedenergistics2:material:33>, <ore:plateTungstenSteel>],
    [<appliedenergistics2:material:33>, <appliedenergistics2:material:24>, <appliedenergistics2:material:33>],
    [<ore:plateTungstenSteel>, <appliedenergistics2:material:33>, <ore:plateTungstenSteel>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitUltimate> * 4,
        <ore:plateNeutronium> * 4,
        <ore:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ]).
    outputs([<appliedenergistics2:material:34>]).
    duration(200).
    EUt(122880).
    buildAndRegister();

# Entropy Manipulator
recipes.remove(<appliedenergistics2:entropy_manipulator>);
recipes.addShaped(<appliedenergistics2:entropy_manipulator>, [
    [null, <appliedenergistics2:material:22>, <appliedenergistics2:material:7>],
    [null, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:24>],
    [<gregtech:meta_stick:324>, null, null]
]);

# Charged Staff
recipes.remove(<appliedenergistics2:charged_staff>);
recipes.addShaped(<appliedenergistics2:charged_staff>, [
    [null, <appliedenergistics2:material:1>, <appliedenergistics2:material:1>],
    [null, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:1>],
    [<gregtech:meta_stick:324>, null, null]
]);

# Matter Cannon
recipes.remove(<appliedenergistics2:matter_cannon>);
recipes.addShaped(<appliedenergistics2:matter_cannon>, [
    [<ore:plateAluminium>, <ore:plateAluminium>, <appliedenergistics2:material:43>],
    [<appliedenergistics2:material:36>, <appliedenergistics2:dense_energy_cell>, null],
    [<ore:plateAluminium>, null, null]
]);

# Color Applicator
recipes.remove(<appliedenergistics2:color_applicator>);
recipes.addShaped(<appliedenergistics2:color_applicator>, [
    [<ore:wireGtSingleAluminium>, <appliedenergistics2:material:43>, <ore:wireGtSingleAluminium>],
    [<appliedenergistics2:material:36>, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:36>],
    [null, <ore:stickSteel>, null]
]);

# Wireless Terminal
recipes.remove(<appliedenergistics2:wireless_terminal>);
recipes.addShaped(<appliedenergistics2:wireless_terminal>, [
    [<appliedenergistics2:material:41>, <appliedenergistics2:part:360>, <appliedenergistics2:material:41>],
    [<ore:plateNetherQuartz>, <appliedenergistics2:material:24>, <ore:plateNetherQuartz>],
    [<ore:plateNetherQuartz>, <appliedenergistics2:dense_energy_cell>, <ore:plateNetherQuartz>]
]);

# Biometric Card
recipes.remove(<appliedenergistics2:biometric_card>);
recipes.addShaped(<appliedenergistics2:biometric_card>, [
    [<appliedenergistics2:material:22>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>],
    [null, null, null]
]);

# Memory Card
recipes.remove(<appliedenergistics2:memory_card>);
recipes.addShaped(<appliedenergistics2:memory_card>, [
    [<appliedenergistics2:material:23>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>],
    [null, null, null]
]);

# Basic Card
recipes.remove(<appliedenergistics2:material:25>);
recipes.addShaped(<appliedenergistics2:material:25>, [
    [<ore:plateGold>, <ore:plateAluminium>, null],
    [<ore:plateRedAlloy>, <appliedenergistics2:material:23>, <ore:plateAluminium>],
    [<ore:plateGold>, <ore:plateAluminium>, null]
]);

# Capacity Card
recipes.remove(<appliedenergistics2:material:27>);
recipes.addShaped(<appliedenergistics2:material:27>, [
    [<appliedenergistics2:material:25>, <appliedenergistics2:material:35>, null],
    [<appliedenergistics2:material:35>, <appliedenergistics2:material:1>, null],
    [null, null, null]
]);

# Crafting Card
recipes.remove(<appliedenergistics2:material:53>);
recipes.addShaped(<appliedenergistics2:material:53>, [
    [<appliedenergistics2:material:25>, <appliedenergistics2:material:35>, null],
    [<appliedenergistics2:material:35>, <minecraft:crafting_table>, null],
    [null, null, null]
]);

# Redstone Card
recipes.remove(<appliedenergistics2:material:26>);
recipes.addShaped(<appliedenergistics2:material:26>, [
    [<appliedenergistics2:material:25>, <minecraft:redstone_torch>, null],
    [<minecraft:redstone_torch>, <appliedenergistics2:material:23>, null],
    [null, null, null]
]);

# Advanced Card
recipes.remove(<appliedenergistics2:material:28>);
recipes.addShaped(<appliedenergistics2:material:28>, [
    [<ore:platePlatinum>, <ore:plateAluminium>, null],
    [<ore:plateRedAlloy>, <appliedenergistics2:material:23>, <ore:plateAluminium>],
    [<ore:platePlatinum>, <ore:plateAluminium>, null]
]);

# Fuzzy Card
recipes.remove(<appliedenergistics2:material:29>);
recipes.addShaped(<appliedenergistics2:material:29>, [
    [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, null],[<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, null],
    [null, null, null]
]);

# Inverter Card
recipes.remove(<appliedenergistics2:material:31>);
recipes.addShaped(<appliedenergistics2:material:31>, [
    [<appliedenergistics2:material:28>, <gregtech:meta_item_1:302>, null],
    [<gregtech:meta_item_1:302>, <appliedenergistics2:material:23>, null],
    [null, null, null]
]);

# Pattern Expansion Card
recipes.remove(<appliedenergistics2:material:58>);
recipes.addShaped(<appliedenergistics2:material:58>, [
    [<appliedenergistics2:material:28>, <ore:ae2.interface.item>, null],
    [<ore:ae2.interface.fluid>, <appliedenergistics2:material:23>, null],
    [null, null, null]
]);
recipes.addShaped(<appliedenergistics2:material:58>, [
    [<appliedenergistics2:material:28>, <ore:ae2.interface.fluid>, null],
    [<ore:ae2.interface.item>, <appliedenergistics2:material:23>, null],
    [null, null, null]
]);

# Acceleration Card
recipes.remove(<appliedenergistics2:material:30>);
recipes.addShaped(<appliedenergistics2:material:30>, [
    [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, null],
    [<appliedenergistics2:material:22>, <ore:crystalFluix>, null],
    [null, null, null]
]);

# Fluix Pearl
recipes.remove(<appliedenergistics2:material:9>);
recipes.addShaped(<appliedenergistics2:material:9>, [
    [<ore:crystalPureFluix>, <ore:plateEnderPearl>, <ore:crystalPureFluix>],
    [<ore:plateEnderPearl>, <minecraft:ender_pearl>, <ore:plateEnderPearl>],
    [<ore:crystalPureFluix>, <ore:plateEnderPearl>, <ore:crystalPureFluix>]
]);
recipes.addShaped(<appliedenergistics2:material:9> * 2, [
    [<ore:crystalFluix>, <ore:plateEnderPearl>, <ore:crystalFluix>],
    [<ore:plateEnderPearl>, <minecraft:ender_pearl>, <ore:plateEnderPearl>],
    [<ore:crystalFluix>, <ore:plateEnderPearl>, <ore:crystalFluix>]
]);

# Wireless Receiver
recipes.remove(<appliedenergistics2:material:41>);
recipes.addShaped(<appliedenergistics2:material:41>, [
    [<appliedenergistics2:part:140>, <appliedenergistics2:material:9>, <appliedenergistics2:part:140>],
    [null, <ore:stickAluminium>, null],
    [<ore:plateCertusQuartz>, <ore:circuitAdvanced>, <ore:plateCertusQuartz>]
]);

# Wireless Boosting
recipes.remove(<appliedenergistics2:material:42>);
recipes.addShaped(<appliedenergistics2:material:42>, [
    [<appliedenergistics2:material:8>, <appliedenergistics2:material>, <ore:plateEnderPearl>],
    [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>],
    [null, null, null]
]);

# Annihilation Plane
recipes.remove(<appliedenergistics2:part:300>);
recipes.addShaped(<appliedenergistics2:part:300>, [
    [<ore:dustFluix>, <ore:dustFluix>, <ore:dustFluix>],
    [<ore:plateAluminium>, <appliedenergistics2:material:44>, <ore:plateAluminium>],
    [null, null, null]
]);

# Fulid Annihilation Plane
recipes.remove(<appliedenergistics2:part:302>);
recipes.addShaped(<appliedenergistics2:part:302>, [
    [<ore:dustFluix>, <ore:dustFluix>, <ore:dustFluix>],
    [<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>],
    [<ore:plateAluminium>, <appliedenergistics2:material:44>, <ore:plateAluminium>]
]);

# Formation Plane
recipes.remove(<appliedenergistics2:part:320>);
recipes.addShaped(<appliedenergistics2:part:320>, [
    [<ore:dustFluix>, <ore:dustFluix>, <ore:dustFluix>],
    [<ore:plateAluminium>, <appliedenergistics2:material:43>, <ore:plateAluminium>],
    [null, null, null]
]);

# Fulid Formation Plane
recipes.remove(<appliedenergistics2:part:321>);
recipes.addShaped(<appliedenergistics2:part:321>, [
    [<ore:dustFluix>, <ore:dustFluix>, <ore:dustFluix>],
    [<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>],
    [<ore:plateAluminium>, <appliedenergistics2:material:43>, <ore:plateAluminium>]
]);

# Fluix Crystal
mixer.recipeBuilder().
    inputs([
        <appliedenergistics2:material:1>,
        <ore:dustRedstone>,
        <ore:gemNetherQuartz>
    ]).
    fluidInputs([<liquid:distilled_water> * 500]).
    outputs([<appliedenergistics2:material:7> * 2]).
    duration(1000).
    EUt(30).
    buildAndRegister();

# Charged Certus Quartz Crystal
electrolyzer.recipeBuilder().
    inputs([<ore:crystalCertusQuartz>]).
    fluidInputs([<liquid:distilled_water> * 200]).
    outputs([<appliedenergistics2:material:1>]).
    duration(1000).
    EUt(30).
    buildAndRegister();

# Pure Certus Quartz Crystal
recipes.remove(<appliedenergistics2:crystal_seed>);
assembler.recipeBuilder().
    inputs([<ore:dustCertusQuartz>, <minecraft:sand>]).
    outputs([<appliedenergistics2:crystal_seed> * 2]).
    duration(200).
    EUt(480).
    buildAndRegister();
autoclave.recipeBuilder().
    inputs([<appliedenergistics2:crystal_seed>]).
    fluidInputs([<liquid:distilled_water> * 200]).
    outputs([<appliedenergistics2:material:10>]).
    duration(1000).
    EUt(30).
    buildAndRegister();

# Pure Nether Quartz Crystal
recipes.remove(<appliedenergistics2:crystal_seed:600>);
assembler.recipeBuilder().
    inputs([<ore:dustNetherQuartz>, <minecraft:sand>]).
    outputs([<appliedenergistics2:crystal_seed:600> * 2]).
    duration(200).
    EUt(480).
    buildAndRegister();
autoclave.recipeBuilder().
    inputs([<appliedenergistics2:crystal_seed:600>]).
    fluidInputs([<liquid:distilled_water> * 200]).
    outputs([<appliedenergistics2:material:11>]).
    duration(1000).
    EUt(30).
    buildAndRegister();

# Pure Fluix Crystal
recipes.remove(<appliedenergistics2:crystal_seed:1200>);
assembler.recipeBuilder().
    inputs([<ore:dustFluix>, <minecraft:sand>]).
    outputs([<appliedenergistics2:crystal_seed:1200> * 2]).
    duration(200).
    EUt(480).
    buildAndRegister();
autoclave.recipeBuilder().
    inputs([<appliedenergistics2:crystal_seed:1200>]).
    fluidInputs([<liquid:distilled_water> * 200]).
    outputs([<appliedenergistics2:material:12>]).
    duration(1000).
    EUt(30).
    buildAndRegister();

# Recycle - Storage Housing
polarizer.recipeBuilder().
    inputs([<appliedenergistics2:material:39>]).
    outputs([<ore:dustSteel>]).
    duration(100).
    EUt(16).
    buildAndRegister();



########################################
# Blocks
########################################
# Sky Srone
recipes.addShaped(<appliedenergistics2:sky_stone_block>, [
    [<extrautils2:compressedcobblestone:2>, <extrautils2:compressedcobblestone:2>, <extrautils2:compressedcobblestone:2>],
    [<extrautils2:compressedcobblestone:2>, <enderio:item_material:20>, <extrautils2:compressedcobblestone:2>],
    [<extrautils2:compressedcobblestone:2>, <extrautils2:compressedcobblestone:2>, <extrautils2:compressedcobblestone:2>]
]);

# Quartz Fiber
recipes.remove(<appliedenergistics2:part:140>);
wiremill.recipeBuilder().
    inputs([<ore:gemNetherQuartz>]).
    outputs([<appliedenergistics2:part:140>]).
    duration(100).
    EUt(4).
    buildAndRegister();
wiremill.recipeBuilder().
    inputs([<ore:crystalCertusQuartz>]).
    outputs([<appliedenergistics2:part:140> * 2]).
    duration(100).
    EUt(4).
    buildAndRegister();

# Glass Cable
recipes.remove(<appliedenergistics2:part:16> * 4);
recipes.addShaped(<appliedenergistics2:part:16> * 2, [
    [<ore:stickAluminium>, <ore:dustFluix>, <ore:stickAluminium>],
    [<appliedenergistics2:part:140>, <appliedenergistics2:part:140>, <appliedenergistics2:part:140>],
    [<ore:stickAluminium>, <ore:dustFluix>, <ore:stickAluminium>]
]);

# Covered Cable
recipes.removeShapeless(<appliedenergistics2:part:36>, [
    <ore:blockWool>, <appliedenergistics2:part:16>
]);
recipes.addShaped(<appliedenergistics2:part:36>, [
    [<ore:plateRubber>, <ore:craftingToolSaw>, <ore:plateRubber>],
    [<appliedenergistics2:part:140>, <appliedenergistics2:part:140>, <appliedenergistics2:part:140>],
    [<ore:plateRubber>, null, <ore:plateRubber>]
]);
recipes.addShaped(<appliedenergistics2:part:36>, [
    [<ore:plateRubber>, null, <ore:plateRubber>],
    [<appliedenergistics2:part:140>, <appliedenergistics2:part:140>, <appliedenergistics2:part:140>],
    [<ore:plateRubber>, <ore:craftingToolSaw>, <ore:plateRubber>]
]);

# ME Controller
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, [
    [<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>],
    [<appliedenergistics2:material:24>, <appliedenergistics2:fluix_block>, <appliedenergistics2:material:24>],
    [<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>]
]);

# Quartz Glass
recipes.remove(<appliedenergistics2:quartz_glass>);
alloy_smelter.recipeBuilder().
    inputs([
        <ore:blockGlass>,
        <ore:dustCertusQuartz>
    ]).
    outputs([<appliedenergistics2:quartz_glass>]).
    duration(50).
    EUt(16).
    buildAndRegister();

# Vibrant Quartz Glass
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
recipes.addShaped(<appliedenergistics2:quartz_vibrant_glass>, [
    [<minecraft:glowstone_dust>, <ore:plateGlowstone>, <minecraft:glowstone_dust>],
    [<ore:plateGlowstone>, <appliedenergistics2:quartz_glass>, <ore:plateGlowstone>],
    [<minecraft:glowstone_dust>, <ore:plateGlowstone>, <minecraft:glowstone_dust>]
]);
recipes.addShaped(<appliedenergistics2:quartz_vibrant_glass>, [
    [<ore:stickAluminium>, <ore:dustAluminium>, <ore:stickAluminium>],
    [<ore:dustAluminium>, <minecraft:glowstone>, <ore:dustAluminium>],
    [<ore:stickAluminium>, <ore:dustAluminium>, <ore:stickAluminium>]
]);

# Quartz Fixture
recipes.remove(<appliedenergistics2:quartz_fixture>);
recipes.addShapeless(<appliedenergistics2:quartz_fixture>, [
    <ore:gemCertusQuartz>,<ore:stickAluminium>
]);

# Charger
recipes.remove(<appliedenergistics2:charger>);
recipes.addShaped(<appliedenergistics2:charger>, [
    [<ore:plateAluminium>, <ore:crystalFluix>, <ore:plateAluminium>],
    [<ore:cableGtSingleAnnealedCopper>, <gregtech:machine:276>, <ore:cableGtSingleAnnealedCopper>],
    [<ore:plateAluminium>, <ore:crystalFluix>, <ore:plateAluminium>]
]);

# Security Terminal
recipes.remove(<appliedenergistics2:security_station>);
recipes.addShaped(<appliedenergistics2:security_station>, [
    [<ore:plateSteel>, <ore:chestWood>, <ore:plateSteel>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:material:36>, <ore:ae2.cable.glass>],
    [<ore:plateSteel>, <appliedenergistics2:material:22>, <ore:plateSteel>]
]);

# Quantum Ring
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.addShaped(<appliedenergistics2:quantum_ring>, [
    [<ore:plateAluminium>, <appliedenergistics2:material:22>, <ore:plateAluminium>],
    [<appliedenergistics2:material:24>, <appliedenergistics2:energy_cell>, <ore:ae2.cable.glass>],
    [<ore:plateAluminium>, <appliedenergistics2:material:22>, <ore:plateAluminium>]
]);

# Quantum Link
recipes.remove(<appliedenergistics2:quantum_link>);
recipes.addShaped(<appliedenergistics2:quantum_link>, [
    [<ore:plateGlass>, <ore:pearlFluix>, <ore:plateGlass>],
    [<ore:pearlFluix>, <ore:crystalFluix>, <ore:pearlFluix>],
    [<ore:plateGlass>, <ore:pearlFluix>, <ore:plateGlass>]
]);

# Spatial Pylon
recipes.remove(<appliedenergistics2:spatial_pylon>);
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [
    [<ore:plateGlass>, <ore:ae2.cable.glass>, <ore:plateGlass>],
    [<ore:dustFluix>, <ore:crystalFluix>, <ore:dustFluix>],
    [<ore:plateGlass>, <ore:ae2.cable.glass>, <ore:plateGlass>]
]);

# IO Port
recipes.remove(<appliedenergistics2:io_port>);
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [
    [<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:io_port>, <ore:ae2.cable.glass>],
    [<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]
]);

# Spatial IO Port
recipes.remove(<appliedenergistics2:spatial_io_port>);
recipes.addShaped(<appliedenergistics2:io_port>, [
    [<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
    [<appliedenergistics2:drive>, <ore:ae2.cable.glass>, <appliedenergistics2:drive>],
    [<ore:plateAluminium>, <appliedenergistics2:material:22>, <ore:plateAluminium>]
]);

# ME Chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [
    [<ore:plateStainlessSteel>, <ore:circuitBasic>, <ore:plateStainlessSteel>],
    [<ore:ae2.cable.glass>, <ore:chestWood>, <ore:ae2.cable.glass>],
    [<ore:plateStainlessSteel>, <ore:circuitBasic>, <ore:plateStainlessSteel>]
]);

# ME Drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [
    [<ore:plateTitanium>, <appliedenergistics2:material:24>, <ore:plateTitanium>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:chest>, <ore:ae2.cable.glass>],
    [<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>]
]);

# ME Interfere
recipes.removeShaped(<appliedenergistics2:interface>, [
    [<ore:ingotIron>, <ore:blockGlassColorless>, <ore:ingotIron>],
    [<appliedenergistics2:material:44>, null, <appliedenergistics2:material:43>],
    [<ore:ingotIron>, <ore:blockGlassColorless>, <ore:ingotIron>]
]);
recipes.addShaped(<appliedenergistics2:interface>, [
    [<ore:plateAluminium>, <ore:plateGlass>, <ore:plateAluminium>],
    [<appliedenergistics2:material:44>, <gregtech:machine_casing:2>, <appliedenergistics2:material:43>],
    [<ore:plateAluminium>, <ore:plateGlass>, <ore:plateAluminium>]
]);

# ME Fluid Interfere
recipes.removeShaped(<appliedenergistics2:fluid_interface>, [
    [<ore:ingotIron>, <ore:gemLapis>, <ore:ingotIron>],
    [<appliedenergistics2:material:44>, null, <appliedenergistics2:material:43>],
    [<ore:ingotIron>, <ore:gemLapis>, <ore:ingotIron>]
]);
recipes.addShaped(<appliedenergistics2:fluid_interface>, [
    [<ore:plateStainlessSteel>, <ore:plateGlass>, <ore:plateStainlessSteel>],
    [<appliedenergistics2:material:44>, <gregtech:machine_casing:3>, <appliedenergistics2:material:43>],
    [<ore:plateStainlessSteel>, <ore:plateGlass>, <ore:plateStainlessSteel>]
]);

# Cell Workbench
recipes.remove(<appliedenergistics2:cell_workbench>);
recipes.addShaped(<appliedenergistics2:cell_workbench>, [
    [<ore:blockWool>, <gregtech:meta_item_1:307>, <ore:blockWool>],
    [<ore:plateAluminium>, <appliedenergistics2:material:23>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]
]);

# Matter Condenser
recipes.remove(<appliedenergistics2:condenser>);
recipes.addShaped(<appliedenergistics2:condenser>, [
    [<ore:plateAluminium>, <gregtech:meta_item_1:173>, <ore:plateAluminium>],
    [<gregtech:meta_item_1:173>, <gregtech:machine:987>, <gregtech:meta_item_1:173>],
    [<ore:plateAluminium>, <gregtech:meta_item_1:173>, <ore:plateAluminium>]
]);

# Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [
    [<ore:plateAluminium>, <ore:plateGlass>, <ore:plateAluminium>],
    [<ore:plateGlass>, <ore:crystalFluix>, <ore:plateGlass>],
    [<ore:plateAluminium>, <ore:plateGlass>, <ore:plateAluminium>]
]);

# Vibration Chamber
recipes.remove(<appliedenergistics2:vibration_chamber>);
recipes.addShaped(<appliedenergistics2:vibration_chamber>, [
    [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <gregtech:machine:51>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:energy_acceptor>, <ore:plateAluminium>]
]);

# Energy Cell
recipes.remove(<appliedenergistics2:energy_cell>);
recipes.addShaped(<appliedenergistics2:energy_cell>, [
    [<ore:stickAluminium>, <ore:dustFluix>, <ore:stickAluminium>],
    [<ore:circuitAdvanced>, <appliedenergistics2:fluix_block>, <ore:circuitAdvanced>],
    [<ore:stickAluminium>, <ore:cableGtOctalAluminium>, <ore:stickAluminium>]
]);

# Dense Energy Cell
recipes.remove(<appliedenergistics2:dense_energy_cell>);
recipes.addShaped(<appliedenergistics2:dense_energy_cell>, [
    [<appliedenergistics2:energy_cell>, <appliedenergistics2:energy_cell>, <appliedenergistics2:energy_cell>],
    [<ore:circuitMaster>, <appliedenergistics2:material:24>, <ore:circuitMaster>],
    [<appliedenergistics2:energy_cell>, <gregtech:machine:1339>, <appliedenergistics2:energy_cell>]
]);

# Crafting Unit
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [
    [<ore:plateAluminium>, <appliedenergistics2:material:22>, <ore:plateAluminium>],
    [<ore:circuitBasic>, <appliedenergistics2:material:24>, <ore:circuitBasic>],
    [<ore:plateAluminium>, <appliedenergistics2:material:23>, <ore:plateAluminium>]
]);

# Crafting Co-Processing Unit
recipes.remove(<appliedenergistics2:crafting_accelerator>);
recipes.addShapeless(<appliedenergistics2:crafting_accelerator>, [
    <appliedenergistics2:crafting_unit>,<appliedenergistics2:material:23>,<appliedenergistics2:material:22>,<appliedenergistics2:material:24>
]);

# Molecular Assembler
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler>, [
    [<ore:plateAluminium>, <ore:paneGlassColorless>, <ore:plateAluminium>],
    [<appliedenergistics2:material:44>, <gregtech:machine:111>, <appliedenergistics2:material:43>],
    [<ore:plateAluminium>, <ore:paneGlassColorless>, <ore:plateAluminium>]
]);

# Light Detecting Fixture
recipes.remove(<appliedenergistics2:light_detector>);
recipes.addShapeless(<appliedenergistics2:light_detector>, [
    <appliedenergistics2:material:1>,<gregtech:meta_stick:51>
]);

# Illuminated Panel
recipes.remove(<appliedenergistics2:part:180>);
recipes.addShaped(<appliedenergistics2:part:180>, [
    [null, <ore:plateGlowstone>, null],
    [<ore:plateAluminium>, <ore:plateRedAlloy>, <gregtech:meta_item_1:307>],
    [null, <ore:plateGlowstone>, null]
]);

# Terminal
recipes.remove(<appliedenergistics2:part:380>);
recipes.addShaped(<appliedenergistics2:part:380>, [
    [<ore:stickAluminium>, <ore:screwAluminium>, <ore:stickAluminium>],
    [<appliedenergistics2:part:180>, <ore:circuitBasic>, <ore:plateAluminium>],
    [<ore:stickAluminium>, <ore:craftingToolScrewdriver>, <ore:stickAluminium>]
]);
recipes.addShaped(<appliedenergistics2:part:380>, [
    [<ore:stickAluminium>, <ore:craftingToolScrewdriver>, <ore:stickAluminium>],
    [<appliedenergistics2:part:180>, <ore:circuitBasic>, <ore:plateAluminium>],
    [<ore:stickAluminium>, <ore:screwAluminium>, <ore:stickAluminium>]
]);

# Crafting Terminal
recipes.remove(<appliedenergistics2:part:360>);
recipes.addShaped(<appliedenergistics2:part:360>, [
    [<ore:craftingToolScrewdriver>, <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>],
    [<ore:screwAluminium>, <minecraft:crafting_table>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]
]);
recipes.addShaped(<appliedenergistics2:part:360>, [
    [<ore:craftingToolSoftHammer>, <appliedenergistics2:part:380>, <ore:craftingToolScrewdriver>],
    [<ore:screwAluminium>, <minecraft:crafting_table>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]
]);

# Interface Terminal
recipes.remove(<appliedenergistics2:part:480>);
recipes.addShaped(<appliedenergistics2:part:480>, [
    [<ore:craftingToolScrewdriver>, <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>],
    [<ore:screwAluminium>, <appliedenergistics2:part:440>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]
]);
recipes.addShaped(<appliedenergistics2:part:480>, [
    [<ore:craftingToolSoftHammer>, <appliedenergistics2:part:380>, <ore:craftingToolScrewdriver>],
    [<ore:screwAluminium>, <appliedenergistics2:part:440>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]
]);

# P2P Tunnel
recipes.remove(<appliedenergistics2:part:460>);
recipes.addShaped(<appliedenergistics2:part:460>, [
    [<appliedenergistics2:material:24>, <ore:plateAluminium>, <appliedenergistics2:material:24>],
    [<ore:plateAluminium>, <appliedenergistics2:part:180>, <ore:plateAluminium>],
    [<ore:crystalPureFluix>, <ore:crystalPureFluix>, <ore:crystalPureFluix>]
]);

# Pattrern Terminal
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShaped(<appliedenergistics2:part:340>, [
    [<ore:craftingToolScrewdriver>, <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>],
    [<ore:screwAluminium>, <appliedenergistics2:material:52>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]
]);

# Storage Bus
recipes.remove(<appliedenergistics2:part:220>);
recipes.addShaped(<appliedenergistics2:part:220>, [
    [<ore:plateAluminium>, <ore:craftingToolSoftHammer>, <ore:plateAluminium>],
    [<gregtech:meta_item_1:158>, <ore:ae2.interface.item>, <gregtech:meta_item_1:158>],
    [<ore:plateAluminium>, <minecraft:chest>, <ore:plateAluminium>]
]);
recipes.addShaped(<appliedenergistics2:part:220>, [
    [<ore:plateAluminium>, <minecraft:chest>, <ore:plateAluminium>],
    [<gregtech:meta_item_1:158>, <ore:ae2.interface.item>, <gregtech:meta_item_1:158>],
    [<ore:plateAluminium>, <ore:craftingToolSoftHammer>, <ore:plateAluminium>]
]);

# Import Bus
recipes.remove(<appliedenergistics2:part:240>);
recipes.addShaped(<appliedenergistics2:part:240>, [
    [null, <appliedenergistics2:material:44>, null],
    [<ore:plateAluminium>, <minecraft:sticky_piston>, <ore:plateAluminium>],
    [null, null, null]
]);

# Fluid Import Bus
recipes.remove(<appliedenergistics2:part:241>);
recipes.addShapeless(<appliedenergistics2:part:241>, [
    <appliedenergistics2:part:240>, <gregtech:meta_item_1:144>
]);

# Export Bus
recipes.remove(<appliedenergistics2:part:260>);
recipes.addShaped(<appliedenergistics2:part:260>, [
    [<ore:plateAluminium>, <appliedenergistics2:material:43>, <ore:plateAluminium>],
    [null, <minecraft:piston>, null],
    [null, null, null]
]);

# Fluid Export Bus
recipes.remove(<appliedenergistics2:part:261>);
recipes.addShapeless(<appliedenergistics2:part:261>, [
    <appliedenergistics2:part:260>, <gregtech:meta_item_1:144>
]);

# Toggle Bus
recipes.remove(<appliedenergistics2:part:80>);
recipes.removeShaped(<appliedenergistics2:part:80>, [
    [null, <minecraft:redstone>, null],
    [<appliedenergistics2:part:16>, <minecraft:lever>, <appliedenergistics2:part:16>],
    [null, <minecraft:redstone>, null]
]);
recipes.addShaped(<appliedenergistics2:part:80>, [
    [null, <gregtech:meta_plate:2517>, null],
    [<appliedenergistics2:part:16>, <minecraft:lever>, <appliedenergistics2:part:16>],
    [null, <gregtech:meta_plate:2517>, null]
]);
