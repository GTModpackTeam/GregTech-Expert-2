# Imports



########################################
# Items
########################################
# Pouch
recipes.remove(<enderstorage:ender_pouch:0>);
recipes.addShapeless(<enderstorage:ender_pouch:0>, [<enderstorage:ender_pouch:0>.withEmptyTag()]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:foilBronze> * 4,
        <minecraft:leather> * 3,
        <ore:wool>,
        <metaitem:cover.ender_fluid_link>
    ])
    .outputs([<enderstorage:ender_pouch:0>])
    .duration(400)
    .EUt(480)
    .buildAndRegister();



########################################
# Blocks
########################################
# Chest
recipes.remove(<enderstorage:ender_storage:0>);
recipes.addShapeless(<enderstorage:ender_storage:0>, [<enderstorage:ender_storage:0>.withEmptyTag()]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:screwBronze> * 8,
        <enderio:block_reinforced_obsidian> * 2,
        <ore:wool>,
        <metaitem:cover.ender_fluid_link>,
        <metaitem:conveyor.module.hv>,
        <metaitem:crate.bronze>
    ])
    .outputs([<enderstorage:ender_storage:0>])
    .duration(400)
    .EUt(480)
    .buildAndRegister();

# Tank
recipes.remove(<enderstorage:ender_storage:1>);
recipes.addShapeless(<enderstorage:ender_storage:1>, [<enderstorage:ender_storage:1>.withEmptyTag()]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:stickBronze> * 4,
        <enderio:block_reinforced_obsidian> * 2,
        <ore:wool>,
        <metaitem:cover.ender_fluid_link>,
        <metaitem:electric.pump.hv>,
        <metaitem:drum.bronze>
    ])
    .outputs([<enderstorage:ender_storage:1>])
    .duration(400)
    .EUt(480)
    .buildAndRegister();
