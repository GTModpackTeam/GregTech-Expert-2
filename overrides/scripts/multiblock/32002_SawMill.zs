# Imports
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.gregtech.IControllerTile;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.functions.IRunOverclockingLogicFunction;
import mods.gregtech.recipe.IRecipe;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.multiblock.functions.IGetBaseTextureFunction;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.multiblock.IIMultiblockPart;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.MoveType;
# autoAbilities(
#    boolean checkEnergyIn,
#    boolean checkMaintainer,
#    boolean checkItemIn,
#    boolean checkItemOut,
#    boolean checkFluidIn,
#    boolean checkFluidOut,
#    boolean checkMuffler
# )



########################################
# Multiblock Builder
########################################
var mbt_saw_mill = Builder.start("saw_mill", 32002)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("CFC", "C#C", "C#C")
            .aisle("CFC", "G#G", "CCC")
            .aisle("CFC", "G#G", "C#C")
            .aisle("CFC", "G#G", "CCC")
            .aisle("CFC", "S#C", "C#C")
            .where('S', controller.self())
            .where('C', CTPredicate.states(<metastate:gregtech:metal_casing:4>)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where('G', CTPredicate.states(<metastate:gregtech:transparent_casing>))
            .where('F', CTPredicate.states(<metastate:gregtech:meta_block_frame_20:4>))
            .where('#', CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(<recipemap:saw_mill>)
    .withBaseTexture(<metastate:gregtech:metal_casing:4>)
    .buildAndRegister();
mbt_saw_mill.hasMaintenanceMechanics = false;
mbt_saw_mill.hasMufflerMechanics = false;

recipes.addShaped(<metaitem:multiblocktweaker:saw_mill>, [
    [<ore:screwSteel>, <ore:toolHeadBuzzSawSteel>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:electric.motor.mv>, <gregtech:metal_casing:4>, <metaitem:electric.motor.mv>],
    [<ore:circuitGood>, <metaitem:conveyor.module.mv>, <ore:circuitGood>]
]);
JEI.addDescription(<metaitem:multiblocktweaker:saw_mill>, "A machine that efficiently processes raw wood into lumber.");



########################################
# Finalize
########################################
# Planks
var planks as IItemStack[] = [
    <minecraft:planks:0>,
    <minecraft:planks:1>,
    <minecraft:planks:2>,
    <minecraft:planks:3>,
    <minecraft:planks:4>,
    <minecraft:planks:5>
];

# Logs
var logs as IItemStack[] = [
    <minecraft:log:0>,
    <minecraft:log:1>,
    <minecraft:log:2>,
    <minecraft:log:3>,
    <minecraft:log2:0>,
    <minecraft:log2:1>
];

for i, log in logs {
    saw_mill.recipeBuilder()
        .circuit(1)
        .inputs([log * 6])
        .fluidInputs([<liquid:water> * 1000])
        .outputs([planks[i] * 48])
        .outputs([<metaitem:dustWood> * 12])
        .duration(300)
        .EUt(7)
        .buildAndRegister();
    saw_mill.recipeBuilder()
        .circuit(2)
        .inputs([log * 6])
        .fluidInputs([<liquid:water> * 1000])
        .outputs([<metaitem:dustWood> * 30])
        .outputs([<metaitem:dustSmallWood> * 18])
        .duration(400)
        .EUt(7)
        .buildAndRegister();
}

## Rubber
saw_mill.recipeBuilder()
    .circuit(1)
    .inputs([<gregtech:rubber_log:0> * 6])
    .fluidInputs([<liquid:water> * 1000])
    .outputs([<gregtech:planks> * 48])
    .outputs([<metaitem:dustWood> * 12])
    .duration(300)
    .EUt(7)
    .buildAndRegister();
saw_mill.recipeBuilder()
    .circuit(2)
    .inputs([<gregtech:rubber_log:0> * 6])
    .fluidInputs([<liquid:water> * 1000])
    .outputs([<metaitem:dustWood> * 30])
    .outputs([<metaitem:dustSmallWood> * 18])
    .duration(400)
    .EUt(7)
    .buildAndRegister();
