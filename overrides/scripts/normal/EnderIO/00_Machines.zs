#packmode normal
# Imports
import mods.jei.JEI;
import mods.zenutils.I18n;



# Capacitor Banks
<enderio:block_cap_bank:*>.addTooltip(format.red(I18n.format("enderio.capacitor_bank.tooltip.1")));
JEI.addDescription(<enderio:block_cap_bank:*>, I18n.format("enderio.capacitor_bank.tooltip.1"));

# Basic Capacitor Bank
recipes.remove(<enderio:block_cap_bank:1>);
recipes.addShaped(<enderio:block_cap_bank:1>, [
    [<enderio:item_basic_capacitor>, <ore:circuitAdvanced>, <enderio:item_basic_capacitor>],
    [<ore:plateElectricalSteel>, <ore:itemSimpleMachineChassi>, <ore:plateElectricalSteel>],
    [<enderio:item_basic_capacitor>, <ore:batteryAdvanced>, <enderio:item_basic_capacitor>]
]);

# Capacitor Bank
recipes.remove(<enderio:block_cap_bank:2>);
recipes.addShaped(<enderio:block_cap_bank:2>, [
    [<enderio:item_basic_capacitor:1>, <ore:circuitExtreme>, <enderio:item_basic_capacitor:1>],
    [<ore:plateEnergeticAlloy>, <ore:itemMachineChassi>, <ore:plateEnergeticAlloy>],
    [<enderio:block_cap_bank:1>, <ore:batteryExtreme>, <enderio:block_cap_bank:1>]
]);

# Vibrant Capacitor Bank
recipes.remove(<enderio:block_cap_bank:3>);
recipes.addShaped(<enderio:block_cap_bank:3>, [
    [<enderio:item_basic_capacitor:2>, <ore:circuitElite>, <enderio:item_basic_capacitor:2>],
    [<ore:itemVibrantCrystal>, <ore:itemEnhancedMachineChassi>, <ore:itemVibrantCrystal>],
    [<enderio:block_cap_bank:2>, <ore:batteryElite>, <enderio:block_cap_bank:2>]
]);

# Block Detector
JEI.hide(<enderio:block_detector_block>);

# Block Detector (Silent)
JEI.hide(<enderio:block_detector_block_silent>);

# Energy Gauge
recipes.addShaped(<enderio:block_gauge>, [
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:plateElectricalSteel>, <enderio:item_conduit_probe>, <ore:plateElectricalSteel>],
    [<ore:plateIron>, null, <ore:plateIron>]
]);

# Power Monitor
JEI.hide(<enderio:block_power_monitor>);

# Graphical Power Monitor
JEI.hide(<enderio:block_advanced_power_monitor>);

# Simple Powered Furnace
JEI.hide(<enderio:block_simple_furnace>);

# Simple Alloy Smelter
JEI.hide(<enderio:block_simple_alloy_smelter>);

# Alloy Smelter
JEI.hide(<enderio:block_alloy_smelter>);

# Enhaned Alloy Smelter
JEI.hide(<enderio:block_enhanced_alloy_smelter>);

# Buffers
JEI.hide(<enderio:block_buffer:*>);

# Enchanter
recipes.addShaped(<enderio:block_enchanter>, [
    [<ore:gemDiamond>, <minecraft:book>, <ore:gemDiamond>],
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
    [null, <ore:plateDarkSteel>, null]
]);

# Farming Station
recipes.addShaped(<enderio:block_farm_station>, [
    [<ore:itemVibrantCrystal>, <ore:skullZombieController>, <ore:itemVibrantCrystal>],
    [<ore:plateSoularium>, <ore:itemMachineChassi>, <ore:plateSoularium>],
    [<ore:gearEnergeticAlloy>, <ore:itemPulsatingCrystal>, <ore:gearEnergeticAlloy>]
]);
<enderio:block_farm_station>.addTooltip(format.red("We have Greenhouse, so that's better."));

# Combustion Generator
// recipes.addShaped(<enderio:block_combustion_generator>, [
//     [<ore:plateEnergeticAlloy>, <ore:plateDarkSteel>, <ore:plateEnergeticAlloy>],
//     [<metaitem:electric.pump.ev>, <ore:itemMachineChassi>, <metaitem:fluid.regulator.ev>],
//     [<ore:gearEnergeticAlloy>, <metaitem:super_tank.ev>, <ore:gearEnergeticAlloy>]
// ]);

