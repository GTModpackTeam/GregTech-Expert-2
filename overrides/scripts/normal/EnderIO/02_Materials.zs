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
        <metaitem:battery.hull.hv>,
        <ore:circuitAdvanced>
    ])
    .fluidInputs([<liquid:electrical_steel> * 1152])
    .outputs([<enderio:item_basic_capacitor>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Double-layer Capacitor
assembler.recipeBuilder()
    .inputs([
        <enderio:item_basic_capacitor> * 2,
        <ore:circuitExtreme>
    ])
    .fluidInputs([<liquid:energetic_alloy> * 1152])
    .outputs([<enderio:item_basic_capacitor:1>])
    .duration(56)
    .EUt(1920)
    .buildAndRegister();

# Octadic Capacitor
assembler.recipeBuilder()
    .inputs([
        <enderio:item_basic_capacitor:1> * 2,
        <ore:circuitElite>
    ])
    .fluidInputs([<liquid:vibrant_alloy> * 1152])
    .outputs([<enderio:item_basic_capacitor:2>])
    .duration(56)
    .EUt(7680)
    .buildAndRegister();

# Electrical Steel
mixer.recipeBuilder()
    .inputs([
        <ore:dustSteel>,
        <ore:dustCoal>,
        <ore:dustSilicon>
    ])
    .outputs([<metaitem:dustElectricalSteel>])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

# Energetic Alloy
mixer.recipeBuilder()
    .inputs([
        <ore:dustRedstone>,
        <ore:dustGold>,
        <ore:dustGlowstone>
    ])
    .outputs([<metaitem:dustEnergeticAlloy>])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

# Vibrant Alloy
mixer.recipeBuilder()
    .inputs([
        <ore:dustEnergeticAlloy>,
        <ore:dustEnderPearl>
    ])
    .outputs([<metaitem:dustVibrantAlloy>])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

# Redstone Alloy
mixer.recipeBuilder()
    .inputs([
        <ore:dustRedAlloy>,
        <ore:dustSilicon>
    ])
    .outputs([<metaitem:dustRedstoneAlloy>])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

# Conductive Iron
mixer.recipeBuilder()
    .inputs([
        <ore:dustRedstoneAlloy>,
        <ore:dustIron>
    ])
    .outputs([<metaitem:dustConductiveIron>])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

# Pulsating Iron
mixer.recipeBuilder()
    .inputs([
        <ore:dustEnderPearl>,
        <ore:dustIron>
    ])
    .outputs([<metaitem:dustPulsatingIron>])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

# Dark Steel
mixer.recipeBuilder()
    .inputs([
        <ore:dustObsidian>,
        <ore:dustIron>,
        <ore:dustCoal>
    ])
    .outputs([<metaitem:dustDarkSteel>])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

# Soularium
mixer.recipeBuilder()
    .inputs([
        <ore:dustGold>,
        <ore:dustAsh>,
        <minecraft:soul_sand>
    ])
    .outputs([<metaitem:dustSoularium>])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

# End Steel
mixer.recipeBuilder()
    .inputs([
        <ore:dustEndstone>,
        <ore:dustDarkSteel>,
        <ore:dustObsidian>
    ])
    .outputs([<metaitem:dustEndSteel>])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

# Construction Alloy(Iron Alloy)
mixer.recipeBuilder()
    .inputs([
        <ore:dustPlatinum>,
        <ore:dustIron>,
        <ore:dustAluminium>
    ])
    .outputs([<metaitem:dustConstructionAlloy>])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

# Simple Machine Parts
JEI.hide(<enderio:item_material:69>);

# Machine Parts
JEI.hide(<enderio:item_material:2>);

# Enhanced Machine Parts
JEI.hide(<enderio:item_material:68>);

# Simple Machine Chassis
recipes.addShaped(<enderio:item_material>, [
    [<ore:barsIron>, <ore:plateIron>, <ore:barsIron>],
    [<ore:plateIron>, <ore:dustBedrock>, <ore:plateIron>],
    [<ore:barsIron>, <ore:plateIron>, <ore:barsIron>]
]);

# Industrial Machine Chassis
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:itemSimpleMachineChassi>,
        <ore:dyeMachine>
    ])
    .outputs([<enderio:item_material:1>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Soul Machine Chassis
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:itemSimpleMachineChassi>,
        <ore:dyeSoulMachine>
    ])
    .outputs([<enderio:item_material:53>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Enhanced Machine Chassis
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:itemEndSteelMachineChassi>,
        <ore:dyeEnhancedMachine>
    ])
    .outputs([<enderio:item_material:54>])
    .duration(100)
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
    .duration(50)
    .EUt(480)
    .buildAndRegister();

