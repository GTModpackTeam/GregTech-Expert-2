#packmode normal
# Imports
import mods.jei.JEI;
import mods.appliedenergistics2.Inscriber;

JEI.hideCategory("appliedenergistics2.grinder");
JEI.hideCategory("appliedenergistics2.inscriber");



########################################
# Items
########################################
# Ender Dust
<ore:dustEnder>.remove(<appliedenergistics2:material:46>);
<ore:dustEnderPearl>.remove(<appliedenergistics2:material:46>);
JEI.hide(<appliedenergistics2:material:46>);

# Wooden Gear
JEI.removeAndHide(<appliedenergistics2:material:40>);
<ore:gearWood>.remove(<appliedenergistics2:material:40>);

# Net Visualizer
recipes.remove(<aenetvistool:net_visualizer>);
recipes.addShaped(<aenetvistool:net_visualizer>, [
    [<ore:plateAluminium>, <appliedenergistics2:material:43> | <appliedenergistics2:material:44>, <ore:plateAluminium>],
    [<appliedenergistics2:network_tool>, <appliedenergistics2:material:41>, <appliedenergistics2:entropy_manipulator>],
    [<ore:plateAluminium>, <appliedenergistics2:material:44> | <appliedenergistics2:material:43>, <ore:plateAluminium>]
]);

# Inscriber Calulation Press
Inscriber.removeRecipe(<appliedenergistics2:material:13>);
laser_engraver.recipeBuilder()
    .inputs([<ore:blockWroughtIron>])
    .notConsumable([<metaitem:glass_lens.light_blue>])
    .outputs([<appliedenergistics2:material:13>])
    .duration(2000)
    .EUt(480)
    .buildAndRegister();

# Inscriber Engineering Press
Inscriber.removeRecipe(<appliedenergistics2:material:14>);
laser_engraver.recipeBuilder()
    .inputs([<ore:blockIron>])
    .notConsumable([<metaitem:glass_lens.yellow>])
    .outputs([<appliedenergistics2:material:14>])
    .duration(2000)
    .EUt(480)
    .buildAndRegister();

# Inscriber Logic Press
Inscriber.removeRecipe(<appliedenergistics2:material:15>);
laser_engraver.recipeBuilder()
    .inputs([<ore:blockWroughtIron>])
    .notConsumable([<metaitem:glass_lens.lime>])
    .outputs([<appliedenergistics2:material:15>])
    .duration(2000)
    .EUt(480)
    .buildAndRegister();

# Inscriber Silicon Press
Inscriber.removeRecipe(<appliedenergistics2:material:19>);
laser_engraver.recipeBuilder()
    .inputs([<ore:blockIron>])
    .notConsumable([<metaitem:glass_lens.light_gray>])
    .outputs([<appliedenergistics2:material:19>])
    .duration(2000)
    .EUt(480)
    .buildAndRegister();

