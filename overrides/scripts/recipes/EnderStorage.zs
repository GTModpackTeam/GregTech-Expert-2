########################################
# Items
########################################
# Pouch
recipes.remove(<enderstorage:ender_pouch>);
recipes.addShaped(<enderstorage:ender_pouch>, [
    [<ore:foilBronze>, <minecraft:leather>, <ore:foilBronze>],
    [<minecraft:leather>, <ore:itemEnderCrystal>, <minecraft:leather>],
    [<ore:foilBronze>, <ore:blockWool>, <ore:foilBronze>]
]);



########################################
# Blocks
########################################
# Chest
recipes.remove(<enderstorage:ender_storage>);
recipes.addShaped(<enderstorage:ender_storage>, [
    [<ore:plateBronze>, <ore:blockWool>, <ore:plateBronze>],
    [<enderio:block_reinforced_obsidian>, <ore:chestWood>, <enderio:block_reinforced_obsidian>],
    [<ore:plateBronze>, <ore:itemEnderCrystal>, <ore:plateBronze>]
]);

# Tank
recipes.remove(<enderstorage:ender_storage:1>);
recipes.addShaped(<enderstorage:ender_storage:1>, [
    [<ore:plateBronze>, <ore:blockWool>, <ore:plateBronze>],
    [<enderio:block_reinforced_obsidian>, <extracells:certustank>, <enderio:block_reinforced_obsidian>],
    [<ore:plateBronze>, <ore:itemEnderCrystal>, <ore:plateBronze>]
]);
