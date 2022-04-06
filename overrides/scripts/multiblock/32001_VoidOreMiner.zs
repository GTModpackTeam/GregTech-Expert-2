# Imports
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.zenutils.I18n;
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
var voidoreminer_mbt = Builder.start("voidoreminer", 32001)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("CCCCC", " FFF ", " FFF ", " FFF ", "     ", "     ", "     ", "     ", "     ", "     ")
            .aisle("CCCCC", "FCCCF", "FCCCF", "FCCCF", " FFF ", "  F  ", "  F  ", "     ", "     ", "     ")
            .aisle("CCCCC", "FCCCF", "FCCCF", "FCCCF", " FCF ", " FCF ", " FCF ", "  F  ", "  F  ", "  F  ")
            .aisle("CCCCC", "FCCCF", "FCCCF", "FCCCF", " FFF ", "  F  ", "  F  ", "     ", "     ", "     ")
            .aisle("CCSCC", " FFF ", " FFF ", " FFF ", "     ", "     ", "     ", "     ", "     ", "     ")
            .where('S', controller.self())
            .where('C', CTPredicate.states(<metastate:gregtech:metal_casing:10>)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setMaxGlobalLimited(2).setPreviewCount(2)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where('F', CTPredicate.states(<metastate:gregtech:meta_block_frame_157:7>))
            .where('#', CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(<recipemap:voidoreminer>)
    .withBaseTexture(<metastate:gregtech:metal_casing:10>)
    .buildAndRegister();
voidoreminer_mbt.hasMaintenanceMechanics = true;
voidoreminer_mbt.hasMufflerMechanics = false;

assembly_line.recipeBuilder()
    .inputs([<metaitem:hull.zpm>])
    .inputs([<metaitem:frameNaquadahAlloy> * 4])
    .inputs([<ore:circuitZpm> * 4])
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
JEI.addDescription(<metaitem:multiblocktweaker:voidoreminer>, I18n.format("multiblocktweaker.voidoreminer.tooltip.1"));



########################################
# Finalize
########################################
# Ores
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
        .fluidInputs([<liquid:drilling_fluid> * 20000])
        .fluidInputs([<liquid:ender_distillation> * 10])
        .outputs([ore * 64])
        .duration(20)
        .EUt(122880)
        .buildAndRegister();
}
