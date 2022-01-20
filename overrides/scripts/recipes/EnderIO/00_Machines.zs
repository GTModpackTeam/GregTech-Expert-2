# Block Detector

# Block Detector (Silent)

# Basic Capacitor Bank
recipes.addShaped(<enderio:block_cap_bank:1>, [
    [<ore:ingotIron>, <enderio:item_basic_capacitor>, <ore:ingotIron>],
    [<enderio:item_basic_capacitor>, <ore:blockRedstone>, <enderio:item_basic_capacitor>],
    [<ore:ingotIron>, <enderio:item_basic_capacitor>, <ore:ingotIron>]
]);
recipes.addShaped(<enderio:block_cap_bank:1>, [
    [<ore:ingotConstructionAlloy>, <enderio:item_capacitor_silver>, <ore:ingotConstructionAlloy>],
    [<enderio:item_capacitor_silver>, <ore:blockRedstone>, <enderio:item_capacitor_silver>],
    [<ore:ingotConstructionAlloy>, <enderio:item_capacitor_silver>, <ore:ingotConstructionAlloy>]
]);

# Energy Gauge
recipes.addShaped(<enderio:block_gauge>, [
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [<ore:ingotElectricalSteel>, <enderio:item_conduit_probe>, <ore:ingotElectricalSteel>],
    [<ore:ingotIron>, null, <ore:ingotIron>]
]);
recipes.addShaped(<enderio:block_gauge>, [
    [<ore:ingotConstructionAlloy>, null, <ore:ingotConstructionAlloy>],
    [<ore:ingotElectricalSteel>, <enderio:item_conduit_probe>, <ore:ingotElectricalSteel>],
    [<ore:ingotConstructionAlloy>, null, <ore:ingotConstructionAlloy>]
]);

# Simple Powered Furnace
recipes.addShaped(<enderio:block_simple_furnace>, [
    [<ore:ingotIron>, <minecraft:furnace>, <ore:ingotIron>],
    [<ore:stoneBricks>, <ore:itemSimpleMachineChassi>, <ore:stoneBricks>],
    [<ore:gearWood>, <minecraft:bucket>, <ore:gearWood>]
]);
recipes.addShaped(<enderio:block_simple_furnace>, [
    [<ore:ingotConstructionAlloy>, <minecraft:furnace>, <ore:ingotConstructionAlloy>],
    [<ore:stoneBricks>, <ore:itemSimpleMachineChassi>, <ore:stoneBricks>],
    [<ore:gearWood>, <minecraft:bucket>, <ore:gearWood>]
]);

# Simple Alloy Smelter

# Alloy Smelter

# Enhaned Alloy Smelter


# Enchanter
// recipes.addShaped(<enderio:block_enchanter>, [
//     [<ore:gemDiamond>, <minecraft:book>, <ore:gemDiamond>],
//     [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
//     [null, <ore:ingotDarkSteel>, null]
// ]);

# Farming Station
recipes.addShaped(<enderio:block_farm_station>, [
    [<ore:itemVibrantCrystal>, <ore:skullZombieController>, <ore:itemVibrantCrystal>],
    [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>],
    [<ore:gearEnergized>, <ore:itemPulsatingCrystal>, <ore:gearEnergized>]
]);

# Combuston Generator

# Enhaned Combuston Generator

# Simple Stirling Generator
recipes.addShaped(<enderio:block_simple_stirling_generator>, [
    [<ore:stoneBricks>, <ore:craftingFurnace>, <ore:stoneBricks>],
    [<ore:stoneBricks>, <ore:itemSimpleMachineChassi>, <ore:stoneBricks>],
    [<ore:gearStone>, <ore:craftingPiston>, <ore:gearStone>]
]);

# Stirling Generator
recipes.addShaped(<enderio:block_stirling_generator>, [
    [<ore:stoneBricks>, <minecraft:furnace>, <ore:stoneBricks>],
    [<ore:ingotDarkSteel>, <enderio:item_material:1>, <ore:ingotDarkSteel>],
    [<enderio:item_material:73>, <minecraft:piston>, <enderio:item_material:73>]
]);
recipes.addShaped(<enderio:block_stirling_generator>, [
    [null, null, null],
    [<ore:ingotDarkSteel>, <enderio:block_simple_stirling_generator>, <ore:ingotDarkSteel>],
    [<enderio:item_material:73>, <ore:itemMachineChassi>, <enderio:item_material:73>]
]);

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