# Printed Calulation Circuit
Inscriber.removeRecipe(<appliedenergistics2:material:16>);
forming_press.recipeBuilder()
    .inputs([<ore:plateCertusQuartz>])
    .notConsumable(<appliedenergistics2:material:13>)
    .outputs([<appliedenergistics2:material:16>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Printed Engineering Circuit
Inscriber.removeRecipe(<appliedenergistics2:material:17>);
forming_press.recipeBuilder()
    .inputs([<ore:plateDiamond>])
    .notConsumable(<appliedenergistics2:material:14>)
    .outputs([<appliedenergistics2:material:17>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Printed Logic Circuit
Inscriber.removeRecipe(<appliedenergistics2:material:18>);
forming_press.recipeBuilder()
    .inputs([<ore:plateGold>])
    .notConsumable(<appliedenergistics2:material:15>)
    .outputs([<appliedenergistics2:material:18>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Printed Silicon
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
forming_press.recipeBuilder()
    .inputs([<ore:plateSilicon>])
    .notConsumable(<appliedenergistics2:material:19>)
    .outputs([<appliedenergistics2:material:20>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Calulation Processor
Inscriber.removeRecipe(<appliedenergistics2:material:23>);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:16>,
        <appliedenergistics2:material:20>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<appliedenergistics2:material:23>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Engineering Processor
Inscriber.removeRecipe(<appliedenergistics2:material:24>);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:17>,
        <appliedenergistics2:material:20>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<appliedenergistics2:material:24>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Logic Processor
Inscriber.removeRecipe(<appliedenergistics2:material:22>);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:18>,
        <appliedenergistics2:material:20>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<appliedenergistics2:material:22>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

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
assembler.recipeBuilder()
    .inputs([
        <ore:stickAluminium> * 4,
        <appliedenergistics2:material:24> * 4,
        <ore:gemNetherQuartz> | <ore:crystalPureNetherQuartz>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:material:43> * 4])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

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
assembler.recipeBuilder()
    .inputs([
        <ore:stickAluminium> * 4,
        <appliedenergistics2:material:24> * 4,
        <ore:gemCertusQuartz> | <ore:crystalPureCertusQuartz>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:material:44> * 4])
    .duration(56)
    .EUt(7680)
    .buildAndRegister();

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
    [<ore:gtce.tool.screwdrivers> | <ore:gtce.tool.hard.hammers>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, null, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:gtce.tool.hard.hammers> | <ore:gtce.tool.screwdrivers>]
]);

# Creative Storage Cell
JEI.hide(<appliedenergistics2:creative_storage_cell>);

# 1k Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_1k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:35>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

# 4k Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_4k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:36>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

# 16k Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_16k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:37>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

# 64k Storage Cell
recipes.removeShaped(<appliedenergistics2:storage_cell_64k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:38>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

# 1k Fluid Cell
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_1k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:54>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

# 4k Fluid Cell
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_4k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:55>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

# 16k Fluid Cell
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_16k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:56>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

# 64k Fluid Cell
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_64k>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:57>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

# 2k Spatial Cell
recipes.removeShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:32>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

# 16k Spatial Cell
recipes.removeShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:33>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

# 128k Spatial Cell
recipes.removeShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>, [
    [<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
    [<minecraft:redstone>, <appliedenergistics2:material:34>, <minecraft:redstone>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

# 1k Storage Component
recipes.remove(<appliedenergistics2:material:35>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitPrimitive> * 4,
        <ore:plateLead> * 4,
        <ore:dustCertusQuartz> * 4,
        <appliedenergistics2:material:22>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:35>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# 4k Storage Component
recipes.remove(<appliedenergistics2:material:36>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitAdvanced> * 4,
        <ore:plateIron> * 4,
        <ore:dustCertusQuartz> * 4,
        <appliedenergistics2:material:22>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:36>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:22>,
        <ore:circuitAdvanced> * 4,
        <appliedenergistics2:material:35> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:36>])
    .duration(400)
    .EUt(480)
    .buildAndRegister();

# 16k Storage Component
recipes.remove(<appliedenergistics2:material:37>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitAdvanced> * 4,
        <ore:plateAluminium> * 4,
        <ore:dustCertusQuartz> * 8,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:37>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitAdvanced> * 4,
        <appliedenergistics2:material:36> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:37>])
    .duration(400)
    .EUt(480)
    .buildAndRegister();

# 64k Storage Component
recipes.remove(<appliedenergistics2:material:38>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitAdvanced> * 4,
        <ore:plateStainlessSteel> * 4,
        <ore:dustCertusQuartz> * 8,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:38>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitAdvanced> * 4,
        <appliedenergistics2:material:37> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:38>])
    .duration(400)
    .EUt(480)
    .buildAndRegister();

# 1k Fluid Component
recipes.remove(<appliedenergistics2:material:54>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitPrimitive> * 4,
        <ore:plateLead> * 4,
        <ore:dustNetherQuartz> * 4,
        <appliedenergistics2:material:22>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:54>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# 4k Fluid Component
recipes.remove(<appliedenergistics2:material:55>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitAdvanced> * 4,
        <ore:plateIron> * 4,
        <ore:dustNetherQuartz> * 4,
        <appliedenergistics2:material:22>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:55>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:22>,
        <ore:circuitAdvanced> * 4,
        <appliedenergistics2:material:54> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:55>])
    .duration(400)
    .EUt(480)
    .buildAndRegister();

# 16k Fluid Component
recipes.remove(<appliedenergistics2:material:56>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitAdvanced> * 4,
        <ore:plateAluminium> * 4,
        <ore:dustNetherQuartz> * 8,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:56>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitAdvanced> * 4,
        <appliedenergistics2:material:55> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:56>])
    .duration(400)
    .EUt(480)
    .buildAndRegister();

# 64k Fluid Component
recipes.remove(<appliedenergistics2:material:57>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitAdvanced> * 4,
        <ore:plateStainlessSteel> * 4,
        <ore:dustNetherQuartz> * 8,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:57>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitAdvanced> * 4,
        <appliedenergistics2:material:56> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:57>])
    .duration(400)
    .EUt(480)
    .buildAndRegister();

# 2k Spatial Component
recipes.remove(<appliedenergistics2:material:32>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitElite> * 4,
        <ore:plateTungstenSteel> * 4,
        <ore:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:32>])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();

# 16k Spatial Component
recipes.remove(<appliedenergistics2:material:33>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitMaster> * 4,
        <ore:plateTungstenSteel> * 4,
        <ore:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:33>])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitMaster> * 4,
        <appliedenergistics2:material:32> * 4
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:33>])
    .duration(400)
    .EUt(30720)
    .buildAndRegister();

# 128k Spatial Component
recipes.remove(<appliedenergistics2:material:34>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUltimate> * 4,
        <ore:plateNeutronium> * 4,
        <ore:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:34>])
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitUltimate> * 4,
        <appliedenergistics2:material:33> * 4
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:34>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# Certus Quartz Cutting Knife
recipes.remove(<appliedenergistics2:certus_quartz_cutting_knife>);
recipes.addShaped(<appliedenergistics2:certus_quartz_cutting_knife>, [
    [<ore:gtce.tool.files>, <ore:plateCertusQuartz>, <ore:gtce.tool.hard.hammers>],
    [<ore:crystalCertusQuartz>, <ore:stickWood>, <ore:crystalCertusQuartz>],
    [null, <ore:stickWood>, null]
]);

# Nether Quartz Cutting Knife
recipes.remove(<appliedenergistics2:nether_quartz_cutting_knife>);
recipes.addShaped(<appliedenergistics2:nether_quartz_cutting_knife>, [
    [<ore:gtce.tool.files>, <ore:plateNetherQuartz>, <ore:gtce.tool.hard.hammers>],
    [<ore:gemNetherQuartz>, <ore:stickWood>, <ore:gemNetherQuartz>],
    [null, <ore:stickWood>, null]
]);

# Certus Quartz Wrench
recipes.remove(<appliedenergistics2:certus_quartz_wrench>);
recipes.addShaped(<appliedenergistics2:certus_quartz_wrench>, [
    [<ore:plateCertusQuartz>, <ore:gtce.tool.hard.hammers>, <ore:plateCertusQuartz>],
    [<ore:plateCertusQuartz>, <ore:plateCertusQuartz>, <ore:plateCertusQuartz>],
    [null, <ore:plateCertusQuartz>, null]
]);

# Nether Quartz Wrench
recipes.remove(<appliedenergistics2:nether_quartz_wrench>);
recipes.addShaped(<appliedenergistics2:nether_quartz_wrench>, [
    [<ore:plateNetherQuartz>, <ore:gtce.tool.hard.hammers>, <ore:plateNetherQuartz>],
    [<ore:plateNetherQuartz>, <ore:plateNetherQuartz>, <ore:plateNetherQuartz>],
    [null, <ore:plateNetherQuartz>, null]
]);

# Entropy Manipulator
recipes.remove(<appliedenergistics2:entropy_manipulator>);
recipes.addShaped(<appliedenergistics2:entropy_manipulator>, [
    [null, <appliedenergistics2:material:22>, <appliedenergistics2:material:7>],
    [null, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:24>],
    [<metaitem:stickSteel>, null, null]
]);

# Charged Staff
recipes.remove(<appliedenergistics2:charged_staff>);
recipes.addShaped(<appliedenergistics2:charged_staff>, [
    [null, <appliedenergistics2:material:1>, <appliedenergistics2:material:1>],
    [null, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:1>],
    [<metaitem:stickSteel>, null, null]
]);

# Matter Cannon
recipes.remove(<appliedenergistics2:matter_cannon>);
recipes.addShaped(<appliedenergistics2:matter_cannon>, [
    [<ore:plateSteel>, <ore:plateSteel>, <appliedenergistics2:material:43>],
    [<appliedenergistics2:material:36>, <appliedenergistics2:dense_energy_cell>, null],
    [<ore:plateSteel>, null, null]
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
    [<appliedenergistics2:material:41>, <appliedenergistics2:part:380>, <appliedenergistics2:material:41>],
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
    [<appliedenergistics2:material:28>, <metaitem:cover.activity.detector>, null],
    [<metaitem:cover.activity.detector>, <appliedenergistics2:material:23>, null],
    [null, null, null]
]);

# Pattern Expansion Card
recipes.remove(<appliedenergistics2:material:58>);
recipes.addShapeless(<appliedenergistics2:material:58>, [
    <appliedenergistics2:material:28>, <ore:ae2.interface.item>, 
    <ore:ae2.interface.fluid>, <appliedenergistics2:material:23>,
]);
recipes.addShapeless(<appliedenergistics2:material:58>, [
    <appliedenergistics2:material:28>, <ore:ae2.interface.fluid>, 
    <ore:ae2.interface.item>, <appliedenergistics2:material:23>
]);

# Acceleration Card
recipes.remove(<appliedenergistics2:material:30>);
recipes.addShaped(<appliedenergistics2:material:30>, [
    [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, null],
    [<appliedenergistics2:material:22>, <ore:crystalFluix> | <ore:crystalPureFluix>, null],
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
    [<ore:ae2.cable.glass>, <appliedenergistics2:material:9>, <ore:ae2.cable.glass>],
    [<metaitem:sensor.ev>, <ore:stickTitanium>, <metaitem:sensor.ev>],
    [<ore:plateCertusQuartz>, <ore:circuitExtreme>, <ore:plateCertusQuartz>]
]);

# Wireless Boosting
recipes.remove(<appliedenergistics2:material:42>);
recipes.addShaped(<appliedenergistics2:material:42>, [
    [<ore:dustFluix>, <ore:crystalCertusQuartz>, <ore:plateEnderPearl>],
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
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

# Certus Quartz Dust
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:material>])
    .outputs([<metaitem:dustCertusQuartz>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:quartz_block>])
    .outputs([<metaitem:dustCertusQuartz> * 4])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Charged Certus Quartz Dust
electrolyzer.recipeBuilder()
    .inputs([<ore:dustCertusQuartz>])
    .outputs([<metaitem:dustChargedCertusQuartz>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:material:1>])
    .outputs([<metaitem:dustChargedCertusQuartz>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Fluix Dust
mixer.recipeBuilder()
    .inputs([
        <ore:dustChargedCertusQuartz>,
        <ore:dustRedstone>,
        <ore:dustNetherQuartz>
    ])
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs([<metaitem:dustFluix>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:material:7>])
    .outputs([<metaitem:dustFluix>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:fluix_block>])
    .outputs([<metaitem:dustFluix> * 4])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Certus Quartz Crystal
JEI.removeAndHide(<appliedenergistics2:material> * 4);

# Charged Certus Quartz Crystal
electrolyzer.recipeBuilder()
    .inputs([<ore:crystalCertusQuartz>])
    .outputs([<appliedenergistics2:material:1>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<ore:dustChargedCertusQuartz>])
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs([<appliedenergistics2:material:1>])
    .duration(600)
    .EUt(24)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<ore:dustChargedCertusQuartz>])
    .fluidInputs([<liquid:water> * 250])
    .chancedOutput(<appliedenergistics2:material:1>, 7000, 1000)
    .duration(1200)
    .EUt(24)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<ore:dustChargedCertusQuartz> * 4])
    .property("explosives", <minecraft:tnt> * 2)
    .outputs([
        <appliedenergistics2:material:1> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<ore:dustChargedCertusQuartz> * 4])
    .property("explosives", <metaitem:dynamite>)
    .outputs([
        <appliedenergistics2:material:1> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Fluix Crystal
recipes.removeShapeless(<appliedenergistics2:material:7> * 4, [<appliedenergistics2:fluix_block>]);
mixer.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:1>,
        <ore:dustRedstone>,
        <ore:gemNetherQuartz>
    ])
    .fluidInputs([<liquid:distilled_water> * 144])
    .outputs([<appliedenergistics2:material:7>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<ore:dustFluix>])
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs([<appliedenergistics2:material:7>])
    .duration(600)
    .EUt(24)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<ore:dustFluix>])
    .fluidInputs([<liquid:water> * 250])
    .chancedOutput(<appliedenergistics2:material:7>, 7000, 1000)
    .duration(1200)
    .EUt(24)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<ore:dustFluix> * 4])
    .property("explosives", <minecraft:tnt> * 2)
    .outputs([
        <appliedenergistics2:material:7> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<ore:dustFluix> * 4])
    .property("explosives", <metaitem:dynamite>)
    .outputs([
        <appliedenergistics2:material:7> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Pure Certus Quartz Crystal
recipes.remove(<appliedenergistics2:crystal_seed>);
mixer.recipeBuilder()
    .inputs([<ore:dustCertusQuartz>, <ore:sand>])
    .outputs([<appliedenergistics2:crystal_seed> * 2])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<appliedenergistics2:crystal_seed>])
    .fluidInputs([<liquid:distilled_water> * 144])
    .outputs([<appliedenergistics2:material:10>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Pure Nether Quartz Crystal
recipes.remove(<appliedenergistics2:crystal_seed:600>);
mixer.recipeBuilder()
    .inputs([<ore:dustNetherQuartz>, <ore:sand>])
    .outputs([<appliedenergistics2:crystal_seed:600> * 2])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<appliedenergistics2:crystal_seed:600>])
    .fluidInputs([<liquid:distilled_water> * 144])
    .outputs([<appliedenergistics2:material:11>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Pure Fluix Crystal
recipes.remove(<appliedenergistics2:crystal_seed:1200>);
mixer.recipeBuilder()
    .inputs([<ore:dustFluix>, <ore:sand>])
    .outputs([<appliedenergistics2:crystal_seed:1200> * 2])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<appliedenergistics2:crystal_seed:1200>])
    .fluidInputs([<liquid:distilled_water> * 144])
    .outputs([<appliedenergistics2:material:12>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Recycle - Storage Housing
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:material:39>])
    .outputs([<metaitem:dustSteel>])
    .duration(20)
    .EUt(16)
    .buildAndRegister();



