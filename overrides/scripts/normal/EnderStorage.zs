#packmode normal



########################################
# Items
########################################
# Pouch
recipes.remove(<enderstorage:ender_pouch>);
recipes.addShaped(<enderstorage:ender_pouch>, [
    [<ore:foilBronze>, <minecraft:leather>, <ore:foilBronze>],
    [<minecraft:leather>, <metaitem:cover.ender_fluid_link>, <minecraft:leather>],
    [<ore:foilBronze>, <ore:wool> | <ore:blockWool>, <ore:foilBronze>]
]);



########################################
# Blocks
########################################
# Chest
recipes.remove(<enderstorage:ender_storage>);
recipes.addShaped(<enderstorage:ender_storage>, [
    [<ore:plateBronze>, <ore:wool> | <ore:blockWool>, <ore:plateBronze>],
    [<enderio:block_reinforced_obsidian>, <minecraft:ender_chest>, <enderio:block_reinforced_obsidian>],
    [<ore:plateBronze>, <metaitem:cover.ender_fluid_link>, <ore:plateBronze>]
]);

# Tank
recipes.remove(<enderstorage:ender_storage:1>);
recipes.addShaped(<enderstorage:ender_storage:1>, [
    [<ore:plateBronze>, <ore:wool> | <ore:blockWool>, <ore:plateBronze>],
    [<enderio:block_reinforced_obsidian>, <gregtech:machine:1575>, <enderio:block_reinforced_obsidian>],
    [<ore:plateBronze>, <metaitem:cover.ender_fluid_link>, <ore:plateBronze>]
]);