# Electric Light
recipes.addShaped(<enderio:block_electric_light>, [
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>], 
    [<ore:plateSilicon>, <ore:dustGlowstone>, <ore:plateSilicon>], 
    [<ore:plateSilicon>, <enderio:item_basic_capacitor>, <ore:plateSilicon>]
]);
recipes.addShapeless(<enderio:block_electric_light>, [
    <enderio:block_electric_light:1>,<ore:craftingRedstoneTorch>
]);

# Electric Light (Inverted)
recipes.addShapeless(<enderio:block_electric_light:1>, [
    <enderio:block_electric_light>,<ore:craftingRedstoneTorch>
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
    <enderio:block_electric_light:2>,<ore:craftingRedstoneTorch>
]);

# Wireless Light
recipes.addShapeless(<enderio:block_electric_light:4>, [
    <enderio:block_electric_light>,<enderio:item_material:43>
]);
recipes.addShapeless(<enderio:block_electric_light:4>, [
    <enderio:block_electric_light:5>,<ore:craftingRedstoneTorch>
]);

# Wireless Light (Inverted)
recipes.addShapeless(<enderio:block_electric_light:5>, [
    <enderio:block_electric_light:4>,<ore:craftingRedstoneTorch>
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
    [<ore:ingotEnergeticAlloy>, <ore:gearEnergized>, <ore:ingotEnergeticAlloy>],
    [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]
]);

# Inhibitor Obelisk
recipes.addShaped(<enderio:block_inhibitor_obelisk>, [
    [null, <ore:itemEnderCrystal>, null],
    [<ore:ingotEnergeticAlloy>, <ore:gearIronInfinity>, <ore:ingotEnergeticAlloy>],
    [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]
]);

