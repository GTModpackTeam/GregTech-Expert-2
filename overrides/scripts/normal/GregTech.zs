#packmode normal
# Imports
import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;



########################################
# Items
########################################
# Red Alloy Dust
recipes.addShapeless(<gregtech:meta_dust:2517>, [
    <ore:gtce.tool.mortars>,<gregtech:meta_ingot:2517>
]);

# Certus Quartz
recipes.addShapeless(<gregtech:meta_gem:214>, [<appliedenergistics2:material>]);

# Stone Rod
recipes.addShaped(<gregtech:meta_stick:1599>, [
    [<ore:gtce.tool.files>, null, null],
    [null, <minecraft:stone>, null],
    [null, null, null]
]);
lathe.recipeBuilder()
    .inputs([<minecraft:stone>])
    .outputs([
        <gregtech:meta_stick:1599>,
        <gregtech:meta_dust_small:1599> * 2
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

# Netherrack Dust (Override)
centrifuge.findRecipe(20, [<metaitem:dustNetherrack>], null).remove();
centrifuge.recipeBuilder()
    .inputs([<metaitem:dustNetherrack>])
    .chancedOutput(<gregtech:meta_dust_tiny:41>, 620, 120)
    .chancedOutput(<gregtech:meta_dust_tiny:2064>, 5600, 850)
    .chancedOutput(<gregtech:meta_dust_tiny:271>, 5600, 850)
    .chancedOutput(<gregtech:meta_dust_tiny:1601>, 5600, 850)
    .chancedOutput(<gregtech:meta_dust_small:103>, 9900, 100)
    .duration(160)
    .EUt(20)
    .buildAndRegister();

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



########################################
# Liquids
########################################
# Naquadah Rocket Fuel
mixer.recipeBuilder()
    .fluidInputs([
        <liquid:naquadah> * 1296,
        <liquid:rocket_fuel> * 5000
    ])
    .fluidOutputs([<liquid:naquadah_rocket_fuel> * 6000])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();
combustion_generator.recipeBuilder()
    .fluidInputs([<liquid:naquadah_rocket_fuel>])
    .duration(500)
    .EUt(32)
    .buildAndRegister();

# Bisphenol A & Diluted Hydrochloric Acid (Override)
chemical_reactor.findRecipe(30, null, [
    <liquid:hydrochloric_acid> * 1000,
    <liquid:acetone> * 1000,
    <liquid:phenol> * 2000
]).remove();
chemical_reactor.recipeBuilder()
    .circuit(22)
    .fluidInputs([
        <liquid:phenol> * 2000,
        <liquid:acetone> * 1000,
        <liquid:hydrochloric_acid> * 1000
    ])
    .fluidOutputs([
        <liquid:bisphenol_a> * 1000,
        <liquid:diluted_hydrochloric_acid> * 1000
    ])
    .duration(160)
    .EUt(30)
    .buildAndRegister();
large_chemical_reactor.findRecipe(30, null, [
    <liquid:hydrochloric_acid> * 1000,
    <liquid:acetone> * 1000,
    <liquid:phenol> * 2000
]).remove();
large_chemical_reactor.recipeBuilder()
    .circuit(22)
    .fluidInputs([
        <liquid:phenol> * 2000,
        <liquid:acetone> * 1000,
        <liquid:hydrochloric_acid> * 1000
    ])
    .fluidOutputs([
        <liquid:bisphenol_a> * 1000,
        <liquid:diluted_hydrochloric_acid> * 1000
    ])
    .duration(160)
    .EUt(30)
    .buildAndRegister();

# Cumene (Override)
chemical_reactor.findRecipe(30, null, [
    <liquid:phosphoric_acid> * 1000,
    <liquid:benzene> * 8000,
    <liquid:propene> * 8000
]).remove();
chemical_reactor.recipeBuilder()
    .circuit(22)
    .fluidInputs([
        <liquid:propene> * 8000,
        <liquid:benzene> * 8000,
        <liquid:phosphoric_acid> * 1000
    ])
    .fluidOutputs([<liquid:cumene> * 8000])
    .duration(1920)
    .EUt(30)
    .buildAndRegister();
large_chemical_reactor.findRecipe(30, null, [
    <liquid:phosphoric_acid> * 1000,
    <liquid:benzene> * 8000,
    <liquid:propene> * 8000
]).remove();
large_chemical_reactor.recipeBuilder()
    .circuit(22)
    .fluidInputs([
        <liquid:propene> * 8000,
        <liquid:benzene> * 8000,
        <liquid:phosphoric_acid> * 1000
    ])
    .fluidOutputs([<liquid:cumene> * 8000])
    .duration(1920)
    .EUt(30)
    .buildAndRegister();

# Water & Dimethylamine (Override)
chemical_reactor.findRecipe(120, null, [
    <liquid:ammonia> * 1000,
    <liquid:methanol> * 2000
]).remove();
chemical_reactor.recipeBuilder()
    .circuit(2)
    .fluidInputs([
        <liquid:methanol> * 2000,
        <liquid:ammonia> * 1000
    ])
    .fluidOutputs([
        <liquid:water> * 2000,
        <liquid:dimethylamine> * 1000
    ])
    .duration(240)
    .EUt(120)
    .buildAndRegister();
large_chemical_reactor.findRecipe(120, null, [
    <liquid:ammonia> * 1000,
    <liquid:methanol> * 2000
]).remove();
large_chemical_reactor.recipeBuilder()
    .circuit(2)
    .fluidInputs([
        <liquid:methanol> * 2000,
        <liquid:ammonia> * 1000
    ])
    .fluidOutputs([
        <liquid:water> * 2000,
        <liquid:dimethylamine> * 1000
    ])
    .duration(240)
    .EUt(120)
    .buildAndRegister();

# 1,1-Dimethylhydrazine & Diluted Hydrochloric Acid (Override)
chemical_reactor.findRecipe(480, null, [
    <liquid:methanol> * 2000,
    <liquid:ammonia> * 2000,
    <liquid:hypochlorous_acid> * 1000
]).remove();
chemical_reactor.recipeBuilder()
    .circuit(1)
    .fluidInputs([
        <liquid:hypochlorous_acid> * 1000,
        <liquid:ammonia> * 2000,
        <liquid:methanol> * 2000
    ])
    .fluidOutputs([
        <liquid:dimethylhydrazine> * 1000,
        <liquid:diluted_hydrochloric_acid> * 2000
    ])
    .duration(240)
    .EUt(120)
    .buildAndRegister();
large_chemical_reactor.findRecipe(480, null, [
    <liquid:methanol> * 2000,
    <liquid:ammonia> * 2000,
    <liquid:hypochlorous_acid> * 1000
]).remove();
large_chemical_reactor.recipeBuilder()
    .circuit(1)
    .fluidInputs([
        <liquid:hypochlorous_acid> * 1000,
        <liquid:ammonia> * 2000,
        <liquid:methanol> * 2000
    ])
    .fluidOutputs([
        <liquid:dimethylhydrazine> * 1000,
        <liquid:diluted_hydrochloric_acid> * 2000
    ])
    .duration(1040)
    .EUt(480)
    .buildAndRegister();



########################################
# Blocks
########################################
# UHV Voltage 4x Battery Buffer
recipes.addShaped(<gregtech:machine:1324>, [
    [null, null, null],
    [<ore:wireGtQuadrupleEuropium>, <minecraft:chest>, <ore:wireGtQuadrupleEuropium>],
    [<ore:wireGtQuadrupleEuropium>, <gregtech:machine:994>, <ore:wireGtQuadrupleEuropium>]
]);

# UHV Voltage 8x Battery Buffer
recipes.addShaped(<gregtech:machine:1334>, [
    [null, null, null],
    [<ore:wireGtOctalEuropium>, <minecraft:chest>, <ore:wireGtOctalEuropium>],
    [<ore:wireGtOctalEuropium>, <gregtech:machine:994>, <ore:wireGtOctalEuropium>]
]);

# UHV Voltage 16x Battery Buffer
recipes.addShaped(<gregtech:machine:1344>, [
    [null, null, null],
    [<ore:wireGtHexEuropium>, <minecraft:chest>, <ore:wireGtHexEuropium>],
    [<ore:wireGtHexEuropium>, <gregtech:machine:994>, <ore:wireGtHexEuropium>]
]);

# UHV Voltage Turbo Charger
recipes.addShaped(<gregtech:machine:1384>, [
    [<ore:wireGtQuadrupleEuropium>, <minecraft:chest>, <ore:wireGtQuadrupleEuropium>],
    [<ore:wireGtQuadrupleEuropium>, <gregtech:machine:994>, <ore:wireGtQuadrupleEuropium>],
    [<ore:wireGtSingleEuropium>, <ore:circuitInfinite>, <ore:wireGtSingleEuropium>]
]);
