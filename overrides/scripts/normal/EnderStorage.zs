#packmode normal



########################################
# Items
########################################
# Pouch
recipes.remove(<enderstorage:ender_pouch>);
recipes.addShaped(<enderstorage:ender_pouch>, [
    [<ore:foilBronze>, <minecraft:leather>, <ore:foilBronze>],
    [<minecraft:leather>, <gregtech:meta_item_1:311>, <minecraft:leather>],
    [<ore:foilBronze>, <minecraft:wool:*> | <ore:blockWool>, <ore:foilBronze>]
]);



########################################
# Blocks
########################################
# Chest
recipes.remove(<enderstorage:ender_storage>);
recipes.addShaped(<enderstorage:ender_storage>, [
    [<ore:plateBronze>, <minecraft:wool:*> | <ore:blockWool>, <ore:plateBronze>],
    [<enderio:block_reinforced_obsidian>, <minecraft:ender_chest>, <enderio:block_reinforced_obsidian>],
    [<ore:plateBronze>, <gregtech:meta_item_1:311>, <ore:plateBronze>]
]);

# Tank
recipes.remove(<enderstorage:ender_storage:1>);
recipes.addShaped(<enderstorage:ender_storage:1>, [
    [<ore:plateBronze>, <minecraft:wool:*> | <ore:blockWool>, <ore:plateBronze>],
    [<enderio:block_reinforced_obsidian>, <gregtech:machine:1575>, <enderio:block_reinforced_obsidian>],
    [<ore:plateBronze>, <gregtech:meta_item_1:311>, <ore:plateBronze>]
]);