# Relocator Obelisk
recipes.addShaped(<enderio:block_relocator_obelisk>, [
    [null, <ore:blockPrismarine>, null],
    [<ore:blockPrismarine>, <enderio:block_aversion_obelisk>, <ore:blockPrismarine>],
    [null, <ore:gearVibrant>, null]
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

# Endervoir

# Omnivoir

# Simple SAG Mill

# SAG Mill
// recipes.addShaped(<enderio:block_sag_mill>, [
//     [<ore:ingotElectricalSteel>, <gregtech:meta_item_1:266>, <ore:ingotElectricalSteel>],
//     [<minecraft:flint>, <enderio:item_material:1>, <minecraft:flint>],
//     [<gregtech:meta_item_1:129>, <enderio:item_basic_capacitor:2>, <gregtech:meta_item_1:129>]
// ]);

# Enhaned SAG Mill
// recipes.addShaped(<enderio:block_enhanced_sag_mill>, [
//     [<ore:gemFlint>, <ore:gemFlint>, <ore:gemFlint>],
//     [<ore:ingotEndSteel>, <ore:itemMachineChassi>, <ore:ingotEndSteel>],
//     [<ore:gearVibrant>, <ore:craftingPiston>, <ore:gearVibrant>]
// ]);
// recipes.addShaped(<enderio:block_enhanced_sag_mill>, [
//     [null, null, null],
//     [<ore:ingotEndSteel>, <enderio:block_sag_mill>, <ore:ingotEndSteel>], [<ore:gearVibrant>, <ore:itemMachineChassi>, <ore:gearVibrant>]
// ]);

# Slice'N'Splice
recipes.addShaped(<enderio:block_slice_and_splice>, [
    [<ore:ingotSoularium>, <ore:itemSkull>, <ore:ingotSoularium>],
    [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>], [<ore:gearEnergized>, <enderio:block_dark_iron_bars>, <ore:gearEnergized>]
]);

# Photovoltaic Cells

# Soul Binder
recipes.addShaped(<enderio:block_soul_binder>, [
    [<ore:ingotSoularium>, <enderio:block_enderman_skull>, <ore:ingotSoularium>],
    [<minecraft:skull:4>, <ore:itemSoulMachineChassi>, <minecraft:skull:2>],
    [<ore:ingotSoularium>, <minecraft:skull>, <ore:ingotSoularium>]
]);

# Powered Spawner
recipes.addShaped(<enderio:block_powered_spawner>, [
    [<ore:ingotElectricalSteel>, <ore:itemSkull>, <ore:ingotElectricalSteel>],
    [<ore:ingotElectricalSteel>, <ore:itemSoulMachineChassi>, <ore:ingotElectricalSteel>],
    [<ore:itemVibrantCrystal>, <enderio:item_material:41>, <ore:itemVibrantCrystal>]
]);

# The Vat

# The Enhanced Vat

# Simple Wired Charger
// recipes.addShaped(<enderio:block_simple_wired_charger>, [
//     [<ore:cobblestone>, <ore:ingotIron>, <ore:cobblestone>],
//     [<ore:ingotIron>, <enderio:item_material>, <ore:ingotIron>],
//     [<ore:cobblestone>, <ore:ingotIron>, <ore:cobblestone>]
// ]);

# Wired Charger
// recipes.addShaped(<enderio:block_wired_charger>, [
//     [<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>],
//     [<ore:ingotElectricalSteel>, <ore:itemMachineChassi>, <ore:ingotElectricalSteel>],
//     [<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>]
// ]);
// recipes.addShaped(<enderio:block_wired_charger>, [
//     [<ore:ingotElectricalSteel>, null, <ore:ingotElectricalSteel>],
//     [null, <ore:itemMachineChassi>, null],
//     [<ore:ingotElectricalSteel>, <enderio:block_simple_wired_charger>, <ore:ingotElectricalSteel>]
// ]);

# Enhanced Wired Charger
// recipes.addShaped(<enderio:block_enhanced_wired_charger>, [
//     [<ore:ingotElectricalSteel>, <ore:ingotEndSteel>, <ore:ingotElectricalSteel>],
//     [<ore:ingotElectricalSteel>, <ore:itemMachineChassi>, <ore:ingotElectricalSteel>],
//     [<ore:gearVibrant>, <ore:ingotElectricalSteel>, <ore:gearVibrant>]
// ]);
// recipes.addShaped(<enderio:block_enhanced_wired_charger>, [
//     [null, <ore:ingotEndSteel>, null],
//     [null, <ore:itemMachineChassi>, null],
//     [<ore:gearVibrant>, <enderio:block_wired_charger>, <ore:gearVibrant>]
// ]);

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

# Fluid Tank

# Pressurized Fluid Tank

# Dimensional Transceiver
recipes.addShaped(<enderio:block_transceiver>, [
    [<ore:ingotElectricalSteel>, <ore:skullEnderResonator>, <ore:ingotElectricalSteel>],
    [<enderio:block_fused_quartz:*>, <ore:itemEnderCrystal>, <enderio:block_fused_quartz:*>],
    [<ore:ingotElectricalSteel>, <enderio:item_capacitor_vivid>, <ore:ingotElectricalSteel>]
]);

# Vacuum Chest

# XP Vacuum
recipes.addShaped(<enderio:block_xp_vacuum>, [
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, <enderio:item_xp_transfer>, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, <ore:itemPulsatingCrystal>, <ore:ingotConstructionAlloy>]
]);

# The Niard

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
    [<ore:gearEnergized>, <ore:itemMachineChassi>, <ore:gearEnergized>],
    [<ore:ingotElectricalSteel>, <ore:ingotRedstoneAlloy>, <ore:ingotElectricalSteel>]
]);

# Simple Crafter

# Crafter
recipes.addShaped(<enderio:block_crafter>, [
    [<ore:dustSilicon>, <ore:dustSilicon>, <ore:dustSilicon>], 
    [<enderio:item_alloy_ingot:9>, <ore:itemMachineChassi>, <enderio:item_alloy_ingot:9>], 
    [<ore:gearIronInfinity>, <ore:workbench>, <ore:gearIronInfinity>]
]);
