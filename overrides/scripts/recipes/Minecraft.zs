########################################
# Items
########################################
# Charcoal
furnace.remove(<minecraft:coal:1>);

# Stick
recipes.remove(<minecraft:stick> * 16);

# Iron Nugget
recipes.addShapeless(<minecraft:iron_nugget> * 9, [<minecraft:iron_ingot>]);

# Gold Nugget
recipes.addShapeless(<minecraft:gold_nugget> * 9, [<minecraft:gold_ingot>]);

# Comparator
recipes.removeShaped(<minecraft:comparator>, [
    [null, <minecraft:redstone_torch>, null],
    [<minecraft:redstone_torch>, <ore:gemQuartz>, <minecraft:redstone_torch>],
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>]
]);



########################################
# Blocks
########################################
# Sand
mixer.recipeBuilder().
    inputs([<ore:sand>]).
    fluidInputs([<liquid:water> * 1000]).
    outputs([<minecraft:clay>]).
    duration(1000).
    EUt(30).
    buildAndRegister();

# Ender Chest
recipes.remove(<minecraft:ender_chest>);

# Chest
recipes.remove(<minecraft:chest> * 4);
recipes.addShaped(<minecraft:chest> * 2, [
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<ore:logWood>, null, <ore:logWood>],
    [<ore:logWood>, <ore:logWood>, <ore:logWood>]
]);