# End Steel Chassis
assembler.recipeBuilder()
    .inputs([
        <enderio:block_end_iron_bars> * 4,
        <ore:plateEndSteel> * 4,
        <ore:skullEnderResonator>,
    ])
    .outputs([<enderio:item_material:66>])
    .duration(50)
    .EUt(480)
    .buildAndRegister();

# Photovoltaic Plate
JEI.hide(<enderio:item_material:3>);

# Conduit Binder
electric_blast_furnace.recipeBuilder()
    .inputs([
        <ore:dustAndesite> * 5,
        <ore:dustDiorite> * 5,
        <ore:dustClay> * 3
    ])
    .property("temperature", 1800)
    .outputs([<enderio:item_material:4>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Silicon
JEI.hide(<enderio:item_material:5>);
// <ore:itemSilicon>.remove(<enderio:item_material:5>);

# Glider Wing
recipes.addShaped(<enderio:item_material:6>, [
    [null, null, <ore:stickDarkSteel>],
    [null, <ore:stickDarkSteel>, <minecraft:leather>],
    [<ore:stickDarkSteel>, <minecraft:leather>, <minecraft:leather>]
]);

# Glider Wings
recipes.addShaped(<enderio:item_material:7>, [
    [<ore:screwDarkSteel>, <ore:stickDarkSteel>, <ore:screwDarkSteel>],
    [<ore:ringDarkSteel>, <ore:stickLongDarkSteel>, <ore:ringDarkSteel>],
    [<enderio:item_material:6>, <ore:stickLongDarkSteel>, <enderio:item_material:6>]
]);

# Nutritious Stick
JEI.hide(<enderio:item_material:8>);

# Wooden Gear
JEI.hide(<enderio:item_material:9>);
<ore:gearWood>.remove(<enderio:item_material:9>);

# Stone Gear
JEI.hide(<enderio:item_material:10>);
<ore:gearStone>.remove(<enderio:item_material:10>);

# Infity Bimetal Gear
JEI.hide(<enderio:item_material:11>);

# Energized Bimetal Gear
JEI.hide(<enderio:item_material:12>);

# Vibrant Bimetal Gear
JEI.hide(<enderio:item_material:13>);

# Dark Bimetal Gear
JEI.hide(<enderio:item_material:73>);

# Pulsating Crystal
autoclave.recipeBuilder()
    .inputs([<ore:itemPulsatingPowder>])
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs([<enderio:item_material:14>])
    .duration(600)
    .EUt(24)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<ore:itemPulsatingPowder>])
    .fluidInputs([<liquid:water> * 250])
    .chancedOutput(<enderio:item_material:14>, 7000, 1000)
    .duration(1200)
    .EUt(24)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<ore:itemPulsatingPowder> * 4])
    .property("explosives", <minecraft:tnt> * 2)
    .outputs([
        <enderio:item_material:14> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<ore:itemPulsatingPowder> * 4])
    .property("explosives", <metaitem:dynamite>)
    .outputs([
        <enderio:item_material:14> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Vibrant Crystal
autoclave.recipeBuilder()
    .inputs([<ore:itemVibrantPowder>])
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs([<enderio:item_material:15>])
    .duration(600)
    .EUt(24)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<ore:itemVibrantPowder>])
    .fluidInputs([<liquid:water> * 250])
    .chancedOutput(<enderio:item_material:15>, 7000, 1000)
    .duration(1200)
    .EUt(24)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<ore:itemVibrantPowder> * 4])
    .property("explosives", <minecraft:tnt> * 2)
    .outputs([
        <enderio:item_material:15> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<ore:itemVibrantPowder> * 4])
    .property("explosives", <metaitem:dynamite>)
    .outputs([
        <enderio:item_material:15> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Ender Crystal
autoclave.recipeBuilder()
    .inputs([<ore:itemEnderCrystalPowder>])
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs([<enderio:item_material:16>])
    .duration(600)
    .EUt(24)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<ore:itemEnderCrystalPowder>])
    .fluidInputs([<liquid:water> * 250])
    .chancedOutput(<enderio:item_material:16>, 7000, 1000)
    .duration(1200)
    .EUt(24)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<ore:itemEnderCrystalPowder> * 4])
    .property("explosives", <minecraft:tnt> * 2)
    .outputs([
        <enderio:item_material:16> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<ore:itemEnderCrystalPowder> * 4])
    .property("explosives", <metaitem:dynamite>)
    .outputs([
        <enderio:item_material:16> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Enticing Crystal
SoulBinder.addRecipe(<enderio:item_material:17>, <minecraft:emerald>, ["minecraft:villager"], 100000, 4);

# Weather Crystal
recipes.addShaped(<enderio:item_material:18>, [
    [null, <ore:itemPulsatingCrystal>, null],
    [<ore:itemVibrantCrystal>, <ore:itemEnderCrystal>, <ore:itemVibrantCrystal>],
    [null, <ore:itemPulsatingCrystal>, null]
]);

# Prescient Crystal
autoclave.recipeBuilder()
    .inputs([<ore:itemPrecientPowder>])
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs([<enderio:item_material:19>])
    .duration(600)
    .EUt(24)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<ore:itemPrecientPowder>])
    .fluidInputs([<liquid:water> * 250])
    .chancedOutput(<enderio:item_material:19>, 7000, 1000)
    .duration(1200)
    .EUt(24)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<ore:itemPrecientPowder> * 4])
    .property("explosives", <minecraft:tnt> * 2)
    .outputs([
        <enderio:item_material:19> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<ore:itemPrecientPowder> * 4])
    .property("explosives", <metaitem:dynamite>)
    .outputs([
        <enderio:item_material:19> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Flour
JEI.hide(<enderio:item_material:21>);
<ore:dustWheat>.remove(<enderio:item_material:21>);

# Conduit Binder Composite
JEI.hide(<enderio:item_material:22>);

# Coal Powder
JEI.hide(<enderio:item_material:23>);
<ore:dustCoal>.remove(<enderio:item_material:23>);

# Iron Powder
JEI.hide(<enderio:item_material:24>);
<ore:dustIron>.remove(<enderio:item_material:24>);

# Gold Powder
JEI.hide(<enderio:item_material:25>);
<ore:dustGold>.remove(<enderio:item_material:25>);

# Copper Powder
JEI.hide(<enderio:item_material:26>);
<ore:dustCopper>.remove(<enderio:item_material:26>);

# Tin Powder
JEI.hide(<enderio:item_material:27>);
<ore:dustTin>.remove(<enderio:item_material:27>);

# Ender Pearl Powder
JEI.hide(<enderio:item_material:28>);
// <ore:nuggetEnderpearl>.remove(<enderio:item_material:28>);

# Obsidian Powder
JEI.hide(<enderio:item_material:29>);
<ore:dustObsidian>.remove(<enderio:item_material:29>);

# Cobalt Powder
JEI.hide(<enderio:item_material:31>);
<ore:dustCobalt>.remove(<enderio:item_material:31>);

# Lapis Powder
JEI.hide(<enderio:item_material:32>);
<ore:dustLapis>.remove(<enderio:item_material:32>);

# Quartz Powder
JEI.hide(<enderio:item_material:33>);
<ore:dustNetherQuartz>.remove(<enderio:item_material:33>);

# Confusing Powder
JEI.hide(<enderio:item_material:61>);

# Soul Powder
JEI.hide(<enderio:item_material:74>);

# Glowstone Dust
JEI.hide(<enderio:item_material:76>);

# Grains of Prescience
macerator.recipeBuilder()
    .inputs([<ore:itemPrecientCrystal>])
    .outputs([<enderio:item_material:34>])
    .duration(20)
    .EUt(2)
    .buildAndRegister();
mixer.recipeBuilder()
    .inputs([
        <ore:itemVibrantPowder>,
        <ore:dustEnderPearl>
    ])
    .fluidInputs([<liquid:xpjuice> * 864])
    .outputs([<enderio:item_material:34>])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Grains of Vibrant
macerator.recipeBuilder()
    .inputs([<ore:itemVibrantCrystal>])
    .outputs([<enderio:item_material:35>])
    .duration(20)
    .EUt(2)
    .buildAndRegister();
mixer.recipeBuilder()
    .inputs([
        <ore:dustVibrantAlloy>,
        <ore:dustEmerald>
    ])
    .outputs([<enderio:item_material:35>])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
mixer.recipeBuilder()
    .inputs([<ore:dustEmerald>])
    .fluidInputs([<liquid:vibrant_alloy> * 144])
    .outputs([<enderio:item_material:35>])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Grains of Piezallity
macerator.recipeBuilder()
    .inputs([<ore:itemPulsatingCrystal>])
    .outputs([<enderio:item_material:36>])
    .duration(20)
    .EUt(2)
    .buildAndRegister();
mixer.recipeBuilder()
    .inputs([<ore:dustDiamond>])
    .fluidInputs([<liquid:pulsating_iron> * 144])
    .outputs([<enderio:item_material:36>])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
mixer.recipeBuilder()
    .inputs([
        <ore:dustPulsatingIron>,
        <ore:dustDiamond>
    ])
    .outputs([<enderio:item_material:36>])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Grains of the End
macerator.recipeBuilder()
    .inputs([<ore:itemEnderCrystal>])
    .outputs([<enderio:item_material:37>])
    .duration(20)
    .EUt(2)
    .buildAndRegister();
mixer.recipeBuilder()
    .inputs([
        <ore:itemVibrantPowder>,
        <metaitem:dustEndSteel>
    ])
    .fluidInputs([<liquid:xpjuice> * 864])
    .outputs([<enderio:item_material:37>])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Photovoltaic Composite
recipes.addShaped(<enderio:item_material:38>, [
    [<ore:dustLapis>, <ore:dustCoal>, null],
    [<ore:dustSilicon>, null, null],
    [null, null, null]
]);

# Zombie Eletrode
SliceNSplice.addRecipe(<enderio:item_material:40>, [
    <ore:plateEnergeticAlloy>, <minecraft:skull:2>, <ore:plateEnergeticAlloy>,
    <metaitem:wafer.silicon>, <enderio:item_basic_capacitor> | <enderio:item_capacitor_silver>, <metaitem:wafer.silicon>
]);

# Z-Logic Controller
SliceNSplice.addRecipe(<enderio:item_material:41>, [
    <ore:plateSoularium>, <minecraft:skull:2>, <ore:plateSoularium>,
    <metaitem:wafer.silicon>, <ore:dustRedstone>, <metaitem:wafer.silicon>
]);

# Frank'N'Zombie
SoulBinder.addRecipe(<enderio:item_material:42>, <enderio:item_material:41>, ["minecraft:zombie"], 100000, 4);

# Ender Resonator
SliceNSplice.addRecipe(<enderio:item_material:43>, [
    <ore:plateSoularium>, <enderio:block_enderman_skull>, <ore:plateSoularium>,
    <metaitem:wafer.silicon>, <ore:plateVibrantAlloy>, <metaitem:wafer.silicon>
]);

# Sentient Ender
SoulBinder.addRecipe(<enderio:item_material:44>, <enderio:item_material:43>, ["minecraft:witch"], 100000, 4);

# Skeletal Contractor
SliceNSplice.addRecipe(<enderio:item_material:45>, [
    <ore:plateSoularium>, <minecraft:skull>, <ore:plateSoularium>,
    <metaitem:wafer.silicon>, <enderio:item_basic_capacitor> | <enderio:item_capacitor_silver>, <metaitem:wafer.silicon>
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
    .duration(40)
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
    .duration(40)
    .EUt(480)
    .buildAndRegister();

# Enhanced Dye Blend
mixer.recipeBuilder()
    .inputs([
        <ore:itemPulsatingPowder> * 4,
        <ore:dustNetherQuartz> * 4,
        <ore:dyeBlack>
    ])
    .outputs([<enderio:item_material:67>])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

# Guardian Diode
SliceNSplice.addRecipe(<enderio:item_material:56>, [
    <ore:plateEnergeticAlloy>, <ore:gemPrismarine>, <ore:plateEnergeticAlloy>,
    <ore:itemPulsatingCrystal>, <metaitem:wafer.silicon>, <ore:itemPulsatingCrystal>
]);

# Wireless Energy Transmitter
recipes.addShaped(<enderio:item_material:65>, [
    [<minecraft:dye:15>, <ore:plateElectricalSteel>, null],
    [null, <minecraft:dye:15>, <ore:plateElectricalSteel>],
    [<minecraft:dye:15>, <ore:plateElectricalSteel>, null]
]);

# Ender Fragment
JEI.hide(<enderio:item_material:62>);

# Withering Dust
JEI.hide(<enderio:item_material:63>);

# Remote Awareness Upgrade
JEI.hide(<enderio:item_material:64>);

# Cake Base
JEI.hide(<enderio:item_material:70>);

# Netherotta
JEI.hide(<enderio:item_material:72>);

# Infinity Rod
JEI.hide(<enderio:item_material:71>);

# Infinity Reagent
JEI.hide(<enderio:item_material:75>);

# Black Paper
recipes.addShapeless(<enderio:item_material:77>, [
    <ore:paper>, <ore:dyeBlack>
]);

# Animal Token
JEI.hide(<enderio:item_material:78>);

# Monster Token
JEI.hide(<enderio:item_material:79>);

# Player Token
JEI.hide(<enderio:item_material:80>);

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

# Tormented Enderman Head
SliceNSplice.addRecipe(<enderio:block_enderman_skull:2>, [
    <ore:plateSoularium>, <enderio:block_enderman_skull>, <ore:plateSoularium>,
    <metaitem:wafer.silicon>, <enderio:item_basic_capacitor> | <enderio:item_capacitor_silver>, <metaitem:wafer.silicon>
]);

# Glowstone Nano-Particles
JEI.hide(<enderio:block_holy_fog>);
JEI.hide(<enderio:block_holier_fog>);

# Owl Egg
JEI.hide(<enderio:item_owl_egg>);

# Crude Steel
mixer.recipeBuilder()
    .inputs([
        <ore:dustSteel>,
        <minecraft:gravel>,
        <ore:dustClay>
    ])
    .outputs([<metaitem:dustCrudeSteel>])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

# Crystalline Alloy
mixer.recipeBuilder()
    .inputs([
        <ore:dustGold>,
        <ore:itemPrecientPowder>
    ])
    .outputs([<metaitem:dustCrystallineAlloy>])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

# Melodic Alloy
mixer.recipeBuilder()
    .inputs([
        <ore:dustEndSteel>,
        <minecraft:chorus_fruit_popped>
    ])
    .outputs([<metaitem:dustMelodicAlloy>])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

# Stellar Alloy
mixer.recipeBuilder()
    .inputs([
        <ore:dustNetherStar>,
        <ore:dustMelodicAlloy>,
        <ore:dustClay>
    ])
    .outputs([<metaitem:dustStellarAlloy>])
    .duration(40)
    .EUt(30720)
    .buildAndRegister();

# Crystalline Pink Slime
mixer.recipeBuilder()
    .inputs([
        <ore:dustMelodicAlloy>,
        <minecraft:slime_ball>
    ])
    .outputs([<metaitem:dustCrystallinePinkSlime>])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

# Energetic Silver
mixer.recipeBuilder()
    .inputs([
        <ore:dustRedstone>,
        <ore:dustSilver>,
        <ore:dustGlowstone>,
    ])
    .outputs([<metaitem:dustEnergeticSilver>])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

# Vivid Alloy
mixer.recipeBuilder()
    .inputs([
        <ore:dustEnergeticSilver>,
        <ore:dustEnderPearl>,
    ])
    .outputs([<metaitem:dustVividAlloy>])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

# Grainy Capacior
JEI.hide(<enderio:item_capacitor_grainy>);

# Silver Capacitor
assembler.recipeBuilder()
    .inputs([
        <ore:circuitAdvanced>,
        <metaitem:battery.hull.hv>
    ])
    .fluidInputs([<liquid:silver> * 1152])
    .outputs([<enderio:item_capacitor_silver>])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

# Endergetic Silver Capacitor
assembler.recipeBuilder()
    .inputs([
        <ore:circuitExtreme>,
        <enderio:item_capacitor_silver> * 2
    ])
    .fluidInputs([<liquid:energetic_silver> * 1152])
    .outputs([<enderio:item_capacitor_energetic_silver>])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

# Endergised Capacitor
assembler.recipeBuilder()
    .inputs([
        <ore:circuitElite>,
        <enderio:item_capacitor_energetic_silver> * 2
    ])
    .fluidInputs([<liquid:vivid_alloy> * 1152])
    .outputs([<enderio:item_capacitor_vivid>])
    .duration(40)
    .EUt(7680)
    .buildAndRegister();

# Crystalline Capacitor
assembler.recipeBuilder()
    .inputs([
        <ore:circuitExtreme>,
        <enderio:item_basic_capacitor:2> * 2
    ])
    .fluidInputs([<liquid:crystalline_alloy> * 1152])
    .outputs([<enderio:item_capacitor_crystalline>])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

# Melodic Capacitor
assembler.recipeBuilder()
    .inputs([
        <ore:circuitElite>,
        <enderio:item_capacitor_crystalline> * 2
    ])
    .fluidInputs([<liquid:melodic_alloy> * 1152])
    .outputs([<enderio:item_capacitor_melodic>])
    .duration(40)
    .EUt(7680)
    .buildAndRegister();

# Stellar Capacitor
assembler.recipeBuilder()
    .inputs([
        <ore:circuitMaster>,
        <minecraft:shulker_shell>,
        <enderio:item_capacitor_melodic> * 2
    ])
    .fluidInputs([<liquid:stellar_alloy> * 1152])
    .outputs([<enderio:item_capacitor_stellar>])
    .duration(40)
    .EUt(30720)
    .buildAndRegister();

# Totemic Capacitor
SliceNSplice.addRecipe(<enderio:item_capacitor_totemic>, [
    <ore:plateSoularium>, <minecraft:totem_of_undying>, <ore:plateSoularium>,
    <metaitem:wafer.silicon>, <enderio:item_capacitor_melodic>, <metaitem:wafer.silicon>
]);