# Enhaned Combustion Generator
// recipes.addShaped(<enderio:block_enhanced_combustion_generator>, [
//     [<ore:plateVibrantAlloy>, <ore:plateEndSteel>, <ore:plateVibrantAlloy>],
//     [<metaitem:electric.pump.iv>, <ore:itemEnhancedMachineChassi>, <metaitem:fluid.regulator.iv>],
//     [<ore:gearVibrantAlloy>, <metaitem:super_tank.iv>, <ore:gearVibrantAlloy>]
// ]);
// recipes.addShaped(<enderio:block_enhanced_combustion_generator>, [
//     [<ore:plateDoubleVibrantAlloy>, <ore:plateEndSteel>, <ore:plateDoubleVibrantAlloy>],
//     [<metaitem:electric.pump.iv>, <ore:itemEnhancedMachineChassi>, <metaitem:fluid.regulator.iv>],
//     [<ore:gearVibrantAlloy>, <enderio:block_combustion_generator>, <ore:gearVibrantAlloy>]
// ]);

# Simple Stirling Generator
// recipes.addShaped(<enderio:block_simple_stirling_generator>, [
//     [<ore:plateStone>, <ore:craftingFurnace>, <ore:plateStone>],
//     [<ore:plateStone>, <ore:itemSimpleMachineChassi>, <ore:plateStone>],
//     [<ore:gearStone>, <ore:craftingPiston>, <ore:gearStone>]
// ]);

# Stirling Generator
// recipes.addShaped(<enderio:block_stirling_generator>, [
//     [<ore:plateEnergeticAlloy>, <ore:circuitAdvanced>, <ore:plateEnergeticAlloy>],
//     [<metaitem:electric.motor.hv>, <ore:itemMachineChassi>, <metaitem:electric.motor.hv>],
//     [<ore:gearEnergeticAlloy>, <ore:plateDarkSteel>, <ore:gearEnergeticAlloy>]
// ]);
// recipes.addShaped(<enderio:block_stirling_generator>, [
//     [<ore:plateDoubleEnergeticAlloy>, <ore:circuitAdvanced>, <ore:plateDoubleEnergeticAlloy>],
//     [<metaitem:electric.motor.hv>, <ore:itemMachineChassi>, <metaitem:electric.motor.hv>],
//     [<ore:gearEnergeticAlloy>, <enderio:block_simple_stirling_generator>, <ore:gearEnergeticAlloy>]
// ]);

# Zombie Generator
recipes.addShaped(<enderio:block_zombie_generator>, [
    [<ore:plateDarkSteel>, <ore:circuitAdvanced>, <ore:plateDarkSteel>],
    [<ore:fusedQuartz>, <ore:itemMachineChassi>, <ore:fusedQuartz>],
    [<metaitem:electric.motor.hv>, <ore:skullZombieElectrode>, <metaitem:electric.motor.hv>]
]);

# Frank'n'Zombie Generator
recipes.addShaped(<enderio:block_franken_zombie_generator>, [
    [<ore:plateSoularium>, <ore:circuitExtreme>, <ore:plateSoularium>],
    [<ore:fusedQuartz>, <ore:itemEnhancedMachineChassi>, <ore:fusedQuartz>],
    [<metaitem:electric.motor.ev>, <ore:skullZombieFrankenstein>, <metaitem:electric.motor.ev>]
]);

# Ender Generator
recipes.addShaped(<enderio:block_ender_generator>, [
    [<ore:plateEndSteel>, <ore:circuitElite>, <ore:plateEndSteel>],
    [<ore:fusedQuartz>, <ore:itemEndSteelMachineChassi>, <ore:fusedQuartz>],
    [<metaitem:electric.motor.iv>, <ore:skullSentientEnder>, <metaitem:electric.motor.iv>]
]);

# Killer Joe
recipes.addShaped(<enderio:block_killer_joe>, [
    [<ore:plateSoularium>, <ore:circuitExtreme>, <ore:plateSoularium>],
    [<ore:fusedQuartz>, <ore:itemEnhancedMachineChassi>, <ore:fusedQuartz>],
    [<metaitem:electric.motor.ev>, <ore:skullZombieController>, <metaitem:electric.motor.ev>]
]);

# Lava Heat Exchanger
JEI.hide(<enderio:block_lava_generator>);

