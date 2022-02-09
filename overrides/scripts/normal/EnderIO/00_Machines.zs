#packmode normal
# Imports
import mods.jei.JEI;



# Block Detector
JEI.removeAndHide(<enderio:block_detector_block>);

# Block Detector (Silent)
JEI.removeAndHide(<enderio:block_detector_block_silent>);

# Basic Capacitor Bank
recipes.addShaped(<enderio:block_cap_bank:1>, [
    [<ore:ingotIron>, <enderio:item_basic_capacitor>, <ore:ingotIron>],
    [<enderio:item_basic_capacitor>, <ore:blockRedstone>, <enderio:item_basic_capacitor>],
    [<ore:ingotIron>, <enderio:item_basic_capacitor>, <ore:ingotIron>]
]);

# Energy Gauge
recipes.addShaped(<enderio:block_gauge>, [
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [<ore:ingotElectricalSteel>, <enderio:item_conduit_probe>, <ore:ingotElectricalSteel>],
    [<ore:ingotIron>, null, <ore:ingotIron>]
]);

# Power Monitor
JEI.removeAndHide(<enderio:block_power_monitor>);

# Graphical Power Monitor
JEI.removeAndHide(<enderio:block_advanced_power_monitor>);

# Simple Powered Furnace
JEI.removeAndHide(<enderio:block_simple_furnace>);

# Simple Alloy Smelter
JEI.removeAndHide(<enderio:block_simple_alloy_smelter>);

# Alloy Smelter
JEI.removeAndHide(<enderio:block_alloy_smelter>);

# Enhaned Alloy Smelter
JEI.removeAndHide(<enderio:block_enhanced_alloy_smelter>);

# Buffers
JEI.removeAndHide(<enderio:block_buffer:*>);

# Enchanter
JEI.removeAndHide(<enderio:block_enchanter>);

# Farming Station
recipes.addShaped(<enderio:block_farm_station>, [
    [<ore:itemVibrantCrystal>, <ore:skullZombieController>, <ore:itemVibrantCrystal>],
    [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>],
    [<ore:gearEnergeticAlloySteel>, <ore:itemPulsatingCrystal>, <ore:gearEnergeticAlloySteel>]
]);
<enderio:block_farm_station>.addTooltip(format.red("We have Greenhouse, so that's better."));

# Combustion Generator
JEI.removeAndHide(<enderio:block_combustion_generator>);

# Enhaned Combustion Generator
JEI.removeAndHide(<enderio:block_enhanced_combustion_generator>);

# Simple Stirling Generator
JEI.removeAndHide(<enderio:block_simple_stirling_generator>);

# Stirling Generator
JEI.removeAndHide(<enderio:block_stirling_generator>);

# Zombie Generator
recipes.addShaped(<enderio:block_zombie_generator>, [
    [<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>],
    [<enderio:block_fused_quartz:*>, <ore:skullZombieElectrode>, <enderio:block_fused_quartz:*>],
    [<enderio:block_fused_quartz:*>, <enderio:block_fused_quartz:*>, <enderio:block_fused_quartz:*>]
]);

# Frank'n'Zombie Generator
recipes.addShaped(<enderio:block_franken_zombie_generator>, [
    [<ore:ingotSoularium>, <ore:ingotSoularium>, <ore:ingotSoularium>],
    [<enderio:block_fused_quartz:*>, <ore:skullZombieFrankenstein>, <enderio:block_fused_quartz:*>],
    [<enderio:block_fused_quartz:*>, <enderio:block_fused_quartz:*>, <enderio:block_fused_quartz:*>]
]);

# Ender Generator
recipes.addShaped(<enderio:block_ender_generator>, [
    [<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>],
    [<enderio:block_fused_quartz:*>, <ore:skullEnderResonator>, <enderio:block_fused_quartz:*>],
    [<enderio:block_fused_quartz:*>, <enderio:block_fused_quartz:*>, <enderio:block_fused_quartz:*>]
]);

