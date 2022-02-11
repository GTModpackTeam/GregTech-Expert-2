# Imports
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;



########################################
# Greenhouse
########################################
Builder.start("greenhouse", 32000)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle(" CCC ", " CCC ", " CCC ", " CCC ")
            .aisle("CCCCC", "CDDDC", "C###C", "CGGGC")
            .aisle("CCCCC", "CDDDC", "C###C", "CGGGC")
            .aisle("CCCCC", "CDDDC", "C###C", "CGGGC")
            .aisle(" CCC ", " CSC ", " CCC ", " CCC ")
            .where("S", controller.self())
            .where("C", CTPredicate.states(<metastate:gregtech:machine_casing>).setMinGlobalLimited(42) | controller.autoAbilities())
            .where("G", CTPredicate.states(<metastate:gregtech:transparent_casing>))
            .where("D", CTPredicate.states(<blockstate:minecraft:dirt>))
            .where("#", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(<recipemap:greenhouse>)
    .withBaseTexture(<metastate:gregtech:machine_casing>)
    .buildAndRegister();

recipes.addShaped(<metaitem:multiblocktweaker:greenhouse>, [
    [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>],
    [<ore:circuitGood>, <metaitem:hull.mv>, <ore:circuitGood>],
    [<metaitem:electric.piston.mv>, <metaitem:electric.pump.mv>, <metaitem:electric.piston.mv>]
]);
JEI.addDescription(<metaitem:multiblocktweaker:greenhouse>, "This came from the GTCEu Community Pack.");



########################################
# Void Ore Drilling Plant
########################################
Builder.start("voidoreminer", 32001)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("CCCCC", "#FFF#", "#FFF#", "#FFF#", "#####", "#####", "#####", "#####", "#####", "#####")
            .aisle("CCCCC", "FCCCF", "FCCCF", "FCCCF", "#FFF#", "##F##", "##F##", "#####", "#####", "#####")
            .aisle("CCCCC", "FCCCF", "FCCCF", "FCCCF", "#FCF#", "#FCF#", "#FCF#", "##F##", "##F##", "##F##")
            .aisle("CCCCC", "FCCCF", "FCCCF", "FCCCF", "#FFF#", "##F##", "##F##", "#####", "#####", "#####")
            .aisle("CCSCC", "#FFF#", "#FFF#", "#FFF#", "#####", "#####", "#####", "#####", "#####", "#####")
            .where("S", controller.self())
            .where("C", CTPredicate.states(<metastate:gregtech:metal_casing:10>).setMinGlobalLimited(48) | controller.autoAbilities())
            .where("F", CTPredicate.states(<metastate:gregtech:meta_block_frame_157:7>))
            .where("#", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(<recipemap:voidoreminer>)
    .withBaseTexture(<metastate:gregtech:metal_casing:10>)
    .buildAndRegister();
assembly_line.recipeBuilder()
    .inputs([<metaitem:hull.zpm>])
    .inputs([<metaitem:frameNaquadahAlloy> * 4])
    .inputs([<ore:circuitUltimate> * 4])
    .inputs([<metaitem:electric.motor.zpm> * 4])
    .inputs([<metaitem:electric.pump.zpm> * 4])
    .inputs([<metaitem:conveyor.module.zpm> * 4])
    .inputs([<metaitem:robot.arm.zpm> * 4])
    .inputs([<metaitem:emitter.zpm> * 4])
    .inputs([<metaitem:sensor.zpm> * 4])
    .inputs([<metaitem:gearNaquadahAlloy>])
    .fluidInputs(<liquid:soldering_alloy> * 8000)
    .outputs([<metaitem:multiblocktweaker:voidoreminer>])
    .duration(600)
    .EUt(122880)
    .buildAndRegister();
JEI.addDescription(<metaitem:multiblocktweaker:voidoreminer>, "When you put the ore you want to mine into the Input Bus, it will mine the same ore you put in. The mining time is 1 second, and it costs 19200L of Drilling Fluid and 10L of Dew of the Void.");



########################################
# Finalize
########################################
# Greenhouse
## Trees
var saplings as IItemStack[] = [
    <minecraft:sapling>,
    <minecraft:sapling:1>,
    <minecraft:sapling:2>,
    <minecraft:sapling:3>,
    <minecraft:sapling:4>,
    <minecraft:sapling:5>
];
var logs as IItemStack[] = [
    <minecraft:log> * 32,
    <minecraft:log:1> * 32,
    <minecraft:log:2> * 32,
    <minecraft:log:3> * 32,
    <minecraft:log2> * 32,
    <minecraft:log2:1> * 32
];
for i, sapling in saplings {
    greenhouse.recipeBuilder()
        .circuit(1)
        .notConsumable(sapling)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(logs[i])
        .outputs(sapling.withAmount(6))
        .duration(1200)
        .EUt(40)
        .buildAndRegister();
    greenhouse.recipeBuilder()
        .circuit(2)
        .notConsumable(sapling)
        .inputs(<ore:dustBone> * 4)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(logs[i])
        .outputs(logs[i])
        .outputs(sapling.withAmount(12))
        .duration(900)
        .EUt(60)
        .buildAndRegister();
}

## Rubber
greenhouse.recipeBuilder()
    .circuit(1)
    .notConsumable(<gregtech:rubber_sapling>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<gregtech:rubber_log> * 8)
    .outputs(<gregtech:rubber_sapling>)
    .outputs(<metaitem:rubber_drop>)
    .duration(1200)
    .EUt(40)
    .buildAndRegister();
greenhouse.recipeBuilder()
    .circuit(2)
    .notConsumable(<gregtech:rubber_sapling>)
    .inputs(<ore:dustBone> * 4)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<gregtech:rubber_log> * 16)
    .outputs(<gregtech:rubber_sapling> * 3)
    .outputs(<metaitem:rubber_drop> * 4)
    .duration(900)
    .EUt(60)
    .buildAndRegister();

## Plants
var seeds as IItemStack[] = [
    <minecraft:pumpkin_seeds>,
    <minecraft:beetroot_seeds>,
    <minecraft:wheat_seeds>,
    <minecraft:melon_seeds>,
    <minecraft:carrot>,
    <minecraft:potato>,
    <minecraft:reeds>,
    <minecraft:cactus>,
    <minecraft:brown_mushroom>,
    <minecraft:red_mushroom>,
    <minecraft:nether_wart>
];
var plants as IItemStack[] = [
    <minecraft:pumpkin> * 6,
    <minecraft:beetroot> * 16,
    <minecraft:wheat> * 16,
    <minecraft:melon_block> * 6,
    <minecraft:carrot> * 12,
    <minecraft:potato> * 12,
    <minecraft:reeds> * 12,
    <minecraft:cactus> * 12,
    <minecraft:brown_mushroom> * 12,
    <minecraft:red_mushroom> * 12,
    <minecraft:nether_wart> * 12
];
for i, seed in seeds {
    greenhouse.recipeBuilder()
        .circuit(1)
        .notConsumable(seed)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(plants[i])
        .duration(1200)
        .EUt(40)
        .buildAndRegister();
    greenhouse.recipeBuilder()
        .circuit(2)
        .notConsumable(seed)
        .inputs(<ore:dustBone> * 4)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(plants[i].withAmount(plants[i].amount * 2))
        .duration(900)
        .EUt(60)
        .buildAndRegister();
}

# Void Ore Drilling Plant
## Mining
var oresAny as IItemStack[] = [
    <gregtech:ore_copper_0:*>,
    <gregtech:ore_topaz_0:*>,
    <gregtech:ore_wulfenite_0:*>,
    <gregtech:ore_bastnasite_0:*>,
    <gregtech:ore_garnet_sand_0:*>,
    <gregtech:ore_lepidolite_0:*>,
    <gregtech:ore_amethyst_0:*>,
    <gregtech:ore_pyrope_0:*>,
    <gregtech:ore_aluminium_0:*>,
    <gregtech:ore_blue_topaz_0:*>,
    <gregtech:ore_lazurite_0:*>,
    <gregtech:ore_kyanite_0:*>,
    <gregtech:ore_lapis_0:*>,
    <gregtech:ore_electrotine_0:*>,
    <gregtech:ore_gold_0:*>,
    <gregtech:ore_sulfur_0:*>,
    <gregtech:ore_powellite_0:*>,
    <gregtech:ore_tricalcium_phosphate_0:*>,
    <gregtech:ore_iron_0:*>,
    <gregtech:ore_lithium_0:*>,
    <gregtech:ore_nickel_0:*>,
    <gregtech:ore_tin_0:*>,
    <gregtech:ore_asbestos_0:*>,
    <gregtech:ore_calcite_0:*>,
    <gregtech:ore_cassiterite_0:*>,
    <gregtech:ore_pyrolusite_0:*>,
    <gregtech:ore_sphalerite_0:*>,
    <gregtech:ore_barite_0:*>,
    <gregtech:ore_pollucite_0:*>,
    <gregtech:ore_bentonite_0:*>,
    <gregtech:ore_gypsum_0:*>,
    <gregtech:ore_zeolite_0:*>,
    <gregtech:ore_diatomite_0:*>,
    <gregtech:ore_molybdenum_0:*>,
    <gregtech:ore_platinum_0:*>,
    <gregtech:ore_silver_0:*>,
    <gregtech:ore_certus_quartz_0:*>,
    <gregtech:ore_cassiterite_sand_0:*>,
    <gregtech:ore_rock_salt_0:*>,
    <gregtech:ore_salt_0:*>,
    <gregtech:ore_saltpeter_0:*>,
    <gregtech:ore_nether_quartz_0:*>,
    <gregtech:ore_quartzite_0:*>,
    <gregtech:ore_mica_0:*>,
    <gregtech:ore_cobaltite_0:*>,
    <gregtech:ore_sodalite_0:*>,
    <gregtech:ore_opal_0:*>,
    <gregtech:ore_brown_limonite_0:*>,
    <gregtech:ore_grossular_0:*>,
    <gregtech:ore_bauxite_0:*>,
    <gregtech:ore_tantalite_0:*>,
    <gregtech:ore_chalcopyrite_0:*>,
    <gregtech:ore_scheelite_0:*>,
    <gregtech:ore_emerald_0:*>,
    <gregtech:ore_garnierite_0:*>,
    <gregtech:ore_green_sapphire_0:*>,
    <gregtech:ore_glauconite_sand_0:*>,
    <gregtech:ore_malachite_0:*>,
    <gregtech:ore_talc_0:*>,
    <gregtech:ore_granitic_mineral_sand_0:*>,
    <gregtech:ore_basaltic_mineral_sand_0:*>,
    <gregtech:ore_almandine_0:*>,
    <gregtech:ore_ruby_0:*>,
    <gregtech:ore_cinnabar_0:*>,
    <gregtech:ore_spessartine_0:*>,
    <gregtech:ore_tetrahedrite_0:*>,
    <gregtech:ore_realgar_0:*>,
    <gregtech:ore_garnet_red_0:*>,
    <gregtech:ore_redstone_0:*>,
    <gregtech:ore_neodymium_0:*>,
    <gregtech:ore_thorium_0:*>,
    <gregtech:ore_naquadah_0:*>,
    <gregtech:ore_chromite_0:*>,
    <gregtech:ore_coal_0:*>,
    <gregtech:ore_ilmenite_0:*>,
    <gregtech:ore_magnetite_0:*>,
    <gregtech:ore_molybdenite_0:*>,
    <gregtech:ore_stibnite_0:*>,
    <gregtech:ore_tungstate_0:*>,
    <gregtech:ore_uraninite_0:*>,
    <gregtech:ore_pyrochlore_0:*>,
    <gregtech:ore_oilsands_0:*>,
    <gregtech:ore_monazite_0:*>,
    <gregtech:ore_pitchblende_0:*>,
    <gregtech:ore_fullers_earth_0:*>,
    <gregtech:ore_vanadium_magnetite_0:*>,
    <gregtech:ore_garnet_yellow_0:*>,
    <gregtech:ore_apatite_0:*>,
    <gregtech:ore_olivine_0:*>,
    <gregtech:ore_soapstone_0:*>,
    <gregtech:ore_alunite_0:*>,
    <gregtech:ore_spodumene_0:*>,
    <gregtech:ore_pentlandite_0:*>,
    <gregtech:ore_chalcocite_0:*>,
    <gregtech:ore_bornite_0:*>,
    <gregtech:ore_graphite_0:*>,
    <gregtech:ore_yellow_limonite_0:*>,
    <gregtech:ore_sapphire_0:*>,
    <gregtech:ore_pyrite_0:*>,
    <gregtech:ore_magnesite_0:*>,
    <gregtech:ore_galena_0:*>,
    <gregtech:ore_diamond_0:*>,
    <gregtech:ore_cooperite_0:*>,
    <gregtech:ore_banded_iron_0:*>,
    <gregtech:ore_palladium_0:*>,
    <gregtech:ore_beryllium_0:*>
];
var ores as IItemStack[] = [
    <gregtech:ore_copper_0>,
    <gregtech:ore_topaz_0>,
    <gregtech:ore_wulfenite_0>,
    <gregtech:ore_bastnasite_0>,
    <gregtech:ore_garnet_sand_0>,
    <gregtech:ore_lepidolite_0>,
    <gregtech:ore_amethyst_0>,
    <gregtech:ore_pyrope_0>,
    <gregtech:ore_aluminium_0>,
    <gregtech:ore_blue_topaz_0>,
    <gregtech:ore_lazurite_0>,
    <gregtech:ore_kyanite_0>,
    <gregtech:ore_lapis_0>,
    <gregtech:ore_electrotine_0>,
    <gregtech:ore_gold_0>,
    <gregtech:ore_sulfur_0>,
    <gregtech:ore_powellite_0>,
    <gregtech:ore_tricalcium_phosphate_0>,
    <gregtech:ore_iron_0>,
    <gregtech:ore_lithium_0>,
    <gregtech:ore_nickel_0>,
    <gregtech:ore_tin_0>,
    <gregtech:ore_asbestos_0>,
    <gregtech:ore_calcite_0>,
    <gregtech:ore_cassiterite_0>,
    <gregtech:ore_pyrolusite_0>,
    <gregtech:ore_sphalerite_0>,
    <gregtech:ore_barite_0>,
    <gregtech:ore_pollucite_0>,
    <gregtech:ore_bentonite_0>,
    <gregtech:ore_gypsum_0>,
    <gregtech:ore_zeolite_0>,
    <gregtech:ore_diatomite_0>,
    <gregtech:ore_molybdenum_0>,
    <gregtech:ore_platinum_0>,
    <gregtech:ore_silver_0>,
    <gregtech:ore_certus_quartz_0>,
    <gregtech:ore_cassiterite_sand_0>,
    <gregtech:ore_rock_salt_0>,
    <gregtech:ore_salt_0>,
    <gregtech:ore_saltpeter_0>,
    <gregtech:ore_nether_quartz_0>,
    <gregtech:ore_quartzite_0>,
    <gregtech:ore_mica_0>,
    <gregtech:ore_cobaltite_0>,
    <gregtech:ore_sodalite_0>,
    <gregtech:ore_opal_0>,
    <gregtech:ore_brown_limonite_0>,
    <gregtech:ore_grossular_0>,
    <gregtech:ore_bauxite_0>,
    <gregtech:ore_tantalite_0>,
    <gregtech:ore_chalcopyrite_0>,
    <gregtech:ore_scheelite_0>,
    <gregtech:ore_emerald_0>,
    <gregtech:ore_garnierite_0>,
    <gregtech:ore_green_sapphire_0>,
    <gregtech:ore_glauconite_sand_0>,
    <gregtech:ore_malachite_0>,
    <gregtech:ore_talc_0>,
    <gregtech:ore_granitic_mineral_sand_0>,
    <gregtech:ore_basaltic_mineral_sand_0>,
    <gregtech:ore_almandine_0>,
    <gregtech:ore_ruby_0>,
    <gregtech:ore_cinnabar_0>,
    <gregtech:ore_spessartine_0>,
    <gregtech:ore_tetrahedrite_0>,
    <gregtech:ore_realgar_0>,
    <gregtech:ore_garnet_red_0>,
    <gregtech:ore_redstone_0>,
    <gregtech:ore_neodymium_0>,
    <gregtech:ore_thorium_0>,
    <gregtech:ore_naquadah_0>,
    <gregtech:ore_chromite_0>,
    <gregtech:ore_coal_0>,
    <gregtech:ore_ilmenite_0>,
    <gregtech:ore_magnetite_0>,
    <gregtech:ore_molybdenite_0>,
    <gregtech:ore_stibnite_0>,
    <gregtech:ore_tungstate_0>,
    <gregtech:ore_uraninite_0>,
    <gregtech:ore_pyrochlore_0>,
    <gregtech:ore_oilsands_0>,
    <gregtech:ore_monazite_0>,
    <gregtech:ore_pitchblende_0>,
    <gregtech:ore_fullers_earth_0>,
    <gregtech:ore_vanadium_magnetite_0>,
    <gregtech:ore_garnet_yellow_0>,
    <gregtech:ore_apatite_0>,
    <gregtech:ore_olivine_0>,
    <gregtech:ore_soapstone_0>,
    <gregtech:ore_alunite_0>,
    <gregtech:ore_spodumene_0>,
    <gregtech:ore_pentlandite_0>,
    <gregtech:ore_chalcocite_0>,
    <gregtech:ore_bornite_0>,
    <gregtech:ore_graphite_0>,
    <gregtech:ore_yellow_limonite_0>,
    <gregtech:ore_sapphire_0>,
    <gregtech:ore_pyrite_0>,
    <gregtech:ore_magnesite_0>,
    <gregtech:ore_galena_0>,
    <gregtech:ore_diamond_0>,
    <gregtech:ore_cooperite_0>,
    <gregtech:ore_banded_iron_0>,
    <gregtech:ore_palladium_0>,
    <gregtech:ore_beryllium_0>
];
for i, ore in ores {
    voidoreminer.recipeBuilder()
        .inputs([oresAny[i]])
        .fluidInputs([<liquid:drilling_fluid> * 19200])
        .fluidInputs([<liquid:ender_distillation> * 10])
        .outputs([ore * 64])
        .duration(20)
        .EUt(122880)
        .buildAndRegister();
}
