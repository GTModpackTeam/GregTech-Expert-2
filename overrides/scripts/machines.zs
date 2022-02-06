# Imports
import mods.ctutils.utils.Math;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
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
<metaitem:multiblocktweaker:greenhouse>.addTooltip(
    format.green("This came from the GTCEu Community Pack.")
);



########################################
# 3D Builder
########################################
Builder.start("large_crafttable", 32100)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("CCCCC", "CCCCC", "CCCCC", "CCCCC", "CCCCC")
            .aisle("CCCCC", "CMMMC", "CMMMC", "CMMMC", "CCCCC")
            .aisle("CCCCC", "CMMMC", "CMMMC", "CMMMC", "CCCCC")
            .aisle("CCCCC", "CMMMC", "CMMMC", "CMMMC", "CCCCC")
            .aisle("CCCCC", "CCSCC", "CCCCC", "CCCCC", "CCCCC")
            .where("S", controller.self())
            .where("C", CTPredicate.states(<metastate:gcym:large_multiblock_casing:11>).setMinGlobalLimited(93) | controller.autoAbilities())
            .where("M", CTPredicate.states(<metastate:appliedenergistics2:molecular_assembler>))
            .where("#", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(<recipemap:large_crafttable>)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:11>)
    .buildAndRegister();
<metaitem:multiblocktweaker:large_crafttable>.addTooltip(
    format.red("Currently under adjustment.")
);

// recipes.addShaped(<metaitem:multiblocktweaker:large_crafttable>, [
//     [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>],
//     [<ore:circuitSuper>, <metaitem:hull.uv>, <ore:circuitSuper>],
//     [<metaitem:electric.piston.uv>, <metaitem:electric.pump.uv>, <metaitem:electric.piston.uv>]
// ]);



########################################
# Void Ore Miner
########################################
// Builder.start("voidoreminer", 33000)
//     .withPattern(function(controller as IControllerTile) as IBlockPattern {
//         return FactoryBlockPattern.start()
//             .aisle("CCCCCCCCC", "CCCCCCCCC", "C#######C", "C#######C", "C#######C", "CCCCCCCCC", "CFFFFFFFC", "CFFFFFFFC", "C#######C", "C#######C")
//             .aisle("C#######C", "C#######C", "#########", "#########", "#########", "C###D###C", "F##DDD##F", "F##DDD##F", "###DDD###", "#########")
//             .aisle("C#######C", "C#######C", "#########", "####D####", "###DDD###", "C##DDD##C", "F#DD#DD#F", "F#D###D#F", "##D###D##", "#########")
//             .aisle("C###D###C", "C###D###C", "###DDD###", "###D#D###", "##DD#DD##", "C#D###D#C", "FDD###DDF", "FD#####DF", "#D#####D#", "#########")
//             .aisle("C##D#D##C", "C##D#D##C", "###D#D###", "##D###D##", "##D###D##", "CDD###DDC", "FD#####DF", "FD#####DF", "#D#####D#", "#########")
//             .aisle("C###D###C", "C###D###C", "###DDD###", "###D#D###", "##DD#DD##", "C#D###D#C", "FDD###DDF", "FD#####DF", "#D#####D#", "#########")
//             .aisle("C#######C", "C#######C", "#########", "####D####", "###DDD###", "C##DDD##C", "F#DD#DD#F", "F#D###D#F", "##D###D##", "#########")
//             .aisle("C#######C", "C#######C", "#########", "#########", "#########", "C###D###C", "F##DDD##F", "F##DDD##F", "###DDD###", "#########")
//             .aisle("CCCCCCCCC", "CCCCSCCCC", "C#######C", "C#######C", "C#######C", "CCCCCCCCC", "CFFFFFFFC", "CFFFFFFFC", "C#######C", "C#######C")
//             .where("S", controller.self())
//             .where("C", CTPredicate.states(<metastate:gregtech:metal_casing:10>).setMinGlobalLimited(42) | controller.autoAbilities())
//             .where("D", CTPredicate.states(<metastate:gcym:large_multiblock_casing:11>))
//             .where("F", CTPredicate.states(<metastate:gregtech:meta_block_frame_127:10>))
//             .where("#", CTPredicate.getAir())
//             .build();
//     } as IPatternBuilderFunction)
//     .withRecipeMap(<recipemap:voidoreminer>)
//     .withBaseTexture(<metastate:gregtech:metal_casing:10>)
//     .buildAndRegister();

// recipes.addShaped(<metaitem:multiblocktweaker:voidoreminer>, [
//     [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>],
//     [<ore:circuitUltimate>, <metaitem:hull.zpm>, <ore:circuitUltimate>],
//     [<metaitem:electric.piston.zpm>, <metaitem:electric.pump.zpm>, <metaitem:electric.piston.zpm>]
// ]);



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

# Void Ore Miner
## Ores
// var OresCount = Math.min(1, 5);
// var Ores as IItemStack[] = [
//     <gregtech:ore_aluminium_0>,
//     <gregtech:ore_aluminium_0>,
//     <gregtech:ore_beryllium_0>,
//     <gregtech:ore_cobalt_0>,
//     <gregtech:ore_copper_0>
// ];

##
// voidoreminer.recipeBuilder()
//     .fluidInputs([<liquid:drilling_fluid> * 1000])
//     .outputs()
//     .outputs()
//     .outputs()
//     .outputs()
//     .outputs()
//     .outputs()
//     .outputs()
//     .outputs()
//     .outputs()
//     .duration(1200)
//     .EUt(122880)
//     .hidden()
//     .buildAndRegister();