# Electric Light
recipes.addShaped(<enderio:block_electric_light>, [
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>], 
    [<ore:plateSilicon>, <ore:dustGlowstone>, <ore:plateSilicon>], 
    [<ore:plateSilicon>, <enderio:item_basic_capacitor>, <ore:plateSilicon>]
]);
recipes.addShapeless(<enderio:block_electric_light>, [
    <enderio:block_electric_light:1>, <ore:craftingRedstoneTorch>
]);

# Electric Light (Inverted)
recipes.addShapeless(<enderio:block_electric_light:1>, [
    <enderio:block_electric_light>, <ore:craftingRedstoneTorch>
]);

# Light
recipes.addShaped(<enderio:block_electric_light:2>, [
    [null, null, null],
    [<enderio:block_fused_glass:*>, <enderio:block_fused_glass:*>, <enderio:block_fused_glass:*>],
    [<ore:plateSilicon>, <ore:blockGlowstone>, <ore:plateSilicon>]
]);
recipes.addShapeless(<enderio:block_electric_light:2>, [
    <enderio:block_electric_light:3>,<ore:craftingRedstoneTorch>
]);

# Light (Inverted)
recipes.addShapeless(<enderio:block_electric_light:3>, [
    <enderio:block_electric_light:2>, <ore:craftingRedstoneTorch>
]);

# Wireless Light
recipes.addShapeless(<enderio:block_electric_light:4>, [
    <enderio:block_electric_light>, <enderio:item_material:43>
]);
recipes.addShapeless(<enderio:block_electric_light:4>, [
    <enderio:block_electric_light:5>, <ore:craftingRedstoneTorch>
]);

# Wireless Light (Inverted)
recipes.addShapeless(<enderio:block_electric_light:5>, [
    <enderio:block_electric_light:4>, <ore:craftingRedstoneTorch>
]);

# Attractor Obelisk
recipes.addShaped(<enderio:block_attractor_obelisk>, [
    [null, <ore:itemAttractorCrystal>, null],
    [<ore:plateEnergeticAlloy>, <ore:gearWood>, <ore:plateEnergeticAlloy>],
    [<ore:plateSoularium>, <ore:itemSoulMachineChassi>, <ore:plateSoularium>]
]);

# Aversion Obelisk
recipes.addShaped(<enderio:block_aversion_obelisk>, [
    [null, <enderio:block_enderman_skull:2>, null],
    [<ore:plateEnergeticAlloy>, <ore:gearEnergeticAlloy>, <ore:plateEnergeticAlloy>],
    [<ore:plateSoularium>, <ore:itemSoulMachineChassi>, <ore:plateSoularium>]
]);

# Inhibitor Obelisk
recipes.addShaped(<enderio:block_inhibitor_obelisk>, [
    [null, <ore:itemEnderCrystal>, null],
    [<ore:plateEnergeticAlloy>, <ore:gearElectricalSteel>, <ore:plateEnergeticAlloy>],
    [<ore:plateSoularium>, <ore:itemSoulMachineChassi>, <ore:plateSoularium>]
]);

# Relocator Obelisk
recipes.addShaped(<enderio:block_relocator_obelisk>, [
    [null, <ore:blockPrismarine>, null],
    [<ore:blockPrismarine>, <enderio:block_aversion_obelisk>, <ore:blockPrismarine>],
    [null, <ore:gearVibrantAlloy>, null]
]);

# Weather Obelisk
recipes.addShaped(<enderio:block_weather_obelisk>, [
    [null, <ore:itemWeatherCrystal>, null],
    [<ore:plateEnergeticAlloy>, <enderio:item_basic_capacitor:2>, <ore:plateEnergeticAlloy>],
    [<ore:plateSoularium>, <ore:itemSoulMachineChassi>, <ore:plateSoularium>]
]);

# Experienec Obelisk
recipes.addShaped(<enderio:block_experience_obelisk>, [
    [null, <enderio:item_xp_transfer>, null],
    [<ore:plateEnergeticAlloy>, <gregtech:machine:1575>, <ore:plateEnergeticAlloy>],
    [<ore:plateSoularium>, <ore:itemSoulMachineChassi>, <ore:plateSoularium>]
]);

# Painting Machine
JEI.hide(<enderio:block_painter>);

# Endervoir
JEI.hide(<enderio:block_reservoir>);

# Omnivoir
JEI.hide(<enderio:block_omni_reservoir>);

# Simple SAG Mill
JEI.hide(<enderio:block_simple_sag_mill>);

# SAG Mill
JEI.hide(<enderio:block_sag_mill>);

# Enhaned SAG Mill
JEI.hide(<enderio:block_enhanced_sag_mill>);

