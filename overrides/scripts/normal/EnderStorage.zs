# Imports



########################################
# Items
########################################
# Pouch
recipes.remove(<enderstorage:ender_pouch>);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:foilBronze> * 4,
         <minecraft:leather> * 3,
        <ore:wool> | <ore:blockWool>,
        <metaitem:cover.ender_fluid_link>
    ])
    .outputs([<enderstorage:ender_pouch>])
    .duration(400)
    .EUt(480)
    .buildAndRegister();



########################################
# Blocks
########################################
# Chest
recipes.remove(<enderstorage:ender_storage>);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:plateBronze> * 4,
        <enderio:block_reinforced_obsidian> * 2,
        <ore:wool> | <ore:blockWool>,
        <metaitem:cover.ender_fluid_link>,
        <metaitem:super_chest.hv>
    ])
    .outputs([<enderstorage:ender_storage>])
    .duration(400)
    .EUt(480)
    .buildAndRegister();

# Tank
recipes.remove(<enderstorage:ender_storage:1>);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:plateBronze> * 4,
        <enderio:block_reinforced_obsidian> * 2,
        <ore:wool> | <ore:blockWool>,
        <metaitem:cover.ender_fluid_link>,
        <metaitem:super_tank.hv>
    ])
    .outputs([<enderstorage:ender_storage:1>])
    .duration(400)
    .EUt(480)
    .buildAndRegister();