########################################
# Blocks
########################################
# Quartz Block
recipes.remove(<appliedenergistics2:quartz_block>);
recipes.remove(<appliedenergistics2:quartz_pillar>);
recipes.remove(<appliedenergistics2:chiseled_quartz_block>);
compressor.recipeBuilder()
    .inputs([<ore:crystalCertusQuartz> * 4])
    .outputs([<appliedenergistics2:quartz_block>])
    .duration(300)
    .EUt(2)
    .buildAndRegister();
compressor.recipeBuilder()
    .inputs([<ore:crystalPureCertusQuartz> * 8])
    .outputs([<appliedenergistics2:quartz_block>])
    .duration(300)
    .EUt(2)
    .buildAndRegister();

# Fluix Block
recipes.remove(<appliedenergistics2:fluix_block>);
compressor.recipeBuilder()
    .inputs([<ore:crystalFluix> * 4])
    .outputs([<appliedenergistics2:fluix_block>])
    .duration(300)
    .EUt(2)
    .buildAndRegister();
compressor.recipeBuilder()
    .inputs([<ore:crystalPureFluix> * 8])
    .outputs([<appliedenergistics2:fluix_block>])
    .duration(300)
    .EUt(2)
    .buildAndRegister();

# Sky Srone
recipes.addShaped(<appliedenergistics2:sky_stone_block>, [
    [<ore:compressed3xDustBedrock>, <ore:compressed3xDustBedrock>, <ore:compressed3xDustBedrock>],
    [<ore:compressed3xDustBedrock>, <ore:dustObsidian>, <ore:compressed3xDustBedrock>],
    [<ore:compressed3xDustBedrock>, <ore:compressed3xDustBedrock>, <ore:compressed3xDustBedrock>]
]);