# Slice'N'Splice
recipes.addShaped(<enderio:block_slice_and_splice>, [
    [<ore:plateSoularium>, <ore:itemSkull>, <ore:plateSoularium>],
    [<ore:circuitAdvanced>, <ore:itemSoulMachineChassi>, <ore:circuitAdvanced>],
    [<metaitem:electric.motor.hv>, <enderio:block_dark_iron_bars>, <metaitem:electric.motor.hv>]
]);

# Photovoltaic Cells
JEI.hide(<enderio:block_solar_panel:*>);

# Soul Binder
recipes.addShaped(<enderio:block_soul_binder>, [
    [<ore:plateSoularium>, <ore:skullEnderResonator>, <ore:plateSoularium>],
    [<ore:circuitAdvanced>, <ore:itemSoulMachineChassi>, <ore:circuitAdvanced>],
    [<metaitem:electric.motor.hv>, <ore:skullZombieController>, <metaitem:electric.motor.hv>]
]);

# Powered Spawner
recipes.addShaped(<enderio:block_powered_spawner>.withEmptyTag(), [
    [<ore:plateConstructionAlloy>, <ore:skullSentientEnder>, <ore:plateConstructionAlloy>],
    [<ore:plateSoularium>, <ore:itemSoulMachineChassi>, <ore:plateSoularium>],
    [<ore:itemEnderCrystal>, <ore:skullZombieFrankenstein>, <ore:itemEnderCrystal>]
]);

# The Vat
JEI.hide(<enderio:block_vat>);

# The Enhanced Vat
JEI.hide(<enderio:block_enhanced_vat>);

# Simple Wired Charger
// recipes.addShaped(<enderio:block_simple_wired_charger>, [
//     [<ore:plateStone>, <ore:plateSteel>, <ore:plateStone>],
//     [<ore:plateStone>, <enderio:item_material>, <ore:plateStone>],
//     [<ore:gearStone>, <ore:plateSteel>, <ore:gearStone>]
// ]);

# Wired Charger
// recipes.addShaped(<enderio:block_wired_charger>, [
//     [<ore:plateEnergeticAlloy>, <ore:plateDarkSteel>, <ore:plateEnergeticAlloy>],
//     [<metaitem:emitter.hv>, <ore:itemMachineChassi>, <metaitem:sensor.hv>],
//     [<ore:gearEnergeticAlloy>, <ore:plateDarkSteel>, <ore:gearEnergeticAlloy>]
// ]);
// recipes.addShaped(<enderio:block_wired_charger>, [
//     [<ore:plateDoubleEnergeticAlloy>, <ore:plateDarkSteel>, <ore:plateDoubleEnergeticAlloy>],
//     [<metaitem:emitter.hv>, <ore:itemMachineChassi>, <metaitem:sensor.hv>],
//     [<ore:gearEnergeticAlloy>, <enderio:block_simple_wired_charger>, <ore:gearEnergeticAlloy>]
// ]);

# Enhanced Wired Charger
// recipes.addShaped(<enderio:block_enhanced_wired_charger>, [
//     [<ore:plateVibrantAlloy>, <ore:plateEndSteel>, <ore:plateVibrantAlloy>],
//     [<metaitem:emitter.ev>, <ore:itemEnhancedMachineChassi>, <metaitem:sensor.ev>],
//     [<ore:gearVibrantAlloy>, <ore:plateEndSteel>, <ore:gearVibrantAlloy>]
// ]);
// recipes.addShaped(<enderio:block_enhanced_wired_charger>, [
//     [<ore:plateDoubleVibrantAlloy>, <ore:plateEndSteel>, <ore:plateDoubleVibrantAlloy>],
//     [<metaitem:emitter.ev>, <ore:itemEnhancedMachineChassi>, <metaitem:sensor.ev>],
//     [<ore:gearVibrantAlloy>, <enderio:block_wired_charger>, <ore:gearVibrantAlloy>]
// ]);

# Wireless Charger
recipes.addShaped(<enderio:block_wireless_charger>, [
    [<ore:plateElectricalSteel>, <ore:plateElectricalSteel>, <ore:plateElectricalSteel>],
    [<ore:plateElectricalSteel>, <ore:skullEnderResonator>, <ore:plateElectricalSteel>],
    [<ore:plateElectricalSteel>, <enderio:item_capacitor_silver>, <ore:plateElectricalSteel>]
]);

