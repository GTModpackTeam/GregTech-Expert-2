import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName("assembler")


// Basic Capacitor Bank
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_cap_bank', 1))
    .shape([
        [item('enderio:item_basic_capacitor'), ore('circuitHv'), item('enderio:item_basic_capacitor')],
        [mi('plateElectricalSteel'), ore('itemSimpleMachineChassi'), mi('plateElectricalSteel')],
        [item('enderio:item_basic_capacitor'), ore('batteryHv'), item('enderio:item_basic_capacitor')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('enderio:item_basic_capacitor') * 2,
        mi('plateElectricalSteel'),
        ore('circuitHv'),
        ore('itemSimpleMachineChassi')
    )
    .outputs(item('enderio:block_cap_bank', 1))
    .duration(20)
    .EUt(7680)
    .buildAndRegister()

// Capacitor Bank
mods.minecraft.crafting.removeByOutput(item('enderio:block_cap_bank', 2))
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_cap_bank', 2))
    .shape([
        [item('enderio:item_basic_capacitor', 1), ore('circuitEv'), item('enderio:item_basic_capacitor', 1)],
        [mi('plateEnergeticAlloy'), ore('itemMachineChassi'), mi('plateEnergeticAlloy')],
        [item('enderio:block_cap_bank', 1), ore('batteryEv'), item('enderio:block_cap_bank', 1)]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('enderio:block_cap_bank', 1) * 2,
        mi('plateEnergeticAlloy'),
        item('enderio:item_basic_capacitor', 1),
        ore('circuitEv'),
        ore('batteryEv'),
        ore('itemMachineChassi')
    )
    .outputs(item('enderio:block_cap_bank', 2))
    .duration(20)
    .EUt(7680)
    .buildAndRegister()

// Vibrant Capacitor Bank
mods.minecraft.crafting.removeByOutput(item('enderio:block_cap_bank', 3))
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_cap_bank', 3))
    .shape([
        [item('enderio:item_basic_capacitor', 2), ore('circuitIv'), item('enderio:item_basic_capacitor', 2)],
        [ore('itemVibrantCrystal'), ore('itemEnhancedMachineChassi'), ore('itemVibrantCrystal')],
        [item('enderio:block_cap_bank', 2), ore('batteryIv'), item('enderio:block_cap_bank', 2)]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('enderio:block_cap_bank', 2) * 2,
        ore('itemVibrantCrystal'),
        item('enderio:item_basic_capacitor', 2),
        ore('circuitIv'),
        ore('batteryIv'),
        ore('itemEnhancedMachineChassi')
    )
    .outputs(item('enderio:block_cap_bank', 3))
    .duration(20)
    .EUt(7680)
    .buildAndRegister()

// Block Detector
mods.jei.ingredient.hide(item('enderio:block_detector_block'))

// Block Detector (Silent)
mods.jei.ingredient.hide(item('enderio:block_detector_block_silent'))

// Energy Gauge
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_gauge'))
    .shape([
        [mi('plateIron'), null, mi('plateIron')],
        [mi('plateElectricalSteel'), item('enderio:item_conduit_probe'), mi('plateElectricalSteel')],
        [mi('plateIron'), null, mi('plateIron')]
    ])
    .register()

// Power Monitor
mods.jei.ingredient.hide(item('enderio:block_power_monitor'))

// Graphical Power Monitor
mods.jei.ingredient.hide(item('enderio:block_advanced_power_monitor'))

// Simple Powered Furnace
mods.jei.ingredient.hide(item('enderio:block_simple_furnace'))

// Simple Alloy Smelter
mods.jei.ingredient.hide(item('enderio:block_simple_alloy_smelter'))

// Alloy Smelter
mods.jei.ingredient.hide(item('enderio:block_alloy_smelter'))

// Enhanced Alloy Smelter
mods.jei.ingredient.hide(item('enderio:block_enhanced_alloy_smelter'))

// Buffers
mods.jei.ingredient.hide(item('enderio:block_buffer', 32767))

// Enchanter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_enchanter'))
    .shape([
        [ore('gemDiamond'), item('minecraft:book'), ore('gemDiamond')],
        [mi('plateDarkSteel'), mi('plateDarkSteel'), mi('plateDarkSteel')],
        [null, mi('plateDarkSteel'), null]
    ])
    .register()

// Farming Station
mods.jei.ingredient.hide(item('enderio:block_farm_station'))

// Combustion Generator
mods.jei.ingredient.hide(item('enderio:block_combustion_generator'))

// Enhanced Combustion Generator
mods.jei.ingredient.hide(item('enderio:block_enhanced_combustion_generator'))

// Simple Stirling Generator
mods.jei.ingredient.hide(item('enderio:block_simple_stirling_generator'))

// Stirling Generator
mods.jei.ingredient.hide(item('enderio:block_stirling_generator'))

// Zombie Generator
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_zombie_generator'))
    .shape([
        [mi('plateDarkSteel'), ore('circuitHv'), mi('plateDarkSteel')],
        [ore('fusedQuartz'), ore('itemMachineChassi'), ore('fusedQuartz')],
        [mi('electric.motor.hv'), ore('skullZombieElectrode'), mi('electric.motor.hv')]
    ])
    .register()

// Frank'n'Zombie Generator
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_franken_zombie_generator'))
    .shape([
        [mi('plateSoularium'), ore('circuitEv'), mi('plateSoularium')],
        [ore('fusedQuartz'), ore('itemEnhancedMachineChassi'), ore('fusedQuartz')],
        [mi('electric.motor.ev'), ore('skullZombieFrankenstein'), mi('electric.motor.ev')]
    ])
    .register()

// Ender Generator
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_ender_generator'))
    .shape([
        [mi('plateEndSteel'), ore('circuitIv'), mi('plateEndSteel')],
        [ore('fusedQuartz'), ore('itemEndSteelMachineChassi'), ore('fusedQuartz')],
        [mi('electric.motor.iv'), ore('skullSentientEnder'), mi('electric.motor.iv')]
    ])
    .register()

// Killer Joe
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_killer_joe'))
    .shape([
        [mi('plateSoularium'), ore('circuitEv'), mi('plateSoularium')],
        [ore('fusedQuartz'), ore('itemEnhancedMachineChassi'), ore('fusedQuartz')],
        [mi('electric.motor.ev'), ore('skullZombieController'), mi('electric.motor.ev')]
    ])
    .register()

// Lava Heat Exchanger
mods.jei.ingredient.hide(item('enderio:block_lava_generator'))

// Electric Light
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_electric_light'))
    .shape([
        [ore('blockGlassHardened'), ore('blockGlassHardened'), ore('blockGlassHardened')],
        [mi('plateSilicon'), item('minecraft:glowstone_dust'), mi('plateSilicon')],
        [mi('plateSilicon'), item('enderio:item_basic_capacitor'), mi('plateSilicon')]
    ])
    .register()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:block_electric_light'))
    .input(item('enderio:block_electric_light', 1), ore('craftingRedstoneTorch'))
    .register()

// Electric Light (Inverted)
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:block_electric_light', 1))
    .input(item('enderio:block_electric_light'), ore('craftingRedstoneTorch'))
    .register()

// Light
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_electric_light', 2))
    .shape([
        [null, null, null],
        [item('enderio:block_fused_glass', 32767), item('enderio:block_fused_glass', 32767), item('enderio:block_fused_glass', 32767)],
        [mi('plateSilicon'), ore('blockGlowstone'), mi('plateSilicon')]
    ])
    .register()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:block_electric_light', 2))
    .input(item('enderio:block_electric_light', 3), ore('craftingRedstoneTorch'))
    .register()

// Light (Inverted)
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:block_electric_light', 3))
    .input(item('enderio:block_electric_light', 2), ore('craftingRedstoneTorch'))
    .register()

// Wireless Light
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:block_electric_light', 4))
    .input(item('enderio:block_electric_light'), item('enderio:item_material', 43))
    .register()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:block_electric_light', 4))
    .input(item('enderio:block_electric_light', 5), ore('craftingRedstoneTorch'))
    .register()

// Wireless Light (Inverted)
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:block_electric_light', 5))
    .input(item('enderio:block_electric_light', 4), ore('craftingRedstoneTorch'))
    .register()

// Attractor Obelisk
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_attractor_obelisk'))
    .shape([
        [null, ore('itemAttractorCrystal'), null],
        [mi('plateEnergeticAlloy'), mi('gearWood'), mi('plateEnergeticAlloy')],
        [mi('plateSoularium'), ore('itemSoulMachineChassi'), mi('plateSoularium')]
    ])
    .register()

// Aversion Obelisk
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_aversion_obelisk'))
    .shape([
        [null, item('enderio:block_enderman_skull', 2), null],
        [mi('plateEnergeticAlloy'), mi('gearEnergeticAlloy'), mi('plateEnergeticAlloy')],
        [mi('plateSoularium'), ore('itemSoulMachineChassi'), mi('plateSoularium')]
    ])
    .register()

// Inhibitor Obelisk
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_inhibitor_obelisk'))
    .shape([
        [null, ore('itemEnderCrystal'), null],
        [mi('plateEnergeticAlloy'), mi('gearElectricalSteel'), mi('plateEnergeticAlloy')],
        [mi('plateSoularium'), ore('itemSoulMachineChassi'), mi('plateSoularium')]
    ])
    .register()

// Relocator Obelisk
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_relocator_obelisk'))
    .shape([
        [null, ore('blockPrismarine'), null],
        [ore('blockPrismarine'), item('enderio:block_aversion_obelisk'), ore('blockPrismarine')],
        [null, mi('gearVibrantAlloy'), null]
    ])
    .register()

// Weather Obelisk
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_weather_obelisk'))
    .shape([
        [null, ore('itemWeatherCrystal'), null],
        [mi('plateEnergeticAlloy'), item('enderio:item_basic_capacitor', 2), mi('plateEnergeticAlloy')],
        [mi('plateSoularium'), ore('itemSoulMachineChassi'), mi('plateSoularium')]
    ])
    .register()

// Experience Obelisk
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_experience_obelisk'))
    .shape([
        [null, item('enderio:item_xp_transfer'), null],
        [mi('plateEnergeticAlloy'), mi('super_tank.lv'), mi('plateEnergeticAlloy')],
        [mi('plateSoularium'), ore('itemSoulMachineChassi'), mi('plateSoularium')]
    ])
    .register()

// Painting Machine
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_painter'))
    .shape([
        [mi('sensor.hv'), ore('circuitHv'), mi('sensor.hv')],
        [mi('gearElectricalSteel'), ore('itemMachineChassi'), mi('gearElectricalSteel')],
        [mi('plateElectricalSteel'), mi('plateElectricalSteel'), mi('plateElectricalSteel')]
    ])
    .register()

// Endervoir
mods.jei.ingredient.hide(item('enderio:block_reservoir'))

// Omnivoir
mods.jei.ingredient.hide(item('enderio:block_omni_reservoir'))

// Simple SAG Mill
mods.jei.ingredient.hide(item('enderio:block_simple_sag_mill'))

// SAG Mill
mods.jei.ingredient.hide(item('enderio:block_sag_mill'))

// Enhanced SAG Mill
mods.jei.ingredient.hide(item('enderio:block_enhanced_sag_mill'))

// Slice'N'Splice
mods.jei.ingredient.hide(item('enderio:block_slice_and_splice'))

// Photovoltaic Cells
mods.jei.ingredient.hide(item('enderio:block_solar_panel', 32767))

// Soul Binder
mods.jei.ingredient.hide(item('enderio:block_soul_binder'))

// Powered Spawner
mods.jei.ingredient.hide(item('enderio:block_powered_spawner'))
mods.jei.ingredient.hide(item('enderio:block_creative_spawner'))

// The Vat
mods.jei.ingredient.hide(item('enderio:block_vat'))

// The Enhanced Vat
mods.jei.ingredient.hide(item('enderio:block_enhanced_vat'))

// Simple Wired Charger
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_simple_wired_charger'))
    .shape([
        [mi('plateStone'), mi('plateSteel'), mi('plateStone')],
        [mi('plateStone'), item('enderio:item_material'), mi('plateStone')],
        [mi('gearStone'), mi('plateSteel'), mi('gearStone')]
    ])
    .register()

// Wired Charger
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_wired_charger'))
    .shape([
        [mi('plateEnergeticAlloy'), mi('plateDarkSteel'), mi('plateEnergeticAlloy')],
        [mi('emitter.hv'), ore('itemMachineChassi'), mi('sensor.hv')],
        [mi('gearEnergeticAlloy'), mi('plateDarkSteel'), mi('gearEnergeticAlloy')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_wired_charger'))
    .shape([
        [mi('plateDoubleEnergeticAlloy'), mi('plateDarkSteel'), mi('plateDoubleEnergeticAlloy')],
        [mi('emitter.hv'), ore('itemMachineChassi'), mi('sensor.hv')],
        [mi('gearEnergeticAlloy'), item('enderio:block_simple_wired_charger'), mi('gearEnergeticAlloy')]
    ])
    .register()

// Enhanced Wired Charger
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_enhanced_wired_charger'))
    .shape([
        [mi('plateVibrantAlloy'), mi('plateEndSteel'), mi('plateVibrantAlloy')],
        [mi('emitter.ev'), ore('itemEnhancedMachineChassi'), mi('sensor.ev')],
        [mi('gearVibrantAlloy'), mi('plateEndSteel'), mi('gearVibrantAlloy')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_enhanced_wired_charger'))
    .shape([
        [mi('plateDoubleVibrantAlloy'), mi('plateEndSteel'), mi('plateDoubleVibrantAlloy')],
        [mi('emitter.ev'), ore('itemEnhancedMachineChassi'), mi('sensor.ev')],
        [mi('gearVibrantAlloy'), item('enderio:block_wired_charger'), mi('gearVibrantAlloy')]
    ])
    .register()

// Wireless Charger
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_wireless_charger'))
    .shape([
        [mi('plateElectricalSteel'), mi('plateElectricalSteel'), mi('plateElectricalSteel')],
        [mi('plateElectricalSteel'), ore('skullEnderResonator'), mi('plateElectricalSteel')],
        [mi('plateElectricalSteel'), item('enderio:item_capacitor_silver'), mi('plateElectricalSteel')]
    ])
    .register()

// Wireless Charging Antenna
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_normal_wireless_charger'))
    .shape([
        [ore('itemWirelessDish'), item('enderio:block_wireless_charger'), ore('itemWirelessDish')],
        [ore('itemWirelessDish'), ore('itemMachineChassi'), ore('itemWirelessDish')],
        [null, item('enderio:item_capacitor_silver'), null]
    ])
    .register()

// Enhanced Wireless Charging Antenna
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_enhanced_wireless_charger'))
    .shape([
        [ore('itemWirelessDish'), item('enderio:block_wireless_charger'), ore('itemWirelessDish')],
        [ore('itemWirelessDish'), ore('itemMachineChassi'), ore('itemWirelessDish')],
        [null, item('enderio:item_capacitor_vivid'), null]
    ])
    .register()

// Wireless Charging Antenna Extension
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_wireless_charger_extension'))
    .shape([
        [null, ore('itemWirelessDish'), null],
        [ore('itemWirelessDish'), mi('plateEndSteel'), ore('itemWirelessDish')],
        [null, ore('itemWirelessDish'), null]
    ])
    .register()

// Fluid Tanks

// Dimensional Transceiver
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_transceiver'))
    .shape([
        [mi('sensor.iv'), ore('skullEnderResonator'), mi('sensor.iv')],
        [item('enderio:block_fused_quartz', 32767), item('enderio:block_travel_anchor'), item('enderio:block_fused_quartz', 32767)],
        [ore('itemEnderCrystal'), item('enderio:item_capacitor_vivid'), ore('itemEnderCrystal')]
    ])
    .register()

// Vacuum Chest
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_vacuum_chest'))
    .shape([
        [mi('plateConstructionAlloy'), mi('plateConstructionAlloy'), mi('plateConstructionAlloy')],
        [mi('plateConstructionAlloy'), mi('item_collector.hv'), mi('plateConstructionAlloy')],
        [mi('plateConstructionAlloy'), ore('itemEnderCrystal'), mi('plateConstructionAlloy')]
    ])
    .register()

// XP Vacuum
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_xp_vacuum'))
    .shape([
        [mi('plateConstructionAlloy'), mi('plateConstructionAlloy'), mi('plateConstructionAlloy')],
        [mi('plateConstructionAlloy'), item('enderio:item_xp_transfer'), mi('plateConstructionAlloy')],
        [mi('plateConstructionAlloy'), ore('itemPulsatingCrystal'), mi('plateConstructionAlloy')]
    ])
    .register()

// The Niard
mods.jei.ingredient.hide(item('enderio:block_niard'))

// Travel Anchor
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_travel_anchor'))
    .shape([
        [mi('plateElectricalSteel'), ore('blockElevator'), mi('plateElectricalSteel')],
        [ore('itemPulsatingCrystal'), ore('itemEnhancedMachineChassi'), ore('itemPulsatingCrystal')],
        [mi('plateElectricalSteel'), mi('field.generator.hv'), mi('plateElectricalSteel')]
    ])
    .register()

// Telepad Block
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_tele_pad'))
    .shape([
        [item('enderio:block_fused_quartz', 32767), mi('plateVibrantAlloy'), item('enderio:block_fused_quartz', 32767)],
        [mi('plateDarkSteel'), item('enderio:block_travel_anchor'), mi('plateDarkSteel')],
        [mi('plateDarkSteel'), item('enderio:item_capacitor_silver'), mi('plateDarkSteel')]
    ])
    .register()

// Dialing Device
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_dialing_device'))
    .shape([
        [null, mi('plateElectricalSteel'), null],
        [null, ore('skullEnderResonator'), null],
        [mi('plateDarkSteel'), item('enderio:item_capacitor_vivid'), mi('plateDarkSteel')]
    ])
    .register()

// Impulse Hopper
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_impulse_hopper'))
    .shape([
        [mi('plateElectricalSteel'), ore('blockHopper'), mi('plateElectricalSteel')],
        [mi('gearEnergeticAlloy'), ore('itemMachineChassi'), mi('gearEnergeticAlloy')],
        [mi('plateElectricalSteel'), mi('plateRedstoneAlloy'), mi('plateElectricalSteel')]
    ])
    .register()

// Simple Crafter
mods.jei.ingredient.hide(item('enderio:block_simple_crafter'))

// Crafter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_crafter'))
    .shape([
        [mi('plateSilicon'), mi('plateSilicon'), mi('plateSilicon')],
        [mi('plateConstructionAlloy'), ore('itemEnhancedMachineChassi'), mi('plateConstructionAlloy')],
        [mi('gearVibrantAlloy'), mi('workbench'), mi('gearVibrantAlloy')]
    ])
    .register()
