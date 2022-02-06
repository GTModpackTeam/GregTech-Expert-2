#packmode normal



########################################
# Items
########################################
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
# Path
recipes.addShapeless(<minecraft:grass_path>, [
    <minecraft:dirt>, <ore:gtce.tool.shovels>
]);

# Comparator
recipes.removeShaped(<minecraft:comparator>, [
    [null, <minecraft:redstone_torch>, null],
    [<minecraft:redstone_torch>, <ore:gemNetherQuartz>, <minecraft:redstone_torch>],
    [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>]
]);

# Nether Quartz Block
recipes.remove(<minecraft:quartz_block>);
compressor.recipeBuilder()
    .inputs([<ore:crystalPureNetherQuartz> * 8])
    .outputs([<minecraft:quartz_block>])
    .duration(300)
    .EUt(2)
    .buildAndRegister();

# Sand
mixer.recipeBuilder()
    .inputs([<ore:sand>])
    .fluidInputs([<liquid:water> * 1000])
    .outputs([<minecraft:clay>])
    .duration(1000)
    .EUt(30)
    .buildAndRegister();

# Ender Chest
recipes.remove(<minecraft:ender_chest>);

# Chest
recipes.remove(<minecraft:chest> * 4);
recipes.addShaped(<minecraft:chest> * 2, [
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<ore:logWood>, null, <ore:logWood>],
    [<ore:logWood>, <ore:logWood>, <ore:logWood>]
]);

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
