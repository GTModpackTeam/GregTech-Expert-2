########################################
# Items
########################################
# Iron Nugget
recipes.addShapeless(<minecraft:iron_nugget> * 9, [<minecraft:iron_ingot>]);

# Gold Nugget
recipes.addShapeless(<minecraft:gold_nugget> * 9, [<minecraft:gold_ingot>]);

# Bread
furnace.addRecipe(<minecraft:bread>, <gregtech:meta_dust:1615>, 0);

# Ender Pearl
recipes.addShaped(<minecraft:ender_pearl>, [
    [null, <enderio:item_material:62>, null],
    [<enderio:item_material:62>, <enderio:item_material:62>, <enderio:item_material:62>],
    [null, <enderio:item_material:62>, null]
]);



########################################
# Blocks
########################################
# Cake
recipes.remove(<minecraft:cake>);
mixer.recipeBuilder().
    inputs([
        <minecraft:sugar> * 2,
        <enderio:item_material:70>
    ]).
    fluidInputs([<liquid:milk> * 144]).
    outputs([<minecraft:cake>]).
    duration(56).
    EUt(30).
    buildAndRegister();

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

# End rod
recipes.remove(<minecraft:end_rod>);

# Daylight Detector
recipes.removeShaped(<minecraft:daylight_detector>, [
    [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
    [<ore:gemNetherQuartz>, <ore:gemNetherQuartz>, <ore:gemNetherQuartz>],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);

# Beacon
assembler.recipeBuilder().
    inputs([
        <minecraft:obsidian> * 3,
        <minecraft:nether_star>
    ]).
    fluidInputs([<liquid:glass> * 720]).
    outputs([<minecraft:beacon>]).
    duration(100).
    EUt(16).
    buildAndRegister();