# Killer Joe
recipes.addShaped(<enderio:block_killer_joe>, [
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
    [<enderio:block_fused_quartz:*>, <ore:skullZombieFrankenstein>, <enderio:block_fused_quartz:*>],
    [<enderio:block_fused_quartz:*>, <enderio:block_fused_quartz:*>, <enderio:block_fused_quartz:*>]
]);

# Lava Heat Exchanger
JEI.removeAndHide(<enderio:block_lava_generator>);

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
    [<ore:ingotEnergeticAlloy>, <ore:gearWood>, <ore:ingotEnergeticAlloy>],
    [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]
]);

# Aversion Obelisk
recipes.addShaped(<enderio:block_aversion_obelisk>, [
    [null, <enderio:block_enderman_skull:2>, null],
    [<ore:ingotEnergeticAlloy>, <ore:gearEnergeticAlloySteel>, <ore:ingotEnergeticAlloy>],
    [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]
]);

# Inhibitor Obelisk
recipes.addShaped(<enderio:block_inhibitor_obelisk>, [
    [null, <ore:itemEnderCrystal>, null],
    [<ore:ingotEnergeticAlloy>, <ore:gearElectricalSteel>, <ore:ingotEnergeticAlloy>],
    [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]
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
    [<ore:ingotEnergeticAlloy>, <enderio:item_basic_capacitor:2>, <ore:ingotEnergeticAlloy>],
    [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]
]);

# Experienec Obelisk
recipes.addShaped(<enderio:block_experience_obelisk>, [
    [null, <enderio:item_xp_transfer>, null],
    [<ore:ingotEnergeticAlloy>, <gregtech:machine:1575>, <ore:ingotEnergeticAlloy>],
    [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]
]);

# Painting Machine
JEI.removeAndHide(<enderio:block_painter>);

# Endervoir
JEI.removeAndHide(<enderio:block_reservoir>);

# Omnivoir
JEI.removeAndHide(<enderio:block_omni_reservoir>);

# Simple SAG Mill
JEI.removeAndHide(<enderio:block_simple_sag_mill>);

# SAG Mill
JEI.removeAndHide(<enderio:block_sag_mill>);

# Enhaned SAG Mill
JEI.removeAndHide(<enderio:block_enhanced_sag_mill>);

# Slice'N'Splice
recipes.addShaped(<enderio:block_slice_and_splice>, [
    [<ore:ingotSoularium>, <ore:itemSkull>, <ore:ingotSoularium>],
    [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>],
    [<ore:gearEnergeticAlloySteel>, <enderio:block_dark_iron_bars>, <ore:gearEnergeticAlloySteel>]
]);

# Photovoltaic Cells
JEI.removeAndHide(<enderio:block_solar_panel:*>);

# Soul Binder
recipes.addShaped(<enderio:block_soul_binder>, [
    [<ore:ingotSoularium>, <enderio:block_enderman_skull>, <ore:ingotSoularium>],
    [<minecraft:skull:4>, <ore:itemSoulMachineChassi>, <minecraft:skull:2>],
    [<ore:ingotSoularium>, <minecraft:skull>, <ore:ingotSoularium>]
]);

# Powered Spawner
recipes.addShaped(<enderio:block_powered_spawner>.withEmptyTag(), [
    [<ore:ingotElectricalSteel>, <ore:itemSkull>, <ore:ingotElectricalSteel>],
    [<ore:ingotElectricalSteel>, <ore:itemSoulMachineChassi>, <ore:ingotElectricalSteel>],
    [<ore:itemVibrantCrystal>, <enderio:item_material:41>, <ore:itemVibrantCrystal>]
]);

# The Vat
JEI.removeAndHide(<enderio:block_vat>);

# The Enhanced Vat
JEI.removeAndHide(<enderio:block_enhanced_vat>);

# Simple Wired Charger
JEI.removeAndHide(<enderio:block_simple_wired_charger>);

