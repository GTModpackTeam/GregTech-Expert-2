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
    <ore:craftFlask>.addItems([flasks[i]]);
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
<ore:craftFlask>.addTooltip(format.red("VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!"));



########################################
# Blocks
########################################
# Interface
<ore:craftInterfaceFlask>.addItems([
    <volumetricflask:o_interface>,
    <volumetricflask:part_o_interface>
]);

# Interface
recipes.remove(<volumetricflask:o_interface>);
recipes.addShapeless(<volumetricflask:o_interface>, [<volumetricflask:part_o_interface>]);
recipes.addShaped(<volumetricflask:o_interface>, [
    [<metaitem:plateDoubleStainlessSteel>, <metaitem:plateGlass>, <metaitem:plateDoubleStainlessSteel>],
    [<gtexpert:meta_item_1:1>, <gregtech:machine_casing:3>, <gtexpert:meta_item_1:1>],
    [<metaitem:plateDoubleStainlessSteel>, <metaitem:plateGlass>, <metaitem:plateDoubleStainlessSteel>]
]);
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <gregtech:machine_casing:3>,
        <gtexpert:meta_item_1:1>,
        <metaitem:plateGlass>,
        <metaitem:plateDoubleStainlessSteel> * 2
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<volumetricflask:o_interface>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<ore:craftInterfaceFlask>])
    .outputs([<appliedenergistics2:fluid_interface>, <metaitem:plateStainlessSteel> * 4])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
<volumetricflask:part_o_interface>.addTooltip(format.red("VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!"));
<volumetricflask:o_interface>.addTooltip(format.red("VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!"));

# Buffer
recipes.remove(<volumetricflask:buffer>);
recipes.addShaped(<volumetricflask:buffer>, [
    [<ore:craftFlask>, <ore:craftFlask>, <ore:craftFlask>],
    [<ore:craftFlask>, <gregtech:machine:1512>, <ore:craftFlask>],
    [<ore:craftFlask>, <ore:craftFlask>, <ore:craftFlask>]
]);
packer.recipeBuilder()
    .inputs([<volumetricflask:buffer>])
    .outputs([<metaitem:buffer.hv>, <metaitem:plateGlass> * 8])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
<volumetricflask:buffer>.addTooltip(format.red("VolumetricFlask is out of support, please move AE2 Fluid Crafting Rework!!"));

# Filler
recipes.remove(<volumetricflask:filler>);
assembler.recipeBuilder()
    .inputs([
        <ore:craftFlask> * 2,
        <ore:circuitHv> * 2,
        <metaitem:plateTitanium> * 4,
        <ore:craftAssemblerFluid>
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
