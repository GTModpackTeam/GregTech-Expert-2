#packmode normal



########################################
# Items
########################################
# Lead
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
    .duration(200)
    .EUt(2)
    .buildAndRegister();

# Iron Nugget
recipes.addShapeless(<minecraft:iron_nugget> * 9, [<minecraft:iron_ingot>]);

# Gold Nugget
recipes.addShapeless(<minecraft:gold_nugget> * 9, [<minecraft:gold_ingot>]);

# Ender Pearl
recipes.addShaped(<minecraft:ender_pearl>, [
    [null, <enderio:item_material:62>, null],
    [<enderio:item_material:62>, <enderio:item_material:62>, <enderio:item_material:62>],
    [null, <enderio:item_material:62>, null]
]);

# Fermented Spider Eye
recipes.removeShapeless(<minecraft:fermented_spider_eye>, [
    <minecraft:spider_eye>, <minecraft:brown_mushroom>, <minecraft:sugar>
]);



########################################
# Blocks
########################################
# Granite
recipes.removeShapeless(<minecraft:stone:1>);

# Diorite
recipes.remove(<minecraft:stone:3>);

# Andesite
recipes.removeShapeless(<minecraft:stone:5>);

# Comparator
recipes.removeShaped(<minecraft:comparator>, [
    [null, <minecraft:redstone_torch>, null],
    [<minecraft:redstone_torch>, <ore:gemNetherQuartz>, <minecraft:redstone_torch>],
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>]
]);

# Brewing Stand
recipes.remove(<minecraft:brewing_stand>);
recipes.addShaped(<minecraft:brewing_stand>, [
    [<ore:ringSteel>, <ore:stickBlaze>, <ore:ringSteel>],
    [<ore:stickSteel>, <ore:stickBlaze>, <ore:stickSteel>],
    [<ore:screwSteel>, <minecraft:cauldron>, <ore:screwSteel>]
]);

# Nether Quartz Block
recipes.remove(<minecraft:quartz_block>);
compressor.recipeBuilder()
    .inputs([<ore:crystalPureNetherQuartz> * 8])
    .outputs([<minecraft:quartz_block>])
    .duration(300)
    .EUt(2)
    .buildAndRegister();

# Chest
assembler.findRecipe(4, [
    <metaitem:plateWood> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})
], null).remove();
assembler.recipeBuilder()
    .circuit(8)
    .inputs([<ore:plankWood> * 8])
    .outputs([<minecraft:chest>])
    .duration(200)
    .EUt(4)
    .buildAndRegister();

# Ender Chest
recipes.remove(<minecraft:ender_chest>);

# End Rod
recipes.remove(<minecraft:end_rod>);

# Daylight Detector
recipes.removeShaped(<minecraft:daylight_detector>, [
    [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
    [<ore:gemNetherQuartz>, <ore:gemNetherQuartz>, <ore:gemNetherQuartz>],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);

# Beacon
assembler.recipeBuilder()
    .inputs([
        <minecraft:obsidian> * 3,
        <minecraft:nether_star>
    ])
    .fluidInputs([<liquid:glass> * 720])
    .outputs([<minecraft:beacon>])
    .duration(100)
    .EUt(16)
    .buildAndRegister();