# Wired Charger
JEI.removeAndHide(<enderio:block_wired_charger>);

# Enhanced Wired Charger
JEI.removeAndHide(<enderio:block_enhanced_wired_charger>);

# Wireless Charger
recipes.addShaped(<enderio:block_wireless_charger>, [
    [<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>],
    [<ore:ingotElectricalSteel>, <ore:skullEnderResonator>, <ore:ingotElectricalSteel>],
    [<ore:ingotElectricalSteel>, <enderio:item_capacitor_silver>, <ore:ingotElectricalSteel>]
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
    [<ore:itemWirelessDish>, <ore:ingotEndSteel>, <ore:itemWirelessDish>],
    [null, <ore:itemWirelessDish>, null]
]);

# Fluid Tanks
JEI.removeAndHide(<enderio:block_tank:*>);

# Dimensional Transceiver
recipes.addShaped(<enderio:block_transceiver>, [
    [<ore:ingotElectricalSteel>, <ore:skullEnderResonator>, <ore:ingotElectricalSteel>],
    [<enderio:block_fused_quartz:*>, <ore:itemEnderCrystal>, <enderio:block_fused_quartz:*>],
    [<ore:ingotElectricalSteel>, <enderio:item_capacitor_vivid>, <ore:ingotElectricalSteel>]
]);

# Vacuum Chest
JEI.removeAndHide(<enderio:block_vacuum_chest>);

# XP Vacuum
recipes.addShaped(<enderio:block_xp_vacuum>, [
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, <enderio:item_xp_transfer>, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, <ore:itemPulsatingCrystal>, <ore:ingotConstructionAlloy>]
]);

# The Niard
JEI.removeAndHide(<enderio:block_niard>);

# Travel Anchor
recipes.addShaped(<enderio:block_travel_anchor>, [
    [<ore:ingotConstructionAlloy>, <ore:itemConduitBinder>, <ore:ingotConstructionAlloy>],
    [<ore:itemConduitBinder>, <ore:itemPulsatingCrystal>, <ore:itemConduitBinder>],
    [<ore:ingotConstructionAlloy>, <ore:itemConduitBinder>, <ore:ingotConstructionAlloy>]
]);

# Telepad Block
recipes.addShaped(<enderio:block_tele_pad>, [
    [<enderio:block_fused_quartz:*>, <ore:ingotVibrantAlloy>, <enderio:block_fused_quartz:*>],
    [<ore:ingotDarkSteel>, <enderio:block_travel_anchor>, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, <enderio:item_capacitor_silver>, <ore:ingotDarkSteel>]
]);

# Dialing Device
recipes.addShaped(<enderio:block_dialing_device>, [
    [null, <ore:ingotElectricalSteel>, null],
    [null, <ore:skullEnderResonator>, null],
    [<ore:ingotDarkSteel>, <enderio:item_capacitor_vivid>, <ore:ingotDarkSteel>]
]);

# Impulse Hopper
recipes.addShaped(<enderio:block_impulse_hopper>, [
    [<ore:ingotElectricalSteel>, <ore:blockHopper>, <ore:ingotElectricalSteel>],
    [<ore:gearEnergeticAlloySteel>, <ore:itemMachineChassi>, <ore:gearEnergeticAlloySteel>],
    [<ore:ingotElectricalSteel>, <ore:ingotRedstoneAlloy>, <ore:ingotElectricalSteel>]
]);

# Simple Crafter
JEI.removeAndHide(<enderio:block_simple_crafter>);

# Crafter
recipes.addShaped(<enderio:block_crafter>, [
    [<ore:dustSilicon>, <ore:dustSilicon>, <ore:dustSilicon>], 
    [<ore:ingotConstructionAlloy>, <ore:itemMachineChassi>, <ore:ingotConstructionAlloy>], 
    [<ore:gearElectricalSteel>, <ore:workbench>, <ore:gearElectricalSteel>]
]);
