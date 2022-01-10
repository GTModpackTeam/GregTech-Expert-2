########################################
# Items
########################################
# Stick
recipes.remove(<minecraft:stick> * 16);



########################################
# Blocks
########################################
# Chest
recipes.remove(<minecraft:chest> * 4);
recipes.addShaped(<minecraft:chest> * 2, [
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<ore:logWood>, null, <ore:logWood>],
    [<ore:logWood>, <ore:logWood>, <ore:logWood>]
]);

# Planks
recipes.remove(<minecraft:planks:*>);
recipes.addShapeless(<minecraft:planks:5> * 2, [<ore:craftingToolSaw>, <minecraft:log2:1>]);
recipes.addShapeless(<minecraft:planks:4> * 2, [<ore:craftingToolSaw>, <minecraft:log2:0>]);
recipes.addShapeless(<minecraft:planks:3> * 2, [<ore:craftingToolSaw>, <minecraft:log:3>]);
recipes.addShapeless(<minecraft:planks:2> * 2, [<ore:craftingToolSaw>, <minecraft:log:2>]);
recipes.addShapeless(<minecraft:planks:1> * 2, [<ore:craftingToolSaw>, <minecraft:log:1>]);
recipes.addShapeless(<minecraft:planks:0> * 2, [<ore:craftingToolSaw>, <minecraft:log:0>]);
recipes.addShapeless(<minecraft:planks:5>, [<minecraft:log2:1>]);
recipes.addShapeless(<minecraft:planks:4>, [<minecraft:log2>]);
recipes.addShapeless(<minecraft:planks:3>, [<minecraft:log:3>]);
recipes.addShapeless(<minecraft:planks:2>, [<minecraft:log:2>]);
recipes.addShapeless(<minecraft:planks:1>, [<minecraft:log:1>]);
recipes.addShapeless(<minecraft:planks:0>, [<minecraft:log:0>]);
