# Imoprts
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
    assembler.recipeBuilder().
        notConsumable([<gregtech:meta_item_1:15>]).
        fluidInputs([<liquid:glass> * 144]).
        circuit(i).
        outputs([flask]).
        duration(100).
        EUt(480).
        buildAndRegister();
}



########################################
# Blocks
########################################
# Buffer
recipes.remove(<volumetricflask:buffer>);
recipes.addShaped(<volumetricflask:buffer>, [
    [<ore:flask>, <ore:flask>, <ore:flask>],
    [<ore:flask>, <gregtech:machine:1512>, <ore:flask>],
    [<ore:flask>, <ore:flask>, <ore:flask>]
]);

# Filler
recipes.remove(<volumetricflask:filler>);
recipes.addShapeless(<volumetricflask:filler>, [<appliedenergistics2:interface>,<ore:flask>]);
