# Imoprts
import mods.jei.JEI;
import mods.enderio.AlloySmelter; // 1
import mods.enderio.CombustionGen; // no
import mods.enderio.Enchanter; // no
import mods.enderio.SagMill; // 2
import mods.enderio.SliceNSplice; // 3
import mods.enderio.SoulBinder; // 4
import mods.enderio.Vat; // 5
import mods.enderio.Tank; // no



########################################
# Items
########################################
# Basic Capacitor
assembler.recipeBuilder().
    inputs([
        <ore:ingotRoseGold> * 4,
        <gregtech:meta_item_1:717>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_basic_capacitor>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Double-layer Capacitor
assembler.recipeBuilder().
    inputs([
        <enderio:item_basic_capacitor> * 2,
        <ore:ingotEnergeticAlloy> * 2,
        <ore:dustCoal>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_basic_capacitor:1>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Octadic Capacitor
assembler.recipeBuilder().
    inputs([
        <enderio:item_basic_capacitor:1> * 2,
        <ore:ingotVibrantAlloy> * 2,
        <ore:dustCoal>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_basic_capacitor:2>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Electrical Steel Ingot
electric_blast_furnace.recipeBuilder().
    inputs([
        <ore:ingotSteel>,
        <ore:dustCoal>,
        <ore:dustSilicon>
    ]).
    property("temperature", 1500).
    outputs([<enderio:item_alloy_ingot>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Energetic Alloy Ingot
electric_blast_furnace.recipeBuilder().
    inputs([
        <ore:dustRedstone>,
        <ore:ingotGold>,
        <ore:dustGlowstone>
    ]).
    property("temperature", 1500).
    outputs([<enderio:item_alloy_ingot:1>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Vibrant Alloy Ingot
electric_blast_furnace.recipeBuilder().
    inputs([
        <enderio:item_alloy_ingot:1>,
        <ore:dustEnderPearl>
    ]).
    property("temperature", 1500).
    outputs([<enderio:item_alloy_ingot:2>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Redstone Alloy Ingot
electric_blast_furnace.recipeBuilder().
    inputs([
        <ore:ingotRedAlloy>,
        <ore:dustSilicon>
    ]).
    property("temperature", 1500).
    outputs([<enderio:item_alloy_ingot:3>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Conductive Iron Ingot
electric_blast_furnace.recipeBuilder().
    inputs([
        <ore:ingotIron>,
        <ore:dustRedstone>
    ]).
    property("temperature", 1500).
    outputs([<enderio:item_alloy_ingot:4>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Plusating Iron Ingot
electric_blast_furnace.recipeBuilder().
    inputs([
        <ore:ingotIron>,
        <ore:dustEnderPearl>
    ]).
    property("temperature", 1500).
    outputs([<enderio:item_alloy_ingot:5>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Dark Steel Ingot
electric_blast_furnace.recipeBuilder().
    inputs([
        <ore:ingotIron>,
        <ore:dustCoal>,
        <ore:dustObsidian>
    ]).
    property("temperature", 1500).
    outputs([<enderio:item_alloy_ingot:6>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Soularium Ingot
electric_blast_furnace.recipeBuilder().
    inputs([
        <ore:ingotGold>,
        <minecraft:soul_sand>
    ]).
    property("temperature", 2000).
    outputs([<enderio:item_alloy_ingot:7>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# End Steel Ingot
electric_blast_furnace.recipeBuilder().
    inputs([
        <minecraft:end_stone>,
        <ore:ingotDarkSteel>,
        <minecraft:obsidian>
    ]).
    property("temperature", 2500).
    outputs([<enderio:item_alloy_ingot:8>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Iron Alloy Ingot
electric_blast_furnace.recipeBuilder().
    inputs([
        <ore:ingotPlatinum>,
        <ore:ingotIron>,
        <ore:ingotAluminium>
    ]).
    property("temperature", 3000).
    outputs([<enderio:item_alloy_ingot:9>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Simple Machine Chassis
recipes.addShaped(<enderio:item_material>, [
    [<ore:barsIron>, <ore:ingotIron>, <ore:barsIron>],
    [<ore:ingotIron>, <ore:dustBedrock>, <ore:ingotIron>],
    [<ore:barsIron>, <ore:ingotIron>, <ore:barsIron>]
]);

# Industrial Machine Chassis
alloy_smelter.recipeBuilder().
    inputs([
        <ore:itemSimpleMachineChassi>,
        <ore:dyeMachine>
    ]).
    outputs([<enderio:item_material:1>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Simple Machine Parts

# Machine Parts

# Enhanced Machine Parts

# Soul Machine Chassis
alloy_smelter.recipeBuilder().
    inputs([
        <ore:itemSimpleMachineChassi>,
        <ore:dyeSoulMachine>
    ]).
    outputs([<enderio:item_material:53>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Enhanced Machine Chassis
alloy_smelter.recipeBuilder().
    inputs([
        <ore:itemEndSteelMachineChassi>,
        <ore:dyeEnhancedMachine>
    ]).
    outputs([<enderio:item_material:55>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Soulleses Machine Chassis
assembler.recipeBuilder().
    inputs([
        <enderio:block_industrial_insulation> * 6,
        <ore:skullGuardianDiode> * 2,
        <ore:itemSoulMachineChassi>
    ]).
    outputs([<enderio:item_material:55>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# End Steel Chassis
assembler.recipeBuilder().
    inputs([
        <enderio:block_end_iron_bars> * 4,
        <ore:ingotEndSteel> * 4,
        <ore:dustBedrock>
    ]).
    outputs([<enderio:item_material:66>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Photovoltaic Plate

# Conduit Binder
electric_blast_furnace.recipeBuilder().
    inputs([<ore:itemBinderComposite>]).
    outputs([<enderio:item_material:4>]).
    property("temperature", 1500).
    duration(56).
    EUt(480).
    buildAndRegister();

# Glider Wing
recipes.addShaped(<enderio:item_material:6>, [
    [null, null, <ore:nuggetDarkSteel>],
    [null, <ore:nuggetDarkSteel>, <minecraft:leather>],
    [<ore:nuggetDarkSteel>, <minecraft:leather>, <minecraft:leather>]
]);

# Glider Wings
recipes.addShaped(<enderio:item_material:7>, [
    [null, null, null],
    [null, <ore:ingotDarkSteel>, null],
    [<enderio:item_material:6>, <ore:ingotDarkSteel>, <enderio:item_material:6>]
]);

# Wooden Gear
<ore:gearWood>.remove(<enderio:item_material:9>);

# Stone Gear
<ore:gearStone>.remove(<enderio:item_material:10>);

# Infity Bimetal Gear
recipes.addShaped(<enderio:item_material:11>, [
    [<ore:nuggetIron>, <minecraft:iron_ingot>, <ore:nuggetIron>],
    [<ore:ingotIron>, <ore:dustBedrock>, <ore:ingotIron>],
    [<ore:nuggetIron>, <ore:ingotIron>, <minecraft:iron_nugget>]
]);

# Energized Bimetal Gear
recipes.addShaped(<enderio:item_material:12>, [
    [<ore:nuggetEnergeticAlloy>, <ore:nuggetEnergeticAlloy>, <ore:nuggetEnergeticAlloy>],
    [<ore:nuggetEnergeticAlloy>, <ore:gearIronInfinity>, <ore:nuggetEnergeticAlloy>],
    [<ore:nuggetEnergeticAlloy>, <ore:nuggetEnergeticAlloy>, <enderio:item_alloy_nugget:1>]
]);

# Vibrant Bimetal Gear
recipes.addShaped(<enderio:item_material:13>, [
    [<ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>],
    [<ore:nuggetVibrantAlloy>, <ore:gearEnergized>, <ore:nuggetVibrantAlloy>],
    [<ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>, <enderio:item_alloy_nugget:2>]
]);

# Dark Bimetal Gear
recipes.addShaped(<enderio:item_material:73>, [
    [<ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>],
    [<ore:nuggetDarkSteel>, <ore:gearIronInfinity>, <ore:nuggetDarkSteel>],
    [<ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>, <enderio:item_alloy_nugget:6>]
]);

# Pulsating Crystal
recipes.addShaped(<enderio:item_material:14>, [
    [<ore:nuggetPulsatingIron>, <ore:nuggetPulsatingIron>, <ore:nuggetPulsatingIron>],
    [<ore:nuggetPulsatingIron>, <minecraft:diamond>, <ore:nuggetPulsatingIron>],
    [<ore:nuggetPulsatingIron>, <ore:nuggetPulsatingIron>, <ore:nuggetPulsatingIron>]
]);

# Vibrant Crystal
recipes.addShaped(<enderio:item_material:15>, [
    [<ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>],
    [<ore:nuggetVibrantAlloy>, <ore:gemEmerald>, <ore:nuggetVibrantAlloy>],
    [<ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>]
]);

# Ender Crystal
SoulBinder.addRecipe(<enderio:item_material:16>, <ore:itemVibrantCrystal>, ["minecraft:enderman"], 150000, 6);

# Ender Crystal
SoulBinder.addRecipe(<enderio:item_material:17>, <minecraft:emerald>, ["minecraft:villager"], 100000, 4);

# Weather Crystal
recipes.addShaped(<enderio:item_material:18>, [
    [null, <ore:itemPulsatingCrystal>, null],
    [<ore:itemVibrantCrystal>, <ore:itemEnderCrystal>, <ore:itemVibrantCrystal>],
    [null, <ore:itemPulsatingCrystal>, null]
]);

# Ender Crystal
SoulBinder.addRecipe(<enderio:item_material:19>, <enderio:item_material:15>, ["minecraft:shulker"], 200000, 8);

# Flour

# Conduit Binder Composite
recipes.addShaped(<enderio:item_material:22> * 4, [
    [<ore:gravel>, <ore:itemClay>, <minecraft:gravel:*>],
    [<minecraft:sand:*>, <ore:gravel>, <ore:sand>],
    [<ore:gravel>, <ore:itemClay>, <ore:gravel>]
]);

# Coal Powder
<ore:dustCoal>.remove(<enderio:item_material:23>);

# Iron Powder
<ore:dustIron>.remove(<enderio:item_material:24>);

# Gold Powder
<ore:dustGold>.remove(<enderio:item_material:25>);

# Copper Powder
<ore:dustCopper>.remove(<enderio:item_material:26>);

# Tin Powder
<ore:dustTin>.remove(<enderio:item_material:27>);

# Ender Pearl Powder
// <ore:nuggetEnderpearl>.remove(<enderio:item_material:28>);

# Obsidian Powder
<ore:dustObsidian>.remove(<enderio:item_material:29>);

# Cobalt Powder
<ore:dustCobalt>.remove(<enderio:item_material:31>);

# Lapis Powder
<ore:dustLapis>.remove(<enderio:item_material:32>);

# Quartz Powder
<ore:dustNetherQuartz>.remove(<enderio:item_material:33>);

# Confusing Powder

# Withering Dust

# Soul Powder
macerator.recipeBuilder().
    inputs([<ore:ingotSoularium>]).
    outputs([<enderio:item_material:74>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Glowstone Dust
alloy_smelter.recipeBuilder().
    inputs([
        <ore:dustGlowstone>,
        <minecraft:clay_ball>
    ]).
    outputs([<enderio:item_material:76>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Grains of Prescience
macerator.recipeBuilder().
    inputs([<ore:ingotSoularium>]).
    outputs([<enderio:item_material:34>]).
    duration(100).
    EUt(480).
    buildAndRegister();

# Grains of Vibranct
macerator.recipeBuilder().
    inputs([<ore:itemVibrantCrystal>]).
    outputs([<enderio:item_material:35>]).
    duration(100).
    EUt(480).
    buildAndRegister();

# Grains of Piezallity
macerator.recipeBuilder().
    inputs([<ore:itemPulsatingCrystal>]).
    outputs([<enderio:item_material:36>]).
    duration(100).
    EUt(480).
    buildAndRegister();

# Grains of the End
macerator.recipeBuilder().
    inputs([<ore:itemEnderCrystal>]).
    outputs([<enderio:item_material:37>]).
    duration(100).
    EUt(480).
    buildAndRegister();

# Photovoltaic Composite
recipes.addShaped(<enderio:item_material:38>, [
    [<ore:dustLapis>, <ore:dustCoal>, null],
    [<ore:dustSilicon>, null, null],
    [null, null, null]
]);

# Zombie Eletrode
SliceNSplice.addRecipe(<enderio:item_material:40>, [
    <ore:ingotEnergeticAlloy>, <minecraft:skull:2>, <ore:ingotEnergeticAlloy>,
    <ore:dustSilicon>, <enderio:item_basic_capacitor> | <enderio:item_capacitor_silver>, <ore:dustSilicon>
]);

# Z-Logic Controller
SliceNSplice.addRecipe(<enderio:item_material:41>, [
    <ore:ingotSoularium>, <minecraft:skull:2>, <ore:ingotSoularium>,
    <ore:dustSilicon>, <ore:dustRedstone>, <ore:dustSilicon>
]);

# Frank'N'Zombie
SoulBinder.addRecipe(<enderio:item_material:42>, <enderio:item_material:41>, ["minecraft:zombie"], 100000, 4);

# Ender Resonator
SliceNSplice.addRecipe(<enderio:item_material:43>, [
    <ore:ingotSoularium>, <enderio:block_enderman_skull>, <ore:ingotSoularium>,
    <ore:dustSilicon>, <ore:ingotVibrantAlloy>, <ore:dustSilicon>
]);

# Sentient Ender
SoulBinder.addRecipe(<enderio:item_material:44>, <enderio:item_material:43>, ["minecraft:witch"], 100000, 4);

# Skeletal Contractor
SliceNSplice.addRecipe(<enderio:item_material:45>, [
    <ore:ingotSoularium>, <minecraft:skull>, <ore:ingotSoularium>,
    <minecraft:rotten_flesh>, <enderio:item_basic_capacitor> | <enderio:item_capacitor_silver>, <minecraft:rotten_flesh>
]);

# Clippings and Trimmings
macerator.recipeBuilder().
    inputs([<ore:grass>]).
    outputs([<enderio:item_material:46>]).
    duration(100).
    EUt(480).
    buildAndRegister();

# Twings and Prunings
macerator.recipeBuilder().
    inputs([<minecraft:deadbush>]).
    outputs([<enderio:item_material:47>]).
    duration(100).
    EUt(480).
    buildAndRegister();

# Organic Green Dye
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_material:46> * 6,
        <minecraft:egg>
    ]).
    outputs([<enderio:item_material:48>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Organic Brown Dye
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_material:47> * 6,
        <minecraft:egg>
    ]).
    outputs([<enderio:item_material:49>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Organic Black Dye
alloy_smelter.recipeBuilder().
    inputs([
        <ore:dustCoal> * 3,
        <minecraft:egg>
    ]).
    outputs([<enderio:item_material:50>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Induatrial Dye Blend
mixer.recipeBuilder().
    inputs([
        <ore:dustNetherQuartz> * 4,
        <ore:dustLapis> * 2,
        <ore:dyeGreen> * 2,
        <ore:dyeBlack>
    ]).
    outputs([<enderio:item_material:51>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Soul Attuned Dye Blend
mixer.recipeBuilder().
    inputs([
        <ore:dustNetherQuartz> * 4,
        <ore:dustSoularium> * 2,
        <ore:dyeBrown> * 2,
        <ore:dyeBlack>
    ]).
    outputs([<enderio:item_material:52>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Guardian Diode
SliceNSplice.addRecipe(<enderio:item_material:56>, [
    <ore:ingotEnergeticAlloy>, <ore:gemPrismarine>, <ore:ingotEnergeticAlloy>,
    <ore:dustPrismarine>, <enderio:item_basic_capacitor> | <enderio:item_capacitor_silver>, <ore:dustPrismarine>
]);

# Wireless Energy Transmitter
recipes.addShaped(<enderio:item_material:65>, [
    [<minecraft:dye:15>, <ore:ingotElectricalSteel>, null],
    [null, <minecraft:dye:15>, <ore:ingotElectricalSteel>],
    [<minecraft:dye:15>, <ore:ingotElectricalSteel>, null]
]);

# Cake Base
alloy_smelter.recipeBuilder().
    inputs([
        <ore:dustWheat> * 3,
        <minecraft:egg>
    ]).
    outputs([<enderio:item_material:70>]).
    duration(56).
    EUt(7).
    buildAndRegister();

# Netherotta

# Infinity Rod

# Infinity Reagent

# Black Paper
recipes.addShapeless(<enderio:item_material:77>, [
    <ore:paper>,<ore:dyeBlack>
]);

# Animal Token

# Monster Token

# Player Token

# Unfired Death Urn
recipes.addShaped(<enderio:item_material:81>, [
    [<ore:itemClay>, <ore:itemPulsatingPowder>, <ore:itemClay>],
    [<ore:itemClay>, null, <ore:itemClay>],
    [<ore:itemClay>, <ore:itemClay>, <ore:itemClay>]
]);

# Death Urn
alloy_smelter.recipeBuilder().
    inputs([
        <minecraft:dye:15> * 7,
        <enderio:item_material:81>
    ]).
    outputs([<enderio:block_death_pouch>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Infinity Dust
macerator.recipeBuilder().
    inputs([<ore:dustBedrock>]).
    outputs([<enderio:block_infinity_fog>]).
    duration(500).
    EUt(480).
    buildAndRegister();

# Infinity Dust Block
compressor.recipeBuilder().
    inputs([<ore:dustBedrock> * 9]).
    outputs([<enderio:block_infinity>]).
    duration(500).
    EUt(480).
    buildAndRegister();

# Compressed Infinity Dust Block
compressor.recipeBuilder().
    inputs([<enderio:block_infinity> * 9]).
    outputs([<enderio:block_infinity:1>]).
    duration(500).
    EUt(480).
    buildAndRegister();

# Double Compressed Infinity Dust Block
compressor.recipeBuilder().
    inputs([<enderio:block_infinity:1> * 9]).
    outputs([<enderio:block_infinity:2>]).
    duration(500).
    EUt(480).
    buildAndRegister();

# Glowstone Nano-Particles
macerator.recipeBuilder().
    inputs([<ore:itemClayedGlowstone>]).
    outputs([<enderio:block_holier_fog>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Enderman Head

# Tormented Enderman Head
SliceNSplice.addRecipe(<enderio:block_enderman_skull:2>, [
    <ore:ingotSoularium>, <enderio:block_enderman_skull>, <ore:ingotSoularium>,
    <minecraft:potion>.withTag({Potion: "minecraft:water"}), <enderio:item_basic_capacitor> | <enderio:item_capacitor_silver>, <minecraft:potion>.withTag({Potion: "minecraft:water"})
]);

# Crude Steel Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <minecraft:gravel>,
        <minecraft:clay_ball> * 9
    ]).
    outputs([<enderio:item_alloy_endergy_ingot>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Crystalling Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotGold>,
        <ore:itemPrecientPowder>
    ]).
    outputs([<enderio:item_alloy_endergy_ingot:1>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Melodic Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotEndSteel>,
        <minecraft:chorus_fruit_popped>
    ]).
    outputs([<enderio:item_alloy_endergy_ingot:2>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Stellar Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotMelodicAlloy>,
        <minecraft:nether_star> * 2
    ]).
    outputs([<enderio:item_alloy_endergy_ingot:3>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Crystalling Pink Slime Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotMelodicAlloy>,
        <minecraft:slime_ball> * 8
    ]).
    outputs([<enderio:item_alloy_endergy_ingot:4>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Energetic Silver Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_alloy_ingot:1>,
        <ore:ingotSilver>
    ]).
    outputs([<enderio:item_alloy_endergy_ingot:5>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Vivid Alloy Ingote
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotEnergeticSilver>,
        <ore:dustEnderPearl>
    ]).
    outputs([<enderio:item_alloy_endergy_ingot:6>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Grainy Capacior

# Silver Capacitor
assembler.recipeBuilder().
    inputs([
        <ore:ingotSilver> * 4,
        <gregtech:meta_item_1:717>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_capacitor_silver>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Endergetic Silver Capacitor
assembler.recipeBuilder().
    inputs([
        <enderio:item_capacitor_silver> * 2,
        <ore:ingotEnergeticSilver> * 2,
        <ore:dustCoal>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_capacitor_energetic_silver>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Endergised Capacitor
assembler.recipeBuilder().
    inputs([
        <enderio:item_capacitor_energetic_silver> * 2,
        <ore:ingotVividAlloy> * 2,
        <ore:dustCoal>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_capacitor_vivid>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Endergised Capacitor
assembler.recipeBuilder().
    inputs([
        <enderio:item_capacitor_energetic_silver> * 2,
        <ore:ingotVividAlloy> * 2,
        <ore:dustCoal>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_capacitor_vivid>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Crystalline Capacitor
assembler.recipeBuilder().
    inputs([
        <enderio:item_basic_capacitor:2> * 2,
        <ore:ingotCrystallineAlloy> * 2,
        <ore:dustPrismarine>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_capacitor_crystalline>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Melodic Capacitor
assembler.recipeBuilder().
    inputs([
        <enderio:item_capacitor_crystalline> * 2,
        <enderio:item_alloy_endergy_ingot:2> * 2,
        <enderio:item_alloy_ingot:8>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_capacitor_melodic>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Stellar Capacitor

# Totemic Capacitor
SliceNSplice.addRecipe(<enderio:item_capacitor_totemic>, [
    <ore:ingotSoularium>, <minecraft:totem_of_undying>, <ore:ingotSoularium>,
    <enderio:item_material:35>, <enderio:item_capacitor_crystalline>, <enderio:item_material:35>
]);
