#modloaded volumetricflask
# Imports
import mods.jei.JEI;
import crafttweaker.item.IItemStack;


########################################
# Items
########################################
# Flask
var flasks as IItemStack[] = [
    <volumetricflask:volumetric_flask_16>.withEmptyTag(),
    <volumetricflask:volumetric_flask_32>.withEmptyTag(),
    <volumetricflask:volumetric_flask_18>.withEmptyTag(),
    <volumetricflask:volumetric_flask_36>.withEmptyTag(),
    <volumetricflask:volumetric_flask_72>.withEmptyTag(),
    <volumetricflask:volumetric_flask_144>.withEmptyTag(),
    <volumetricflask:volumetric_flask_100>.withEmptyTag(),
    <volumetricflask:volumetric_flask_1000>.withEmptyTag(),
    <volumetricflask:volumetric_flask_50>.withEmptyTag(),
    <volumetricflask:volumetric_flask_250>.withEmptyTag(),
    <volumetricflask:volumetric_flask_2000>.withEmptyTag(),
    <volumetricflask:volumetric_flask_4000>.withEmptyTag(),
    <volumetricflask:volumetric_flask_8000>.withEmptyTag(),
    <volumetricflask:volumetric_flask_16000>.withEmptyTag(),
    <volumetricflask:volumetric_flask_32000>.withEmptyTag(),
    <volumetricflask:volumetric_flask_64000>.withEmptyTag(),
    <volumetricflask:volumetric_flask_33>.withEmptyTag(),
    <volumetricflask:volumetric_flask_133>.withEmptyTag(),
    <volumetricflask:volumetric_flask_300>.withEmptyTag()
];
for flask in flasks {
    recipes.remove(flask);
}
for i, flask in flasks {
    <ore:flask>.addItems([flasks[i]]);
    assembler.recipeBuilder()
        .circuit(i + 1)
        .notConsumable([<metaitem:shape.mold.bottle>])
        .fluidInputs([<liquid:glass> * 144])
        .outputs([flask])
        .duration(20)
        .EUt(480)
        .buildAndRegister();
}
for i, flask in flasks {
    extractor.recipeBuilder()
        .inputs([flask])
        .fluidOutputs([<liquid:glass> * 144])
        .duration(10)
        .EUt(7)
        .buildAndRegister();
}
<ore:flask>.addTooltip(format.red("VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!"));
JEI.addDescription(<ore:flask>, "VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!");



########################################
# Blocks
########################################
# Interface
<ore:ae2.interface.flask>.addItems([
    <volumetricflask:o_interface>,
    <volumetricflask:part_o_interface>
]);

# Interface
recipes.remove(<volumetricflask:o_interface>);
recipes.addShapeless(<volumetricflask:o_interface>, [<volumetricflask:part_o_interface>]);
recipes.addShaped(<volumetricflask:o_interface>, [
    [<metaitem:plateDoubleStainlessSteel>, <metaitem:plateGlass>, <metaitem:plateDoubleStainlessSteel>],
    [<metaitem:matrix_core>, <gregtech:machine_casing:3>, <metaitem:matrix_core>],
    [<metaitem:plateDoubleStainlessSteel>, <metaitem:plateGlass>, <metaitem:plateDoubleStainlessSteel>]
]);
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <gregtech:machine_casing:3>,
        <metaitem:matrix_core>,
        <metaitem:plateGlass>,
        <metaitem:plateDoubleStainlessSteel> * 2
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<volumetricflask:o_interface>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<ore:ae2.interface.flask>])
    .outputs([<appliedenergistics2:fluid_interface>, <metaitem:plateStainlessSteel> * 4])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
<volumetricflask:part_o_interface>.addTooltip(format.red("VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!"));
JEI.addDescription(<volumetricflask:part_o_interface>, "VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!");
<volumetricflask:o_interface>.addTooltip(format.red("VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!"));
JEI.addDescription(<volumetricflask:o_interface>, "VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!");

# Buffer
recipes.remove(<volumetricflask:buffer>);
recipes.addShaped(<volumetricflask:buffer>, [
    [<ore:flask>, <ore:flask>, <ore:flask>],
    [<ore:flask>, <gregtech:machine:1512>, <ore:flask>],
    [<ore:flask>, <ore:flask>, <ore:flask>]
]);
packer.recipeBuilder()
    .inputs([<volumetricflask:buffer>])
    .outputs([<metaitem:buffer.hv>, <metaitem:plateGlass> * 8])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
<volumetricflask:buffer>.addTooltip(format.red("VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!"));
JEI.addDescription(<volumetricflask:buffer>, "VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!");

# Filler
recipes.remove(<volumetricflask:filler>);
assembler.recipeBuilder()
    .inputs([
        <ore:flask> * 2,
        <ore:circuitHv> * 2,
        <metaitem:plateTitanium> * 4,
        <ore:ae2.fluid.assembler>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<volumetricflask:filler>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<volumetricflask:filler>])
    .outputs([<ae2fc:fluid_assembler>, <metaitem:circuit.advanced_integrated> * 2])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
<volumetricflask:filler>.addTooltip(format.red("VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!"));
JEI.addDescription(<volumetricflask:filler>, "VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!");