# Quartz Fiber
recipes.remove(<appliedenergistics2:part:140>);
wiremill.recipeBuilder()
    .inputs([<ore:gemNetherQuartz> | <ore:crystalPureNetherQuartz>])
    .outputs([<appliedenergistics2:part:140>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
wiremill.recipeBuilder()
    .inputs([<ore:crystalPureCertusQuartz> | <ore:crystalCertusQuartz> | <ore:gemQuartzite>])
    .outputs([<appliedenergistics2:part:140> * 2])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Glass Cable
recipes.remove(<appliedenergistics2:part:16> * 4);
recipes.addShaped(<appliedenergistics2:part:16> * 6, [
    [<ore:stickAluminium>, <ore:dustFluix>, <ore:stickAluminium>],
    [<appliedenergistics2:part:140>, <appliedenergistics2:part:140>, <appliedenergistics2:part:140>],
    [<ore:stickAluminium>, <ore:dustFluix>, <ore:stickAluminium>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:stickAluminium> * 2,
        <appliedenergistics2:part:140> * 3,
        <ore:dustFluix>,
    ])
    .outputs([<appliedenergistics2:part:16> * 6])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.glass.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:16>])
    .duration(8)
    .EUt(480)
    .buildAndRegister();

# Covered Cable
recipes.removeShapeless(<appliedenergistics2:part:36>, [
    <ore:wool>, <ore:ae2.cable.glass>
]);
recipes.addShaped(<appliedenergistics2:part:36>, [
    [<ore:plateStyreneButadieneRubber> | <ore:plateSiliconeRubber> | <ore:plateRubber>, <ore:plateStyreneButadieneRubber> | <ore:plateSiliconeRubber> | <ore:plateRubber>, <ore:plateStyreneButadieneRubber> | <ore:plateSiliconeRubber> | <ore:plateRubber>],
    [<ore:ae2.cable.glass>, <ore:ae2.cable.glass>, <ore:ae2.cable.glass>],
    [<ore:plateStyreneButadieneRubber> | <ore:plateSiliconeRubber> | <ore:plateRubber>, <ore:plateStyreneButadieneRubber> | <ore:plateSiliconeRubber> | <ore:plateRubber>, <ore:plateStyreneButadieneRubber> | <ore:plateSiliconeRubber> | <ore:plateRubber>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<appliedenergistics2:part:16> * 3])
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 108])
    .outputs([<appliedenergistics2:part:36>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<appliedenergistics2:part:16> * 3])
    .fluidInputs([<liquid:silicone_rubber> * 216])
    .outputs([<appliedenergistics2:part:36>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<appliedenergistics2:part:16> * 3])
    .fluidInputs([<liquid:rubber> * 432])
    .outputs([<appliedenergistics2:part:36>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.covered.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:36>])
    .duration(8)
    .EUt(480)
    .buildAndRegister();

