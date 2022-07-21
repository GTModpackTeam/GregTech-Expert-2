#packmode normal
# Imports
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



########################################
# Blocks
########################################
# Interface
recipes.remove(<volumetricflask:o_interface>);
recipes.addShapeless(<volumetricflask:o_interface>, [<volumetricflask:part_o_interface>]);
recipes.addShaped(<volumetricflask:o_interface>, [
    [<metaitem:plateDoubleStainlessSteel>, <metaitem:plateGlass>, <metaitem:plateDoubleStainlessSteel>],
    [<contenttweaker:matrixcore>, <gregtech:machine_casing:3>, <contenttweaker:matrixcore>],
    [<metaitem:plateDoubleStainlessSteel>, <metaitem:plateGlass>, <metaitem:plateDoubleStainlessSteel>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <gregtech:machine_casing:3>,
        <contenttweaker:matrixcore>,
        <metaitem:plateGlass>,
        <metaitem:plateDoubleStainlessSteel> * 2
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<volumetricflask:o_interface>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Buffer
recipes.remove(<volumetricflask:buffer>);
recipes.addShaped(<volumetricflask:buffer>, [
    [<ore:flask>, <ore:flask>, <ore:flask>],
    [<ore:flask>, <gregtech:machine:1512>, <ore:flask>],
    [<ore:flask>, <ore:flask>, <ore:flask>]
]);

# Filler
recipes.remove(<volumetricflask:filler>);
assembler.recipeBuilder()
    .inputs([
        <ore:flask> * 2,
        <ore:circuitHv> * 2,
        <metaitem:plateTitanium> * 4,
        <aeadditions:fluidcrafter>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<volumetricflask:filler>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();
