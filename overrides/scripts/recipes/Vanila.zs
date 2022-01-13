########################################
# Items
########################################
# Stick
recipes.remove(<minecraft:stick> * 16);



########################################
# Blocks
########################################
# Charcoal
furnace.remove(<minecraft:coal:1>);

# Chest
recipes.remove(<minecraft:chest> * 4);
recipes.addShaped(<minecraft:chest> * 2, [
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<ore:logWood>, null, <ore:logWood>],
    [<ore:logWood>, <ore:logWood>, <ore:logWood>]
]);
