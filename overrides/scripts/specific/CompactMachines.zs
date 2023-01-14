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
    [<metaitem:emitter.mv>, <minecraft:book>, <metaitem:emitter.mv>],
    [null, <ore:circuitMv>, null]
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
    .EUt(120)
    .buildAndRegister();

# Redstone Tunnel
assembler.recipeBuilder()
    .inputs([
        <metaitem:cover.activity.detector>,
        <metaitem:component.resistor>
    ])
    .outputs([<compactmachines3:redstonetunneltool> * 4])
    .duration(100)
    .EUt(120)
    .buildAndRegister();



########################################
# Blocks
########################################
# Compact Machine Wall
recipes.addShaped(<compactmachines3:wallbreakable> * 8, [
    [<metaitem:frameSteel>, <metaitem:frameSteel>, <metaitem:frameSteel>],
    [<metaitem:frameSteel>, <metaitem:sensor.mv>, <metaitem:frameSteel>],
    [<metaitem:frameSteel>, <metaitem:frameSteel>, <metaitem:frameSteel>]
]);

# Tiny Compact Machine
assembler.recipeBuilder()
    .inputs([
        <compactmachines3:wallbreakable> * 8,
        <metaitem:field.generator.mv>
    ])
    .outputs([<compactmachines3:machine>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Small Compact Machine
assembler.recipeBuilder()
    .inputs([
        <compactmachines3:wallbreakable> * 16,
        <metaitem:field.generator.hv>
    ])
    .outputs([<compactmachines3:machine:1>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Normal Compact Machine
assembler.recipeBuilder()
    .inputs([
        <compactmachines3:wallbreakable> * 24,
        <metaitem:field.generator.ev>
    ])
    .outputs([<compactmachines3:machine:2>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();

# Large Compact Machine
assembler.recipeBuilder()
    .inputs([
        <compactmachines3:wallbreakable> * 32,
        <metaitem:field.generator.iv>
    ])
    .outputs([<compactmachines3:machine:3>])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();

# Giant Compact Machine
assembler.recipeBuilder()
    .inputs([
        <compactmachines3:wallbreakable> * 40,
        <metaitem:field.generator.luv>
    ])
    .outputs(<compactmachines3:machine:4>)
    .duration(200)
    .EUt(30720)
    .buildAndRegister();

# Maximum Compact Machine
assembler.recipeBuilder()
    .inputs([
        <compactmachines3:wallbreakable> * 48,
        <metaitem:field.generator.zpm>
    ])
    .outputs(<compactmachines3:machine:5>)
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
