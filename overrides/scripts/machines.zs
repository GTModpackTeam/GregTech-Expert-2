# Imoprts
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;



# Greenhouse Trees
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

# Greenhouse Rubber
greenhouse.recipeBuilder()
    .circuit(1)
    .notConsumable(<gregtech:rubber_sapling>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<gregtech:rubber_log> * 16)
    .outputs(<gregtech:rubber_sapling> * 3)
    .outputs(<metaitem:rubber_drop> * 4)
    .duration(1200)
    .EUt(40)
    .buildAndRegister();
greenhouse.recipeBuilder()
    .circuit(2)
    .notConsumable(<gregtech:rubber_sapling>)
    .inputs(<ore:dustBone> * 4)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<gregtech:rubber_log> * 32)
    .outputs(<gregtech:rubber_sapling> * 6)
    .outputs(<metaitem:rubber_drop> * 8)
    .duration(900)
    .EUt(60)
    .buildAndRegister();

# Greenhouse Plants
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

# Green House
val id = 32000;
val loc = "greenhouse";
Builder.start(loc, id)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle(" CCC ", " CCC ", " CCC ", " CCC ")
            .aisle("CCCCC", "CDDDC", "C###C", "CGGGC")
            .aisle("CCCCC", "CDDDC", "C###C", "CGGGC")
            .aisle("CCCCC", "CDDDC", "C###C", "CGGGC")
            .aisle(" CCC ", " CSC ", " CCC ", " CCC ")
            .where("S", controller.self())
            .where("G", CTPredicate.states(<metastate:gregtech:transparent_casing>))
            .where("D", CTPredicate.states(<blockstate:minecraft:dirt>))
            .where("C", CTPredicate.states(<metastate:gregtech:machine_casing:0>).setMinGlobalLimited(42) | controller.autoAbilities())
            .where("#", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(greenhouse)
    .withBaseTexture(<metastate:gregtech:machine_casing:0>)
    .buildAndRegister();

recipes.addShaped("greenhouse", <metaitem:multiblocktweaker:greenhouse>, [
    [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>],
    [<ore:circuitGood>, <metaitem:hull.mv>, <ore:circuitGood>],
    [<metaitem:electric.piston.mv>, <metaitem:electric.pump.mv>, <metaitem:electric.piston.mv>]
]);
<metaitem:multiblocktweaker:greenhouse>.addTooltip(
    format.green("This came from the GTCEu Community Pack.")
);