# Smart Cable
recipes.removeShapeless(<appliedenergistics2:part:56>, [
    <appliedenergistics2:part:36>, <ore:dustRedstone>, <ore:dustGlowstone>
]);
recipes.addShaped(<appliedenergistics2:part:56>, [
    [null, <ore:dustGlowstone> | <ore:dustRedstone>, null],
    [<ore:dustRedstone> | <ore:dustGlowstone>, <appliedenergistics2:part:36>, <ore:dustRedstone> | <ore:dustGlowstone>],
    [null, <ore:dustGlowstone> | <ore:dustRedstone>, null]
]);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:dustRedstone>,
        <ore:dustGlowstone>,
        <appliedenergistics2:part:36>
    ])
    .outputs([<appliedenergistics2:part:56>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:dustRedstone>,
        <ore:dustGlowstone>,
        <appliedenergistics2:part:16> * 3
    ])
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 108])
    .outputs([<appliedenergistics2:part:56>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:dustRedstone>,
        <ore:dustGlowstone>,
        <appliedenergistics2:part:16> * 3
    ])
    .fluidInputs([<liquid:silicone_rubber> * 216])
    .outputs([<appliedenergistics2:part:56>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:dustRedstone>,
        <ore:dustGlowstone>,
        <appliedenergistics2:part:16> * 3
    ])
    .fluidInputs([<liquid:rubber> * 432])
    .outputs([<appliedenergistics2:part:56>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.smart.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:56>])
    .duration(8)
    .EUt(480)
    .buildAndRegister();

