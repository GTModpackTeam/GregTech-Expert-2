#packmode normal
# Imports
import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
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
# Fluid
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
# Items
########################################
# Red Alloy Dust
recipes.addShapeless(<metaitem:dustRedAlloy>, [
    <ore:gtce.tool.mortars>, <ore:ingotRedAlloy>
]);

# Stone Rod
recipes.addShaped(<metaitem:stickStone>, [
    [<ore:gtce.tool.files>, null, null],
    [null, <minecraft:stone>, null],
    [null, null, null]
]);
lathe.recipeBuilder()
    .inputs([<minecraft:stone>])
    .outputs([
        <metaitem:stickStone>,
        <metaitem:dustSmallStone> * 2
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Wrought Iron Nugget
recipes.addShapeless(<metaitem:nuggetWroughtIron> * 9, [<ore:ingotWroughtIron>]);

# Wrought Iron Ingot
recipes.addShaped(<metaitem:ingotWroughtIron>, [
    [<ore:nuggetWroughtIron>, <ore:nuggetWroughtIron>, <ore:nuggetWroughtIron>],
    [<ore:nuggetWroughtIron>, <ore:nuggetWroughtIron>, <ore:nuggetWroughtIron>],
    [<ore:nuggetWroughtIron>, <ore:nuggetWroughtIron>, <ore:nuggetWroughtIron>]
]);

# Tiny Charcoal Dust
furnace.setFuel(<metaitem:dustTinyCharcoal>, 200);

# Tiny Coal Dust
furnace.setFuel(<metaitem:dustTinyCoal>, 200);

# Solar Panels
var solarPanels as IItemStack[] = [
    <metaitem:cover.solar.panel.ulv>,
    <metaitem:cover.solar.panel.lv>,
    <metaitem:cover.solar.panel.mv>,
    <metaitem:cover.solar.panel.hv>,
    <metaitem:cover.solar.panel.ev>,
    <metaitem:cover.solar.panel.iv>,
    <metaitem:cover.solar.panel.luv>,
    <metaitem:cover.solar.panel.zpm>,
    <metaitem:cover.solar.panel.uv>
];
for solarPanel in solarPanels {
    recipes.remove(solarPanel);
}

# Solar Panel (8V)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel> * 8])
    .inputs([<minecraft:daylight_detector> * 8])
    .inputs([<metaitem:circuit.vacuum_tube> * 4])
    .inputs([<metaitem:plate.ultra_low_power_integrated_circuit> * 4])
    .inputs([<minecraft:glass>])
    .inputs([<metaitem:transformer.ulv>])
    .fluidInputs(<liquid:silicon> * 2304)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<metaitem:cover.solar.panel.ulv>])
    .duration(20)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (LV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.ulv> * 4])
    .inputs([<metaitem:sensor.lv> * 8])
    .inputs([<metaitem:circuit.electronic> * 4])
    .inputs([<metaitem:plate.ultra_low_power_integrated_circuit> * 16])
    .inputs([<appliedenergistics2:quartz_glass>])
    .inputs([<metaitem:transformer.lv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs([<metaitem:cover.solar.panel.lv>])
    .duration(40)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (MV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.lv> * 4])
    .inputs([<metaitem:sensor.mv> * 8])
    .inputs([<metaitem:circuit.good_electronic> * 4])
    .inputs([<metaitem:plate.low_power_integrated_circuit> * 4])
    .inputs([<enderio:block_fused_quartz>])
    .inputs([<metaitem:transformer.mv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 576)
    .outputs([<metaitem:cover.solar.panel.mv>])
    .duration(80)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (HV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.mv> * 4])
    .inputs([<metaitem:sensor.hv> * 8])
    .inputs([<metaitem:circuit.advanced_integrated> * 4])
    .inputs([<metaitem:plate.low_power_integrated_circuit> * 16])
    .inputs([<enderio:block_fused_quartz>])
    .inputs([<metaitem:transformer.hv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 1152)
    .outputs([<metaitem:cover.solar.panel.hv>])
    .duration(160)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (EV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.hv> * 4])
    .inputs([<metaitem:sensor.ev> * 8])
    .inputs([<metaitem:circuit.workstation> * 4])
    .inputs([<metaitem:plate.power_integrated_circuit> * 4])
    .inputs([<gregtech:transparent_casing>])
    .inputs([<metaitem:transformer.ev>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 2304)
    .outputs([<metaitem:cover.solar.panel.ev>])
    .duration(320)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (IV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.ev> * 4])
    .inputs([<metaitem:sensor.iv> * 8])
    .inputs([<metaitem:circuit.mainframe> * 4])
    .inputs([<metaitem:plate.power_integrated_circuit> * 16])
    .inputs([<gregtech:transparent_casing>])
    .inputs([<metaitem:transformer.iv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 4608)
    .outputs([<metaitem:cover.solar.panel.iv>])
    .duration(640)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (LuV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.iv> * 4])
    .inputs([<metaitem:sensor.luv> * 8])
    .inputs([<metaitem:circuit.nano_mainframe> * 4])
    .inputs([<metaitem:plate.high_power_integrated_circuit> * 8])
    .inputs([<gregtech:transparent_casing:1>])
    .inputs([<metaitem:transformer.luv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 9216)
    .outputs([<metaitem:cover.solar.panel.luv>])
    .duration(1280)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (ZPM)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.luv> * 4])
    .inputs([<metaitem:sensor.zpm> * 8])
    .inputs([<metaitem:circuit.quantum_mainframe> * 4])
    .inputs([<metaitem:plate.high_power_integrated_circuit> * 32])
    .inputs([<gregtech:transparent_casing:1>])
    .inputs([<metaitem:transformer.zpm>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 18432)
    .outputs([<metaitem:cover.solar.panel.zpm>])
    .duration(2560)
    .EUt(122880)
    .buildAndRegister();

# Solar Panel (UV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.zpm> * 4])
    .inputs([<metaitem:sensor.uv> * 8])
    .inputs([<metaitem:circuit.crystal_mainframe> * 4])
    .inputs([<metaitem:plate.ultra_high_power_integrated_circuit> * 64])
    .inputs([<gregtech:transparent_casing:1>])
    .inputs([<metaitem:transformer.uv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 36864)
    .outputs([<metaitem:cover.solar.panel.uv>])
    .duration(5120)
    .EUt(491520)
    .buildAndRegister();

# Netherrack Dust (Override)
centrifuge.findRecipe(20, [<metaitem:dustNetherrack>], null).remove();
centrifuge.recipeBuilder()
    .inputs([<metaitem:dustNetherrack>])
    .chancedOutput(<metaitem:dustTinyGold>, 620, 120)
    .chancedOutput(<metaitem:dustTinyRedstone>, 5600, 850)
    .chancedOutput(<metaitem:dustTinyCoal>, 5600, 850)
    .chancedOutput(<metaitem:dustTinyGlowstone>, 5600, 850)
    .chancedOutput(<metaitem:dustSulfur>, 9900, 100)
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
    .outputs([<metaitem:dustNetherStar> * 2])
    .duration(200)
    .EUt(7680)
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



########################################
# Greenhouse
########################################
var mbt_greenhouse = Builder.start("greenhouse")
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle(" CCC ", " CCC ", " CCC ", " CCC ")
            .aisle("CCCCC", "CDDDC", "C   C", "CGGGC")
            .aisle("CCCCC", "CDDDC", "C   C", "CGGGC")
            .aisle("CCCCC", "CDDDC", "C   C", "CGGGC")
            .aisle(" CCC ", " CSC ", " CCC ", " CCC ")
            .where("S", controller.self())
            .where("C", CTPredicate.states(<metastate:gregtech:machine_casing>)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where("G", CTPredicate.states(<metastate:gregtech:transparent_casing>))
            .where("D", CTPredicate.states(<blockstate:minecraft:dirt>))
            .where(" ", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(<recipemap:greenhouse>)
    .withBaseTexture(<metastate:gregtech:machine_casing>)
    .buildAndRegister();
mbt_greenhouse.hasMaintenanceMechanics = true;
mbt_greenhouse.hasMufflerMechanics = false;

recipes.addShaped(<metaitem:multiblocktweaker:greenhouse>, [
    [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>],
    [<ore:circuitGood>, <metaitem:hull.mv>, <ore:circuitGood>],
    [<metaitem:electric.piston.mv>, <metaitem:electric.pump.mv>, <metaitem:electric.piston.mv>]
]);
JEI.addDescription(<metaitem:multiblocktweaker:greenhouse>, "This came from the GTCEu Community Pack.");



########################################
# Void Ore Drilling Plant
########################################
var mbt_voidoreminer = Builder.start("voidoreminer")
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("CCCCC", " FFF ", " FFF ", " FFF ", "     ", "     ", "     ", "     ", "     ", "     ")
            .aisle("CCCCC", "FCCCF", "FCCCF", "FCCCF", " FFF ", "  F  ", "  F  ", "     ", "     ", "     ")
            .aisle("CCCCC", "FCCCF", "FCCCF", "FCCCF", " FCF ", " FCF ", " FCF ", "  F  ", "  F  ", "  F  ")
            .aisle("CCCCC", "FCCCF", "FCCCF", "FCCCF", " FFF ", "  F  ", "  F  ", "     ", "     ", "     ")
            .aisle("CCSCC", " FFF ", " FFF ", " FFF ", "     ", "     ", "     ", "     ", "     ", "     ")
            .where("S", controller.self())
            .where("C", CTPredicate.states(<metastate:gregtech:metal_casing:10>)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where("F", CTPredicate.states(<metastate:gregtech:meta_block_frame_157:7>))
            .where(" ", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(<recipemap:voidoreminer>)
    .withBaseTexture(<metastate:gregtech:metal_casing:10>)
    .buildAndRegister();
mbt_voidoreminer.hasMaintenanceMechanics = true;
mbt_voidoreminer.hasMufflerMechanics = false;

assembly_line.recipeBuilder()
    .inputs([<metaitem:hull.zpm>])
    .inputs([<metaitem:frameNaquadahAlloy> * 4])
    .inputs([<ore:circuitUltimate> * 4])
    .inputs([<metaitem:electric.motor.zpm> * 4])
    .inputs([<metaitem:electric.pump.zpm> * 4])
    .inputs([<metaitem:conveyor.module.zpm> * 4])
    .inputs([<metaitem:electric.piston.zpm> * 4])
    .inputs([<metaitem:robot.arm.zpm> * 4])
    .inputs([<metaitem:emitter.zpm> * 4])
    .inputs([<metaitem:sensor.zpm> * 4])
    .inputs([<metaitem:ore_dictionary_filter>])
    .inputs([<metaitem:gearNaquadahAlloy>])
    .fluidInputs(<liquid:soldering_alloy> * 18432)
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
