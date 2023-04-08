# Imports



########################################
# Items
########################################
# Fireworks Rocket
recipes.addShapeless(<minecraft:fireworks>.withTag({Fireworks: {Flight: 1}}) * 3, [
    <minecraft:paper>, <minecraft:gunpowder>
]);
recipes.addShapeless(<minecraft:fireworks>.withTag({Fireworks: {Flight: 2}}) * 3, [
    <minecraft:paper>, <minecraft:gunpowder>, <minecraft:gunpowder>
]);
recipes.addShapeless(<minecraft:fireworks>.withTag({Fireworks: {Flight: 3}}) * 3, [
    <minecraft:paper>, <minecraft:gunpowder>,
    <minecraft:gunpowder>, <minecraft:gunpowder>
]);

# Lead (Override)
recipes.remove(<minecraft:lead>);
recipes.addShaped(<minecraft:lead>, [
    [<minecraft:string>, <minecraft:string>, <minecraft:string>],
    [<minecraft:string>, <minecraft:slime_ball> | <metaitem:rubber_drop>, <minecraft:string>],
    [<minecraft:string>, <minecraft:string>, <minecraft:string>]
]);
assembler.findRecipe(2, [<minecraft:string:0> * 4, <minecraft:slime_ball>], null).remove();
assembler.recipeBuilder()
    .inputs([
        <minecraft:string> * 4,
        <minecraft:slime_ball> | <metaitem:rubber_drop>
    ])
    .outputs([<minecraft:lead> * 2])
    .duration(100)
    .EUt(2)
    .buildAndRegister();

# Book (Override)
extractor.findRecipe(2, [<minecraft:bookshelf:0>], null).remove();
extractor.recipeBuilder()
    .inputs([<ore:bookshelf>])
    .outputs([<minecraft:book> * 3])
    .duration(300)
    .EUt(2)
    .buildAndRegister();



########################################
# Blocks
########################################
# Brewing Stand
recipes.remove(<minecraft:brewing_stand>);
recipes.addShaped(<minecraft:brewing_stand>, [
    [<metaitem:ringSteel>, <minecraft:blaze_rod>, <metaitem:ringSteel>],
    [<metaitem:stickSteel>, <minecraft:blaze_rod>, <metaitem:stickSteel>],
    [<metaitem:screwSteel>, <minecraft:cauldron>, <metaitem:screwSteel>]
]);