# Dense Covered Cable
recipes.removeShapeless(<appliedenergistics2:part:516>, [
    <appliedenergistics2:part:36>, <appliedenergistics2:part:36>,
    <appliedenergistics2:part:36>, <appliedenergistics2:part:36>
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<appliedenergistics2:part:36> * 4])
    .outputs([<appliedenergistics2:part:516>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<appliedenergistics2:part:16> * 12])
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 432])
    .outputs([<appliedenergistics2:part:516>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<appliedenergistics2:part:16> * 12])
    .fluidInputs([<liquid:silicone_rubber> * 864])
    .outputs([<appliedenergistics2:part:516>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<appliedenergistics2:part:16> * 12])
    .fluidInputs([<liquid:rubber> * 1728])
    .outputs([<appliedenergistics2:part:516>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.dense.covered.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:516>])
    .duration(8)
    .EUt(480)
    .buildAndRegister();

# Dense Smart Cable
recipes.removeShapeless(<appliedenergistics2:part:76>, [
    <appliedenergistics2:part:516>, <ore:dustRedstone>, <ore:dustGlowstone>
]);
recipes.addShaped(<appliedenergistics2:part:76>, [
    [null, <ore:dustGlowstone> | <ore:dustRedstone>, null],
    [<ore:dustRedstone> | <ore:dustGlowstone>, <appliedenergistics2:part:516>, <ore:dustRedstone> | <ore:dustGlowstone>],
    [null, <ore:dustGlowstone> | <ore:dustRedstone>, null]
]);
assembler.recipeBuilder()
    .circuit(4)
    .inputs([<appliedenergistics2:part:56> * 4])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <ore:dustRedstone>,
        <ore:dustGlowstone>,
        <appliedenergistics2:part:516>
    ])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <ore:dustRedstone>,
        <ore:dustGlowstone>,
        <appliedenergistics2:part:36> * 4
    ])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <ore:dustRedstone>,
        <ore:dustGlowstone>,
        <appliedenergistics2:part:16> * 12
    ])
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 432])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <ore:dustRedstone>,
        <ore:dustGlowstone>,
        <appliedenergistics2:part:16> * 12
    ])
    .fluidInputs([<liquid:silicone_rubber> * 864])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <ore:dustRedstone>,
        <ore:dustGlowstone>,
        <appliedenergistics2:part:16> * 12
    ])
    .fluidInputs([<liquid:rubber> * 1728])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.dense.smart.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:76>])
    .duration(8)
    .EUt(480)
    .buildAndRegister();

# ME Controller
recipes.remove(<appliedenergistics2:controller>);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24> * 2,
        <ore:circuitAdvanced> * 2,
        <ore:plateTitanium> * 4,
        <appliedenergistics2:fluix_block>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:controller>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Quartz Glass
recipes.remove(<appliedenergistics2:quartz_glass>);
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:blockGlass>,
        <ore:dustCertusQuartz> | <ore:dustQuartzite>
    ])
    .outputs([<appliedenergistics2:quartz_glass>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

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
    <ore:gemCertusQuartz>, <ore:stickAluminium>
]);

# Charger
JEI.removeAndHide(<appliedenergistics2:charger>);
JEI.addDescription(<appliedenergistics2:charger>, "Use GT TurboCharger.");
<appliedenergistics2:charger>.addTooltip(format.green("Use GT TurboCharger."));

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
    [<ore:plateTitanium>, <appliedenergistics2:material:22>, <ore:plateTitanium>],
    [<appliedenergistics2:material:24>, <appliedenergistics2:dense_energy_cell>, <ore:ae2.cable.glass>],
    [<ore:plateTitanium>, <appliedenergistics2:material:22>, <ore:plateTitanium>]
]);

# Quantum Link
recipes.remove(<appliedenergistics2:quantum_link>);
recipes.addShaped(<appliedenergistics2:quantum_link>, [
    [<ore:plateGlass>, <ore:pearlFluix>, <ore:plateGlass>],
    [<ore:pearlFluix>, <appliedenergistics2:quartz_vibrant_glass>, <ore:pearlFluix>],
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
    [<ore:plateSteel>, <appliedenergistics2:material:24>, <ore:plateSteel>]
]);

# Spatial IO Port
recipes.remove(<appliedenergistics2:spatial_io_port>);
recipes.addShaped(<appliedenergistics2:io_port>, [
    [<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:drive>, <ore:ae2.cable.glass>],
    [<ore:plateSteel>, <appliedenergistics2:material:22>, <ore:plateSteel>]
]);

