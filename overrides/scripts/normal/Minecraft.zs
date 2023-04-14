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

# Book (Override)
extractor.findRecipe(2, [<minecraft:bookshelf:0>], null).remove();
extractor.recipeBuilder()
    .inputs([<ore:bookshelf>])
    .outputs([<minecraft:book> * 3])
    .duration(300)
    .EUt(2)
    .buildAndRegister();
