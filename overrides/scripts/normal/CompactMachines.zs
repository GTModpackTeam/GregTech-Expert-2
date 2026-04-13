#modloaded compactmachines3
# Imports
import mods.jei.JEI;

JEI.hideCategory("compactmachines3.MultiblockMiniaturization");
JEI.removeAndHide(<compactmachines3:fieldprojector>);



########################################
# Items
########################################
# Personal Shrinking Device
recipes.removeByRecipeName("compactmachines3:psd");
recipes.addShaped(<compactmachines3:psd>, [
    [null, <metaitem:cover.screen>, null],
    [<metaitem:emitter.lv>, <minecraft:book>, <metaitem:emitter.lv>],
    [null, <ore:circuitLv>, null]
]);

# Tunnel
assembler.recipeBuilder()
    .inputs([
        <metaitem:cover.energy.detector>,
        <metaitem:cover.item.detector>,
        <metaitem:cover.fluid.detector>
    ])
    .outputs([<compactmachines3:tunneltool> * 4])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Redstone Tunnel
assembler.recipeBuilder()
    .inputs([
        <metaitem:cover.activity.detector>,
        <metaitem:component.resistor>
    ])
    .outputs([<compactmachines3:redstonetunneltool> * 4])
    .duration(100)
    .EUt(30)
    .buildAndRegister();



########################################
# Blocks
########################################
# Compact Machine Wall
recipes.addShaped(<compactmachines3:wallbreakable> * 8, [
    [<metaitem:frameSteel>, <metaitem:frameSteel>, <metaitem:frameSteel>],
    [<metaitem:frameSteel>, <metaitem:sensor.lv>, <metaitem:frameSteel>],
    [<metaitem:frameSteel>, <metaitem:frameSteel>, <metaitem:frameSteel>]
]);

# Tiny Compact Machine
packer.recipeBuilder()
    .inputs([
        <compactmachines3:wallbreakable> * 8,
        <gtexpert:meta_item_1:17>
    ])
    .outputs([<compactmachines3:machine:0>])
    .duration(200)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<compactmachines3:machine:0>])
    .outputs([
        <compactmachines3:wallbreakable> * 8,
        <gtexpert:meta_item_1:17>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Small Compact Machine
packer.recipeBuilder()
    .inputs([
        <compactmachines3:wallbreakable> * 16,
        <metaitem:field.generator.lv>
    ])
    .outputs([<compactmachines3:machine:1>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<compactmachines3:machine:1>])
    .outputs([
        <compactmachines3:wallbreakable> * 16,
        <metaitem:field.generator.lv>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Normal Compact Machine
packer.recipeBuilder()
    .inputs([
        <compactmachines3:wallbreakable> * 24,
        <metaitem:field.generator.mv>
    ])
    .outputs([<compactmachines3:machine:2>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<compactmachines3:machine:2>])
    .outputs([
        <compactmachines3:wallbreakable> * 24,
        <metaitem:field.generator.mv>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Large Compact Machine
packer.recipeBuilder()
    .inputs([
        <compactmachines3:wallbreakable> * 32,
        <metaitem:field.generator.hv>
    ])
    .outputs([<compactmachines3:machine:3>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<compactmachines3:machine:3>])
    .outputs([
        <compactmachines3:wallbreakable> * 32,
        <metaitem:field.generator.hv>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Giant Compact Machine
packer.recipeBuilder()
    .inputs([
        <compactmachines3:wallbreakable> * 40,
        <metaitem:field.generator.ev>
    ])
    .outputs(<compactmachines3:machine:4>)
    .duration(200)
    .EUt(1920)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<compactmachines3:machine:4>])
    .outputs([
        <compactmachines3:wallbreakable> * 40,
        <metaitem:field.generator.ev>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Maximum Compact Machine
packer.recipeBuilder()
    .inputs([
        <compactmachines3:wallbreakable> * 48,
        <metaitem:field.generator.iv>
    ])
    .outputs(<compactmachines3:machine:5>)
    .duration(200)
    .EUt(7680)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<compactmachines3:machine:5>])
    .outputs([
        <compactmachines3:wallbreakable> * 48,
        <metaitem:field.generator.iv>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