# ME Chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [
    [<ore:plateSteel>, <ore:circuitAdvanced>, <ore:plateSteel>],
    [<ore:ae2.cable.glass>, <ore:chestWood>, <ore:ae2.cable.glass>],
    [<ore:plateSteel>, <ore:circuitAdvanced>, <ore:plateSteel>]
]);

# ME Drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [
    [<ore:plateTitanium>, <appliedenergistics2:material:24>, <ore:plateTitanium>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:chest>, <ore:ae2.cable.glass>],
    [<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>]
]);

# ME Interface
recipes.removeShaped(<appliedenergistics2:interface>, [
    [<ore:ingotIron>, <ore:blockGlassColorless>, <ore:ingotIron>],
    [<appliedenergistics2:material:44>, null, <appliedenergistics2:material:43>],
    [<ore:ingotIron>, <ore:blockGlassColorless>, <ore:ingotIron>]
]);
recipes.addShaped(<appliedenergistics2:interface>, [
    [<ore:plateSteel>, <ore:plateGlass>, <ore:plateSteel>],
    [<appliedenergistics2:material:44>, <gregtech:machine_casing:3>, <appliedenergistics2:material:43>],
    [<ore:plateSteel>, <ore:plateGlass>, <ore:plateSteel>]
]);

# ME Fluid Interface
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
    [<ore:wool> | <ore:blockWool>, <metaitem:cover.screen>, <ore:wool> | <ore:blockWool>],
    [<ore:plateAluminium>, <appliedenergistics2:material:23>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]
]);

# Matter Condenser
recipes.remove(<appliedenergistics2:condenser>);
recipes.addShaped(<appliedenergistics2:condenser>, [
    [<ore:plateSteel>, <metaitem:electric.piston.hv>, <ore:plateSteel>],
    [<metaitem:electric.piston.hv>, <metaitem:hull.hv>, <metaitem:electric.piston.hv>],
    [<ore:plateSteel>, <metaitem:electric.piston.hv>, <ore:plateSteel>]
]);

# Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [
    [<ore:plateSteel>, <ore:plateGlass>, <ore:plateSteel>],
    [<ore:plateGlass>, <ore:crystalFluix>, <ore:plateGlass>],
    [<ore:plateSteel>, <ore:plateGlass>, <ore:plateSteel>]
]);

# Vibration Chamber
recipes.remove(<appliedenergistics2:vibration_chamber>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitAdvanced> * 2,
        <ore:cableGtSingleGold> * 2,
        <ore:wireGtDoubleKanthal> * 4,
        <ore:plateSteel> * 7
    ])
    .outputs([<appliedenergistics2:vibration_chamber>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

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
    [<ore:plateSteel>, <appliedenergistics2:material:22>, <ore:plateSteel>],
    [<ore:circuitAdvanced>, <appliedenergistics2:material:24>, <ore:circuitAdvanced>],
    [<ore:plateSteel>, <appliedenergistics2:material:23>, <ore:plateSteel>]
]);

# Crafting Co-Processing Unit
recipes.remove(<appliedenergistics2:crafting_accelerator>);
recipes.addShapeless(<appliedenergistics2:crafting_accelerator>, [
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:24>
]);

