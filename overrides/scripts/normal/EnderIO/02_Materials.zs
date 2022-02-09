#packmode normal
# Imports
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
assembler.recipeBuilder()
    .inputs([
        <ore:ingotRoseGold> * 4,
        <gregtech:meta_item_1:717>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<enderio:item_basic_capacitor>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Double-layer Capacitor
assembler.recipeBuilder()
    .inputs([
        <enderio:item_basic_capacitor> * 2,
        <ore:ingotEnergeticAlloy> * 2,
        <ore:dustCoal>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<enderio:item_basic_capacitor:1>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Octadic Capacitor
assembler.recipeBuilder()
    .inputs([
        <enderio:item_basic_capacitor:1> * 2,
        <ore:ingotVibrantAlloy> * 2,
        <ore:dustCoal>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<enderio:item_basic_capacitor:2>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Electrical Steel Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:ingotSteel>,
        <ore:dustCoal>,
        <ore:dustSilicon>
    ])
    .property("temperature", 1500)
    .outputs([<gregtech:meta_ingot:32100>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Energetic Alloy Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:dustRedstone>,
        <ore:ingotGold>,
        <ore:dustGlowstone>
    ])
    .property("temperature", 1500)
    .outputs([<gregtech:meta_ingot:32101>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Vibrant Alloy Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:ingotEnergeticAlloySteel>,
        <ore:dustEnderPearl>
    ])
    .property("temperature", 1500)
    .outputs([<gregtech:meta_ingot:32102>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Redstone Alloy Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:ingotRedAlloy>,
        <ore:dustSilicon>
    ])
    .property("temperature", 1500)
    .outputs([<gregtech:meta_ingot:32103>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Conductive Iron Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:ingotIron>,
        <ore:dustRedstone>
    ])
    .property("temperature", 1500)
    .outputs([<gregtech:meta_ingot:32104>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Plusating Iron Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:ingotIron>,
        <ore:dustEnderPearl>
    ])
    .property("temperature", 1500)
    .outputs([<gregtech:meta_ingot:32105>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:ingotIron>,
        <ore:dustCoal>,
        <ore:dustObsidian>
    ])
    .property("temperature", 1500)
    .outputs([<gregtech:meta_ingot:32106>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Soularium Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:ingotGold>,
        <minecraft:soul_sand>
    ])
    .property("temperature", 2000)
    .outputs([<gregtech:meta_ingot:32107>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# End Steel Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <minecraft:end_stone>,
        <ore:ingotDarkSteel>,
        <minecraft:obsidian>
    ])
    .property("temperature", 2500)
    .outputs([<gregtech:meta_ingot:32108>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Iron Alloy Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:ingotPlatinum>,
        <ore:ingotIron>,
        <ore:ingotAluminium>
    ])
    .property("temperature", 3000)
    .outputs([<gregtech:meta_ingot:32109>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Simple Machine Chassis
recipes.addShaped(<enderio:item_material>, [
    [<ore:barsIron>, <ore:ingotIron>, <ore:barsIron>],
    [<ore:ingotIron>, <ore:dustBedrock>, <ore:ingotIron>],
    [<ore:barsIron>, <ore:ingotIron>, <ore:barsIron>]
]);

# Industrial Machine Chassis
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:itemSimpleMachineChassi>,
        <ore:dyeMachine>
    ])
    .outputs([<enderio:item_material:1>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Simple Machine Parts
JEI.removeAndHide(<enderio:item_material:69>);

# Machine Parts
JEI.removeAndHide(<enderio:item_material:2>);

# Enhanced Machine Parts
JEI.removeAndHide(<enderio:item_material:68>);

# Soul Machine Chassis
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:itemSimpleMachineChassi>,
        <ore:dyeSoulMachine>
    ])
    .outputs([<enderio:item_material:53>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Enhanced Machine Chassis
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:itemEndSteelMachineChassi>,
        <ore:dyeEnhancedMachine>
    ])
    .outputs([<enderio:item_material:55>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Soulleses Machine Chassis
assembler.recipeBuilder()
    .inputs([
        <enderio:block_industrial_insulation> * 6,
        <ore:skullGuardianDiode> * 2,
        <ore:itemSoulMachineChassi>
    ])
    .outputs([<enderio:item_material:55>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# End Steel Chassis
assembler.recipeBuilder()
    .inputs([
        <enderio:block_end_iron_bars> * 4,
        <ore:ingotEndSteel> * 4,
        <ore:dustBedrock>
    ])
    .outputs([<enderio:item_material:66>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Photovoltaic Plate
JEI.removeAndHide(<enderio:item_material:3>);

# Conduit Binder
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:gravel> * 5,
        <ore:sand> * 2,
        <ore:dustClay> * 2
    ])
    .property("temperature", 1500)
    .outputs([<enderio:item_material:4>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Silicon
JEI.removeAndHide(<enderio:item_material:5>);
// <ore:itemSilicon>.remove(<enderio:item_material:5>);

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
JEI.removeAndHide(<enderio:item_material:9>);
<ore:gearWood>.remove(<enderio:item_material:9>);

# Stone Gear
JEI.removeAndHide(<enderio:item_material:10>);
<ore:gearStone>.remove(<enderio:item_material:10>);

# Infity Bimetal Gear
JEI.removeAndHide(<enderio:item_material:11>);

# Energized Bimetal Gear
JEI.removeAndHide(<enderio:item_material:12>);

# Vibrant Bimetal Gear
JEI.removeAndHide(<enderio:item_material:13>);

# Dark Bimetal Gear
JEI.removeAndHide(<enderio:item_material:73>);

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
JEI.removeAndHide(<enderio:item_material:21>);
<ore:dustWheat>.remove(<enderio:item_material:21>);

# Conduit Binder Composite
JEI.removeAndHide(<enderio:item_material:22>);

# Coal Powder
JEI.removeAndHide(<enderio:item_material:23>);
<ore:dustCoal>.remove(<enderio:item_material:23>);

# Iron Powder
JEI.removeAndHide(<enderio:item_material:24>);
<ore:dustIron>.remove(<enderio:item_material:24>);

# Gold Powder
JEI.removeAndHide(<enderio:item_material:25>);
<ore:dustGold>.remove(<enderio:item_material:25>);

# Copper Powder
JEI.removeAndHide(<enderio:item_material:26>);
<ore:dustCopper>.remove(<enderio:item_material:26>);

# Tin Powder
JEI.removeAndHide(<enderio:item_material:27>);
<ore:dustTin>.remove(<enderio:item_material:27>);

# Ender Pearl Powder
JEI.removeAndHide(<enderio:item_material:22>);
// <ore:nuggetEnderpearl>.remove(<enderio:item_material:28>);

# Obsidian Powder
JEI.removeAndHide(<enderio:item_material:29>);
<ore:dustObsidian>.remove(<enderio:item_material:29>);

# Cobalt Powder
JEI.removeAndHide(<enderio:item_material:31>);
<ore:dustCobalt>.remove(<enderio:item_material:31>);

# Lapis Powder
JEI.removeAndHide(<enderio:item_material:32>);
<ore:dustLapis>.remove(<enderio:item_material:32>);

# Quartz Powder
JEI.removeAndHide(<enderio:item_material:33>);
<ore:dustNetherQuartz>.remove(<enderio:item_material:33>);

# Withering Dust
JEI.removeAndHide(<enderio:item_material:63>);

# Confusing Powder
JEI.removeAndHide(<enderio:item_material:61>);

# Soul Powder
macerator.recipeBuilder()
    .inputs([<ore:ingotSoularium>])
    .outputs([<enderio:item_material:74>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Glowstone Dust
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:dustGlowstone>,
        <minecraft:clay_ball>
    ])
    .outputs([<enderio:item_material:76>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Grains of Prescience
macerator.recipeBuilder()
    .inputs([<ore:itemPrecientCrystal>])
    .outputs([<enderio:item_material:34>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Grains of Vibranct
macerator.recipeBuilder()
    .inputs([<ore:itemVibrantCrystal>])
    .outputs([<enderio:item_material:35>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Grains of Piezallity
macerator.recipeBuilder()
    .inputs([<ore:itemPulsatingCrystal>])
    .outputs([<enderio:item_material:36>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Grains of the End
macerator.recipeBuilder()
    .inputs([<ore:itemEnderCrystal>])
    .outputs([<enderio:item_material:37>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

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
macerator.recipeBuilder()
    .inputs([<ore:grass>])
    .outputs([<enderio:item_material:46>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Twings and Prunings
macerator.recipeBuilder()
    .inputs([<minecraft:deadbush>])
    .outputs([<enderio:item_material:47>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Organic Green Dye
alloy_smelter.recipeBuilder()
    .inputs([
        <enderio:item_material:46> * 6,
        <minecraft:egg>
    ])
    .outputs([<enderio:item_material:48>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Organic Brown Dye
alloy_smelter.recipeBuilder()
    .inputs([
        <enderio:item_material:47> * 6,
        <minecraft:egg>
    ])
    .outputs([<enderio:item_material:49>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Organic Black Dye
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:dustCoal> * 3,
        <minecraft:egg>
    ])
    .outputs([<enderio:item_material:50>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Induatrial Dye Blend
mixer.recipeBuilder()
    .inputs([
        <ore:dustNetherQuartz> * 4,
        <ore:dustLapis> * 2,
        <ore:dyeGreen> * 2,
        <ore:dyeBlack>
    ])
    .outputs([<enderio:item_material:51>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Soul Attuned Dye Blend
mixer.recipeBuilder()
    .inputs([
        <ore:dustNetherQuartz> * 4,
        <ore:dustSoularium> * 2,
        <ore:dyeBrown> * 2,
        <ore:dyeBlack>
    ])
    .outputs([<enderio:item_material:52>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

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
JEI.removeAndHide(<enderio:item_material:70>);

# Netherotta
JEI.removeAndHide(<enderio:item_material:72>);

# Infinity Rod
JEI.removeAndHide(<enderio:item_material:71>);

# Infinity Reagent
JEI.removeAndHide(<enderio:item_material:75>);

# Black Paper
recipes.addShapeless(<enderio:item_material:77>, [
    <ore:paper>, <ore:dyeBlack>
]);

# Animal Token
JEI.removeAndHide(<enderio:item_material:78>);

# Monster Token
JEI.removeAndHide(<enderio:item_material:79>);

# Player Token
JEI.removeAndHide(<enderio:item_material:80>);

# Unfired Death Urn
recipes.addShaped(<enderio:item_material:81>, [
    [<ore:itemClay>, <ore:itemPulsatingPowder>, <ore:itemClay>],
    [<ore:itemClay>, null, <ore:itemClay>],
    [<ore:itemClay>, <ore:itemClay>, <ore:itemClay>]
]);

# Death Urn
alloy_smelter.recipeBuilder()
    .inputs([
        <minecraft:dye:15> * 7,
        <enderio:item_material:81>
    ])
    .outputs([<enderio:block_death_pouch>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Infinity Dust
macerator.recipeBuilder()
    .inputs([<ore:dustBedrock>])
    .outputs([<enderio:block_infinity_fog>])
    .duration(500)
    .EUt(480)
    .buildAndRegister();

# Infinity Dust Block
compressor.recipeBuilder()
    .inputs([<ore:dustBedrock> * 9])
    .outputs([<enderio:block_infinity>])
    .duration(500)
    .EUt(480)
    .buildAndRegister();

# Compressed Infinity Dust Block
compressor.recipeBuilder()
    .inputs([<enderio:block_infinity> * 9])
    .outputs([<enderio:block_infinity:1>])
    .duration(500)
    .EUt(480)
    .buildAndRegister();

# Double Compressed Infinity Dust Block
compressor.recipeBuilder()
    .inputs([<enderio:block_infinity:1> * 9])
    .outputs([<enderio:block_infinity:2>])
    .duration(500)
    .EUt(480)
    .buildAndRegister();

# Glowstone Nano-Particles
macerator.recipeBuilder()
    .inputs([<ore:itemClayedGlowstone>])
    .outputs([<enderio:block_holier_fog>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Enderman Head

# Tormented Enderman Head
SliceNSplice.addRecipe(<enderio:block_enderman_skull:2>, [
    <ore:ingotSoularium>, <enderio:block_enderman_skull>, <ore:ingotSoularium>,
    <minecraft:potion>.withTag({Potion: "minecraft:water"}), <enderio:item_basic_capacitor> | <enderio:item_capacitor_silver>, <minecraft:potion>.withTag({Potion: "minecraft:water"})
]);

# Crude Steel Ingot
alloy_smelter.recipeBuilder()
    .inputs([
        <minecraft:gravel>,
        <minecraft:clay_ball> * 9
    ])
    .outputs([<gregtech:meta_ingot:32110>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Crystalling Alloy Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:ingotGold>,
        <ore:itemPrecientPowder>
    ])
    .property("temperature", 3000)
    .outputs([<gregtech:meta_ingot:32111>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Melodic Alloy Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:ingotEndSteel>,
        <minecraft:chorus_fruit_popped>
    ])
    .property("temperature", 3000)
    .outputs([<gregtech:meta_ingot:32112>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Stellar Alloy Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <minecraft:nether_star>,
        <ore:ingotMelodicAlloy>,
        <ore:dustClay> * 4
    ])
    .property("temperature", 3500)
    .outputs([<gregtech:meta_ingot:32113>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Crystalling Pink Slime Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:ingotMelodicAlloy>,
        <minecraft:slime_ball> * 8
    ])
    .property("temperature", 3500)
    .outputs([<gregtech:meta_ingot:32114>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Energetic Silver Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:dustRedstone>,
        <ore:ingotSilver>,
        <ore:dustGlowstone>,
    ])
    .property("temperature", 3500)
    .outputs([<gregtech:meta_ingot:32115>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Vivid Alloy Ingote
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:ingotEnergeticSilver>,
        <ore:dustEnderPearl>
    ])
    .property("temperature", 3500)
    .outputs([<gregtech:meta_ingot:32116>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Grainy Capacior
JEI.removeAndHide(<enderio:item_capacitor_grainy>);

# Silver Capacitor
assembler.recipeBuilder()
    .inputs([
        <ore:ingotSilver> * 4,
        <gregtech:meta_item_1:717>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<enderio:item_capacitor_silver>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Endergetic Silver Capacitor
assembler.recipeBuilder()
    .inputs([
        <enderio:item_capacitor_silver> * 2,
        <ore:ingotEnergeticSilver> * 2,
        <ore:dustCoal>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<enderio:item_capacitor_energetic_silver>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Endergised Capacitor
assembler.recipeBuilder()
    .inputs([
        <enderio:item_capacitor_energetic_silver> * 2,
        <ore:ingotVividAlloy> * 2,
        <ore:dustCoal>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<enderio:item_capacitor_vivid>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Endergised Capacitor
assembler.recipeBuilder()
    .inputs([
        <enderio:item_capacitor_energetic_silver> * 2,
        <ore:ingotVividAlloy> * 2,
        <ore:dustCoal>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<enderio:item_capacitor_vivid>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Crystalline Capacitor
assembler.recipeBuilder()
    .inputs([
        <enderio:item_basic_capacitor:2> * 2,
        <ore:ingotCrystallineAlloy> * 2,
        <ore:dustPrismarine>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<enderio:item_capacitor_crystalline>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Melodic Capacitor
assembler.recipeBuilder()
    .inputs([
        <enderio:item_capacitor_crystalline> * 2,
        <ore:ingotEndSteel> * 2,
        <ore:nuggetEndSteel>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<enderio:item_capacitor_melodic>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Stellar Capacitor
JEI.removeAndHide(<enderio:item_capacitor_stellar>);

# Totemic Capacitor
SliceNSplice.addRecipe(<enderio:item_capacitor_totemic>, [
    <ore:ingotSoularium>, <minecraft:totem_of_undying>, <ore:ingotSoularium>,
    <enderio:item_material:35>, <enderio:item_capacitor_crystalline>, <enderio:item_material:35>
]);
