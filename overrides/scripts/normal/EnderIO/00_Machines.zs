# Imports
import mods.jei.JEI;
import mods.zenutils.I18n;



# Basic Capacitor Bank
recipes.remove(<enderio:block_cap_bank:1>);
recipes.addShaped(<enderio:block_cap_bank:1>, [
    [<enderio:item_basic_capacitor>, <ore:circuitHv>, <enderio:item_basic_capacitor>],
    [<ore:plateElectricalSteel>, <ore:itemSimpleMachineChassi>, <ore:plateElectricalSteel>],
    [<enderio:item_basic_capacitor>, <ore:batteryHv>, <enderio:item_basic_capacitor>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <enderio:item_basic_capacitor> * 2,
        <ore:plateElectricalSteel>,
        <ore:circuitHv>,
        <ore:itemSimpleMachineChassi>
    ])
    .outputs([<enderio:block_cap_bank:1>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Capacitor Bank
recipes.remove(<enderio:block_cap_bank:2>);
recipes.addShaped(<enderio:block_cap_bank:2>, [
    [<enderio:item_basic_capacitor:1>, <ore:circuitEv>, <enderio:item_basic_capacitor:1>],
    [<ore:plateEnergeticAlloy>, <ore:itemMachineChassi>, <ore:plateEnergeticAlloy>],
    [<enderio:block_cap_bank:1>, <ore:batteryEv>, <enderio:block_cap_bank:1>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <enderio:block_cap_bank:1> * 2,
        <ore:plateEnergeticAlloy>,
        <enderio:item_basic_capacitor:1>,
        <ore:circuitEv>,
        <ore:batteryEv>,
        <ore:itemMachineChassi>
    ])
    .outputs([<enderio:block_cap_bank:2>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Vibrant Capacitor Bank
recipes.remove(<enderio:block_cap_bank:3>);
recipes.addShaped(<enderio:block_cap_bank:3>, [
    [<enderio:item_basic_capacitor:2>, <ore:circuitIv>, <enderio:item_basic_capacitor:2>],
    [<ore:itemVibrantCrystal>, <ore:itemEnhancedMachineChassi>, <ore:itemVibrantCrystal>],
    [<enderio:block_cap_bank:2>, <ore:batteryIv>, <enderio:block_cap_bank:2>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <enderio:block_cap_bank:2> * 2,
        <ore:itemVibrantCrystal>,
        <enderio:item_basic_capacitor:2>,
        <ore:circuitIv>,
        <ore:batteryIv>,
        <ore:itemEnhancedMachineChassi>
    ])
    .outputs([<enderio:block_cap_bank:3>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Block Detector
JEI.hide(<enderio:block_detector_block>);

# Block Detector (Silent)
JEI.hide(<enderio:block_detector_block_silent>);

# Energy Gauge
recipes.addShaped(<enderio:block_gauge>, [
    [<metaitem:plateIron>, null, <metaitem:plateIron>],
    [<ore:plateElectricalSteel>, <enderio:item_conduit_probe>, <ore:plateElectricalSteel>],
    [<metaitem:plateIron>, null, <metaitem:plateIron>]
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
JEI.hide(<enderio:block_farm_station>);

# Combustion Generator
JEI.hide(<enderio:block_combustion_generator>);

# Enhaned Combustion Generator
JEI.hide(<enderio:block_enhanced_combustion_generator>);

# Simple Stirling Generator
JEI.hide(<enderio:block_simple_stirling_generator>);

# Stirling Generator
JEI.hide(<enderio:block_stirling_generator>);

# Zombie Generator
recipes.addShaped(<enderio:block_zombie_generator>, [
    [<ore:plateDarkSteel>, <ore:circuitHv>, <ore:plateDarkSteel>],
    [<ore:fusedQuartz>, <ore:itemMachineChassi>, <ore:fusedQuartz>],
    [<metaitem:electric.motor.hv>, <ore:skullZombieElectrode>, <metaitem:electric.motor.hv>]
]);

# Frank'n'Zombie Generator
recipes.addShaped(<enderio:block_franken_zombie_generator>, [
    [<ore:plateSoularium>, <ore:circuitEv>, <ore:plateSoularium>],
    [<ore:fusedQuartz>, <ore:itemEnhancedMachineChassi>, <ore:fusedQuartz>],
    [<metaitem:electric.motor.ev>, <ore:skullZombieFrankenstein>, <metaitem:electric.motor.ev>]
]);

# Ender Generator
recipes.addShaped(<enderio:block_ender_generator>, [
    [<ore:plateEndSteel>, <ore:circuitIv>, <ore:plateEndSteel>],
    [<ore:fusedQuartz>, <ore:itemEndSteelMachineChassi>, <ore:fusedQuartz>],
    [<metaitem:electric.motor.iv>, <ore:skullSentientEnder>, <metaitem:electric.motor.iv>]
]);

# Killer Joe
recipes.addShaped(<enderio:block_killer_joe>, [
    [<ore:plateSoularium>, <ore:circuitEv>, <ore:plateSoularium>],
    [<ore:fusedQuartz>, <ore:itemEnhancedMachineChassi>, <ore:fusedQuartz>],
    [<metaitem:electric.motor.ev>, <ore:skullZombieController>, <metaitem:electric.motor.ev>]
]);

# Lava Heat Exchanger
JEI.hide(<enderio:block_lava_generator>);

# Electric Light
recipes.addShaped(<enderio:block_electric_light>, [
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>], 
    [<metaitem:plateSilicon>, <minecraft:glowstone_dust>, <metaitem:plateSilicon>], 
    [<metaitem:plateSilicon>, <enderio:item_basic_capacitor>, <metaitem:plateSilicon>]
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
    [<metaitem:plateSilicon>, <ore:blockGlowstone>, <metaitem:plateSilicon>]
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
    [<ore:plateEnergeticAlloy>, <metaitem:gearWood>, <ore:plateEnergeticAlloy>],
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
    [<ore:plateEnergeticAlloy>, <metaitem:super_tank.lv>, <ore:plateEnergeticAlloy>],
    [<ore:plateSoularium>, <ore:itemSoulMachineChassi>, <ore:plateSoularium>]
]);

# Painting Machine
recipes.addShaped(<enderio:block_painter>, [
    [<metaitem:sensor.hv>, <ore:circuitHv>, <metaitem:sensor.hv>],
    [<ore:gearElectricalSteel>, <ore:itemMachineChassi>, <ore:gearElectricalSteel>],
    [<ore:plateElectricalSteel>, <ore:plateElectricalSteel>, <ore:plateElectricalSteel>]
]);

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
    [<ore:circuitHv>, <ore:itemSoulMachineChassi>, <ore:circuitHv>],
    [<metaitem:electric.motor.hv>, <enderio:block_dark_iron_bars>, <metaitem:electric.motor.hv>]
]);

# Photovoltaic Cells
JEI.hide(<enderio:block_solar_panel:*>);

# Soul Binder
recipes.addShaped(<enderio:block_soul_binder>, [
    [<ore:plateSoularium>, <ore:skullEnderResonator>, <ore:plateSoularium>],
    [<ore:circuitHv>, <ore:itemSoulMachineChassi>, <ore:circuitHv>],
    [<metaitem:electric.motor.hv>, <ore:skullZombieController>, <metaitem:electric.motor.hv>]
]);

# Powered Spawner
recipes.addShaped(<enderio:block_powered_spawner>.withEmptyTag(), [
    [<ore:plateConstructionAlloy>, <ore:skullSentientEnder>, <ore:plateConstructionAlloy>],
    [<ore:plateSoularium>, <ore:itemSoulMachineChassi>, <ore:plateSoularium>],
    [<ore:itemEnderCrystal>, <ore:skullZombieFrankenstein>, <ore:itemEnderCrystal>]
]);
JEI.hide(<enderio:block_creative_spawner>);

# The Vat
JEI.hide(<enderio:block_vat>);

# The Enhanced Vat
JEI.hide(<enderio:block_enhanced_vat>);

# Simple Wired Charger
recipes.addShaped(<enderio:block_simple_wired_charger>, [
    [<metaitem:plateStone>, <metaitem:plateSteel>, <metaitem:plateStone>],
    [<metaitem:plateStone>, <enderio:item_material>, <metaitem:plateStone>],
    [<metaitem:gearStone>, <metaitem:plateSteel>, <metaitem:gearStone>]
]);

# Wired Charger
recipes.addShaped(<enderio:block_wired_charger>, [
    [<ore:plateEnergeticAlloy>, <ore:plateDarkSteel>, <ore:plateEnergeticAlloy>],
    [<metaitem:emitter.hv>, <ore:itemMachineChassi>, <metaitem:sensor.hv>],
    [<ore:gearEnergeticAlloy>, <ore:plateDarkSteel>, <ore:gearEnergeticAlloy>]
]);
recipes.addShaped(<enderio:block_wired_charger>, [
    [<metaitem:plateDoubleEnergeticAlloy>, <ore:plateDarkSteel>, <metaitem:plateDoubleEnergeticAlloy>],
    [<metaitem:emitter.hv>, <ore:itemMachineChassi>, <metaitem:sensor.hv>],
    [<ore:gearEnergeticAlloy>, <enderio:block_simple_wired_charger>, <ore:gearEnergeticAlloy>]
]);

# Enhanced Wired Charger
recipes.addShaped(<enderio:block_enhanced_wired_charger>, [
    [<ore:plateVibrantAlloy>, <ore:plateEndSteel>, <ore:plateVibrantAlloy>],
    [<metaitem:emitter.ev>, <ore:itemEnhancedMachineChassi>, <metaitem:sensor.ev>],
    [<ore:gearVibrantAlloy>, <ore:plateEndSteel>, <ore:gearVibrantAlloy>]
]);
recipes.addShaped(<enderio:block_enhanced_wired_charger>, [
    [<ore:plateDoubleVibrantAlloy>, <ore:plateEndSteel>, <ore:plateDoubleVibrantAlloy>],
    [<metaitem:emitter.ev>, <ore:itemEnhancedMachineChassi>, <metaitem:sensor.ev>],
    [<ore:gearVibrantAlloy>, <enderio:block_wired_charger>, <ore:gearVibrantAlloy>]
]);

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
    [<metaitem:plateSilicon>, <metaitem:plateSilicon>, <metaitem:plateSilicon>], 
    [<ore:plateConstructionAlloy>, <ore:itemEnhancedMachineChassi>, <ore:plateConstructionAlloy>], 
    [<ore:gearVibrantAlloy>, <metaitem:workbench>, <ore:gearVibrantAlloy>]
]);