# Wireless Charging Antenna
recipes.addShaped(<enderio:block_normal_wireless_charger>, [
    [<ore:itemWirelessDish>, <enderio:block_wireless_charger>, <ore:itemWirelessDish>],
    [<ore:itemWirelessDish>, <ore:itemMachineChassi>, <ore:itemWirelessDish>],
    [null, <enderio:item_capacitor_silver>, null]
]);

# Enhanced Wireless Charging Antenna
recipes.addShaped(<enderio:block_enhanced_wireless_charger>, [
    [<ore:itemWirelessDish>, <enderio:block_wireless_charger>, <ore:itemWirelessDish>],
    [<ore:itemWirelessDish>, <ore:itemMachineChassi>, <ore:itemWirelessDish>],
    [null, <enderio:item_capacitor_vivid>, null]
]);

# Wireless Charging Antenna Extension
recipes.addShaped(<enderio:block_wireless_charger_extension>, [
    [null, <ore:itemWirelessDish>, null],
    [<ore:itemWirelessDish>, <ore:plateEndSteel>, <ore:itemWirelessDish>],
    [null, <ore:itemWirelessDish>, null]
]);

# Fluid Tanks
JEI.hide(<enderio:block_tank:*>);

# Dimensional Transceiver
recipes.addShaped(<enderio:block_transceiver>, [
    [<metaitem:sensor.iv>, <ore:skullEnderResonator>, <metaitem:sensor.iv>],
    [<enderio:block_fused_quartz:*>, <enderio:block_travel_anchor>, <enderio:block_fused_quartz:*>],
    [<ore:itemEnderCrystal>, <enderio:item_capacitor_vivid>, <ore:itemEnderCrystal>]
]);

# Vacuum Chest
JEI.hide(<enderio:block_vacuum_chest>);

# XP Vacuum
recipes.addShaped(<enderio:block_xp_vacuum>, [
    [<ore:plateConstructionAlloy>, <ore:plateConstructionAlloy>, <ore:plateConstructionAlloy>],
    [<ore:plateConstructionAlloy>, <enderio:item_xp_transfer>, <ore:plateConstructionAlloy>],
    [<ore:plateConstructionAlloy>, <ore:itemPulsatingCrystal>, <ore:plateConstructionAlloy>]
]);

# The Niard
JEI.hide(<enderio:block_niard>);

# Travel Anchor
recipes.addShaped(<enderio:block_travel_anchor>, [
    [<ore:plateElectricalSteel>, <ore:blockElevator>, <ore:plateElectricalSteel>],
    [<ore:itemPulsatingCrystal>, <ore:itemEnhancedMachineChassi>, <ore:itemPulsatingCrystal>],
    [<ore:plateElectricalSteel>, <metaitem:field.generator.hv>, <ore:plateElectricalSteel>]
]);

# Telepad Block
recipes.addShaped(<enderio:block_tele_pad>, [
    [<enderio:block_fused_quartz:*>, <ore:plateVibrantAlloy>, <enderio:block_fused_quartz:*>],
    [<ore:plateDarkSteel>, <enderio:block_travel_anchor>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <enderio:item_capacitor_silver>, <ore:plateDarkSteel>]
]);

# Dialing Device
recipes.addShaped(<enderio:block_dialing_device>, [
    [null, <ore:plateElectricalSteel>, null],
    [null, <ore:skullEnderResonator>, null],
    [<ore:plateDarkSteel>, <enderio:item_capacitor_vivid>, <ore:plateDarkSteel>]
]);

# Impulse Hopper
recipes.addShaped(<enderio:block_impulse_hopper>, [
    [<ore:plateElectricalSteel>, <ore:blockHopper>, <ore:plateElectricalSteel>],
    [<ore:gearEnergeticAlloy>, <ore:itemMachineChassi>, <ore:gearEnergeticAlloy>],
    [<ore:plateElectricalSteel>, <ore:plateRedstoneAlloy>, <ore:plateElectricalSteel>]
]);

# Simple Crafter
JEI.hide(<enderio:block_simple_crafter>);

# Crafter
recipes.addShaped(<enderio:block_crafter>, [
    [<ore:plateSilicon>, <ore:plateSilicon>, <ore:plateSilicon>], 
    [<ore:plateConstructionAlloy>, <ore:itemEnhancedMachineChassi>, <ore:plateConstructionAlloy>], 
    [<ore:gearVibrantAlloy>, <metaitem:workbench>, <ore:gearVibrantAlloy>]
]);