# Molecular Assembler
recipes.remove(<appliedenergistics2:molecular_assembler>);
assembler.recipeBuilder()
    .inputs([
        <ore:paneGlassColorless> * 2,
        <ore:circuitAdvanced> * 2,
        <metaitem:conveyor.module.hv> * 2,
        <metaitem:robot.arm.hv> * 2,
        <ore:plateSteel> * 4
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:molecular_assembler>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Light Detecting Fixture
recipes.remove(<appliedenergistics2:light_detector>);
recipes.addShapeless(<appliedenergistics2:light_detector>, [
    <appliedenergistics2:material:1>, <ore:stickIron>
]);

# Illuminated Panel
recipes.remove(<appliedenergistics2:part:180>);
recipes.addShaped(<appliedenergistics2:part:180>, [
    [null, <ore:plateGlowstone>, null],
    [<ore:plateAluminium>, <ore:plateRedAlloy>, <metaitem:cover.screen>],
    [null, <ore:plateGlowstone>, null]
]);

# Terminal
recipes.remove(<appliedenergistics2:part:380>);
recipes.addShaped(<appliedenergistics2:part:380>, [
    [<ore:stickAluminium>, <ore:screwAluminium> | <ore:gtce.tool.screwdrivers>, <ore:stickAluminium>],
    [<appliedenergistics2:part:180>, <ore:circuitAdvanced>, <ore:plateAluminium>],
    [<ore:stickAluminium>, <ore:gtce.tool.screwdrivers> | <ore:screwAluminium>, <ore:stickAluminium>]
]);

# Crafting Terminal
recipes.remove(<appliedenergistics2:part:360>);
recipes.addShaped(<appliedenergistics2:part:360>, [
    [<ore:gtce.tool.screwdrivers> | <ore:gtce.tool.soft.hammers>, <appliedenergistics2:part:380>, <ore:gtce.tool.soft.hammers> | <ore:gtce.tool.screwdrivers>],
    [<ore:screwAluminium>, <minecraft:crafting_table>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]
]);

# Interface Terminal
recipes.remove(<appliedenergistics2:part:480>);
recipes.addShaped(<appliedenergistics2:part:480>, [
    [<ore:gtce.tool.screwdrivers> | <ore:gtce.tool.soft.hammers>, <appliedenergistics2:part:380>, <ore:gtce.tool.soft.hammers> | <ore:gtce.tool.screwdrivers>],
    [<ore:screwAluminium>, <ore:ae2.interface.item>, <ore:screwAluminium>],
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
    [<ore:gtce.tool.screwdrivers> | <ore:gtce.tool.soft.hammers>, <appliedenergistics2:part:380>, <ore:gtce.tool.soft.hammers> | <ore:gtce.tool.screwdrivers>],
    [<ore:screwAluminium>, <appliedenergistics2:material:52>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]
]);

# Extended Processing Pattrern Terminal
recipes.remove(<appliedenergistics2:part:341>);
recipes.addShaped(<appliedenergistics2:part:341>, [
    [<ore:gtce.tool.screwdrivers> | <ore:gtce.tool.soft.hammers>, <appliedenergistics2:part:340>, <ore:gtce.tool.soft.hammers> | <ore:gtce.tool.screwdrivers>],
    [<ore:screwAluminium>, <appliedenergistics2:material:52>, <ore:screwAluminium>],
    [<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]
]);

# Storage Bus
recipes.remove(<appliedenergistics2:part:220>);
recipes.addShaped(<appliedenergistics2:part:220>, [
    [<ore:plateAluminium>, <ore:gtce.tool.soft.hammers>, <ore:plateAluminium>],
    [<metaitem:conveyor.module.hv>, <ore:ae2.interface.item>, <metaitem:conveyor.module.hv>],
    [<ore:plateAluminium>, null, <ore:plateAluminium>]
]);

# Fluid Bus
recipes.remove(<appliedenergistics2:part:221>);
recipes.removeShapeless(<appliedenergistics2:fluid_interface>, [<extracells:ecbaseblock>]);
recipes.removeShapeless(<appliedenergistics2:fluid_interface>, [<extracells:part.base:9>]);
recipes.addShaped(<appliedenergistics2:part:221>, [
    [<ore:plateStainlessSteel>, <ore:gtce.tool.soft.hammers>, <ore:plateStainlessSteel>],
    [<metaitem:electric.pump.hv>, <ore:ae2.interface.fluid>, <metaitem:electric.pump.hv>],
    [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>]
]);

# OreDict Storage Bus
recipes.removeShapeless(<appliedenergistics2:part:222>);
recipes.addShaped(<appliedenergistics2:part:222>, [
    [<ore:plateAluminium>, <ore:gtce.tool.soft.hammers>, <ore:plateAluminium>],
    [<metaitem:conveyor.module.ev>, <appliedenergistics2:part:220>, <metaitem:conveyor.module.ev>],
    [<ore:plateAluminium>, <metaitem:ore_dictionary_filter>, <ore:plateAluminium>]
]);

# Import Bus
JEI.removeAndHide(<appliedenergistics2:part:240>);
JEI.addDescription(<appliedenergistics2:part:240>, "Lag device. Use interface.");
<appliedenergistics2:part:240>.addTooltip(format.green("Lag device. Use interface."));

# Fluid Import Bus
JEI.removeAndHide(<appliedenergistics2:part:241>);
JEI.addDescription(<appliedenergistics2:part:241>, "Lag device. Use Fluid interface.");
<appliedenergistics2:part:241>.addTooltip(format.green("Lag device. Use Fluid interface."));

# Export Bus
JEI.removeAndHide(<appliedenergistics2:part:260>);
JEI.addDescription(<appliedenergistics2:part:260>, "Lag device. Use interface.");
<appliedenergistics2:part:260>.addTooltip(format.green("Lag device. Use interface."));

# Fluid Export Bus
JEI.removeAndHide(<appliedenergistics2:part:261>);
JEI.addDescription(<appliedenergistics2:part:261>, "Lag device. Use Fluid interface.");
<appliedenergistics2:part:261>.addTooltip(format.green("Lag device. Use Fluid interface."));

# Toggle Bus
recipes.remove(<appliedenergistics2:part:80>);
recipes.removeShaped(<appliedenergistics2:part:80>, [
    [null, <minecraft:redstone>, null],
    [<ore:ae2.cable.glass>, <minecraft:lever>, <ore:ae2.cable.glass>],
    [null, <minecraft:redstone>, null]
]);
recipes.addShaped(<appliedenergistics2:part:80>, [
    [null, <ore:plateRedAlloy>, null],
    [<ore:ae2.cable.glass>, <minecraft:lever>, <ore:ae2.cable.glass>],
    [null, <ore:plateRedAlloy>, null]
]);
