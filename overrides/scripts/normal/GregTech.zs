#packmode normal
# Imports
import mods.jei.JEI;
import crafttweaker.item.IItemStack;



########################################
# Items
########################################
# Certus Quartz
recipes.addShapeless(<gregtech:meta_gem:214>, [<appliedenergistics2:material>]);

# Stone Rod
lathe.recipeBuilder()
    .inputs([<minecraft:stone>])
    .outputs([
        <gregtech:meta_stick:1599>,
        <gregtech:meta_dust_small:1599>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Wrought Iron Nugget
recipes.addShapeless(<gregtech:meta_nugget:335> * 9, [<gregtech:meta_ingot:335>]);

# Wrought Iron Ingot
recipes.addShaped(<gregtech:meta_ingot:335>, [
    [<gregtech:meta_nugget:335>, <gregtech:meta_nugget:335>, <gregtech:meta_nugget:335>],
    [<gregtech:meta_nugget:335>, <gregtech:meta_nugget:335>, <gregtech:meta_nugget:335>],
    [<gregtech:meta_nugget:335>, <gregtech:meta_nugget:335>, <gregtech:meta_nugget:335>]
]);

# Tiny Charcoal Dust
furnace.setFuel(<gregtech:meta_dust_tiny:266>, 200);

# Tiny Coal Dust
furnace.setFuel(<gregtech:meta_dust_tiny:271>, 200);

# Solar Panel (MV)
recipes.addShaped(<gregtech:meta_item_1:334>, [
    [null, <gregtech:meta_item_1:333>, null],
    [<gregtech:meta_item_1:333>, <gregtech:machine:1271>, <gregtech:meta_item_1:333>],
    [null, <gregtech:meta_item_1:333>, null]
]);

# Solar Panel (HV)
recipes.addShaped(<gregtech:meta_item_1:335>, [
    [null, <gregtech:meta_item_1:334>, null],
    [<gregtech:meta_item_1:334>, <gregtech:machine:1272>, <gregtech:meta_item_1:334>],
    [null, <gregtech:meta_item_1:334>, null]
]);

# Solar Panel (EV)
recipes.addShaped(<gregtech:meta_item_1:336>, [
    [null, <gregtech:meta_item_1:335>, null],
    [<gregtech:meta_item_1:335>, <gregtech:machine:1273>, <gregtech:meta_item_1:335>],
    [null, <gregtech:meta_item_1:335>, null]
]);

# Solar Panel (IV)
recipes.addShaped(<gregtech:meta_item_1:337>, [
    [null, <gregtech:meta_item_1:336>, null],
    [<gregtech:meta_item_1:336>, <gregtech:machine:1274>, <gregtech:meta_item_1:336>],
    [null, <gregtech:meta_item_1:336>, null]
]);

# Solar Panel (LuV)
recipes.addShaped(<gregtech:meta_item_1:338>, [
    [null, <gregtech:meta_item_1:337>, null],
    [<gregtech:meta_item_1:337>, <gregtech:machine:1275>, <gregtech:meta_item_1:337>],
    [null, <gregtech:meta_item_1:337>, null]
]);

# Solar Panel (ZPM)
recipes.addShaped(<gregtech:meta_item_1:339>, [
    [null, <gregtech:meta_item_1:338>, null],
    [<gregtech:meta_item_1:338>, <gregtech:machine:1276>, <gregtech:meta_item_1:338>],
    [null, <gregtech:meta_item_1:338>, null]
]);

# Solar Panel (UV)
recipes.addShaped(<gregtech:meta_item_1:340>, [
    [null, <gregtech:meta_item_1:339>, null],
    [<gregtech:meta_item_1:339>, <gregtech:machine:1277>, <gregtech:meta_item_1:339>],
    [null, <gregtech:meta_item_1:339>, null]
]);

# Nether Star Dust
chemical_reactor.recipeBuilder()
    .inputs([
        <ore:dustDiamond>,
        <ore:dustIridium>
    ])
    .fluidInputs([
        <liquid:nether_air> * 8000,
        <liquid:rocket_fuel> * 1000
    ])
    .outputs([<gregtech:meta_dust:1602> * 2])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();
