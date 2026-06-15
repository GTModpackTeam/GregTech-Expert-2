package post.main.eio

import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName('assembler')

// Basic Capacitor Bank
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_cap_bank', 1))
    .shape([
        [item('enderio:item_basic_capacitor'), ore('circuitHv'), item('enderio:item_basic_capacitor')],
        [metaitem('plateElectricalSteel'), ore('itemSimpleMachineChassi'), metaitem('plateElectricalSteel')],
        [item('enderio:item_basic_capacitor'), ore('batteryHv'), item('enderio:item_basic_capacitor')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('enderio:item_basic_capacitor') * 2,
        metaitem('plateElectricalSteel'),
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
        [metaitem('plateEnergeticAlloy'), ore('itemMachineChassi'), metaitem('plateEnergeticAlloy')],
        [item('enderio:block_cap_bank', 1), ore('batteryEv'), item('enderio:block_cap_bank', 1)],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('enderio:block_cap_bank', 1) * 2,
        metaitem('plateEnergeticAlloy'),
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
        [item('enderio:block_cap_bank', 2), ore('batteryIv'), item('enderio:block_cap_bank', 2)],
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
        [metaitem('plateIron'), null, metaitem('plateIron')],
        [metaitem('plateElectricalSteel'), item('enderio:item_conduit_probe'), metaitem('plateElectricalSteel')],
        [metaitem('plateIron'), null, metaitem('plateIron')],
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
        [metaitem('plateDarkSteel'), metaitem('plateDarkSteel'), metaitem('plateDarkSteel')],
        [null, metaitem('plateDarkSteel'), null],
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
        [metaitem('plateDarkSteel'), ore('circuitHv'), metaitem('plateDarkSteel')],
        [ore('fusedQuartz'), ore('itemMachineChassi'), ore('fusedQuartz')],
        [metaitem('electric.motor.hv'), ore('skullZombieElectrode'), metaitem('electric.motor.hv')],
    ])
    .register()

// Frank'n'Zombie Generator
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_franken_zombie_generator'))
    .shape([
        [metaitem('plateSoularium'), ore('circuitEv'), metaitem('plateSoularium')],
        [ore('fusedQuartz'), ore('itemEnhancedMachineChassi'), ore('fusedQuartz')],
        [metaitem('electric.motor.ev'), ore('skullZombieFrankenstein'), metaitem('electric.motor.ev')],
    ])
    .register()

// Ender Generator
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_ender_generator'))
    .shape([
        [metaitem('plateEndSteel'), ore('circuitIv'), metaitem('plateEndSteel')],
        [ore('fusedQuartz'), ore('itemEndSteelMachineChassi'), ore('fusedQuartz')],
        [metaitem('electric.motor.iv'), ore('skullSentientEnder'), metaitem('electric.motor.iv')],
    ])
    .register()

// Killer Joe
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_killer_joe'))
    .shape([
        [metaitem('plateSoularium'), ore('circuitEv'), metaitem('plateSoularium')],
        [ore('fusedQuartz'), ore('itemEnhancedMachineChassi'), ore('fusedQuartz')],
        [metaitem('electric.motor.ev'), ore('skullZombieController'), metaitem('electric.motor.ev')],
    ])
    .register()

// Lava Heat Exchanger
mods.jei.ingredient.hide(item('enderio:block_lava_generator'))

// Electric Light
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_electric_light'))
    .shape([
        [ore('blockGlassHardened'), ore('blockGlassHardened'), ore('blockGlassHardened')],
        [metaitem('plateSilicon'), item('minecraft:glowstone_dust'), metaitem('plateSilicon')],
        [metaitem('plateSilicon'), item('enderio:item_basic_capacitor'), metaitem('plateSilicon')],
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
        [
            item('enderio:block_fused_glass', 32767),
            item('enderio:block_fused_glass', 32767),
            item('enderio:block_fused_glass', 32767),
        ],
        [metaitem('plateSilicon'), ore('blockGlowstone'), metaitem('plateSilicon')],
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
        [metaitem('plateEnergeticAlloy'), metaitem('gearWood'), metaitem('plateEnergeticAlloy')],
        [metaitem('plateSoularium'), ore('itemSoulMachineChassi'), metaitem('plateSoularium')],
    ])
    .register()

// Aversion Obelisk
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_aversion_obelisk'))
    .shape([
        [null, item('enderio:block_enderman_skull', 2), null],
        [metaitem('plateEnergeticAlloy'), metaitem('gearEnergeticAlloy'), metaitem('plateEnergeticAlloy')],
        [metaitem('plateSoularium'), ore('itemSoulMachineChassi'), metaitem('plateSoularium')],
    ])
    .register()

// Inhibitor Obelisk
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_inhibitor_obelisk'))
    .shape([
        [null, ore('itemEnderCrystal'), null],
        [metaitem('plateEnergeticAlloy'), metaitem('gearElectricalSteel'), metaitem('plateEnergeticAlloy')],
        [metaitem('plateSoularium'), ore('itemSoulMachineChassi'), metaitem('plateSoularium')],
    ])
    .register()

// Relocator Obelisk
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_relocator_obelisk'))
    .shape([
        [null, ore('blockPrismarine'), null],
        [ore('blockPrismarine'), item('enderio:block_aversion_obelisk'), ore('blockPrismarine')],
        [null, metaitem('gearVibrantAlloy'), null],
    ])
    .register()

// Weather Obelisk
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_weather_obelisk'))
    .shape([
        [null, ore('itemWeatherCrystal'), null],
        [metaitem('plateEnergeticAlloy'), item('enderio:item_basic_capacitor', 2), metaitem('plateEnergeticAlloy')],
        [metaitem('plateSoularium'), ore('itemSoulMachineChassi'), metaitem('plateSoularium')],
    ])
    .register()

// Experience Obelisk
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_experience_obelisk'))
    .shape([
        [null, item('enderio:item_xp_transfer'), null],
        [metaitem('plateEnergeticAlloy'), metaitem('super_tank.lv'), metaitem('plateEnergeticAlloy')],
        [metaitem('plateSoularium'), ore('itemSoulMachineChassi'), metaitem('plateSoularium')],
    ])
    .register()

// Painting Machine
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_painter'))
    .shape([
        [metaitem('sensor.hv'), ore('circuitHv'), metaitem('sensor.hv')],
        [metaitem('gearElectricalSteel'), ore('itemMachineChassi'), metaitem('gearElectricalSteel')],
        [metaitem('plateElectricalSteel'), metaitem('plateElectricalSteel'), metaitem('plateElectricalSteel')],
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
        [metaitem('plateStone'), metaitem('plateSteel'), metaitem('plateStone')],
        [metaitem('plateStone'), item('enderio:item_material'), metaitem('plateStone')],
        [metaitem('gearStone'), metaitem('plateSteel'), metaitem('gearStone')],
    ])
    .register()

// Wired Charger
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_wired_charger'))
    .shape([
        [metaitem('plateEnergeticAlloy'), metaitem('plateDarkSteel'), metaitem('plateEnergeticAlloy')],
        [metaitem('emitter.hv'), ore('itemMachineChassi'), metaitem('sensor.hv')],
        [metaitem('gearEnergeticAlloy'), metaitem('plateDarkSteel'), metaitem('gearEnergeticAlloy')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_wired_charger'))
    .shape([
        [metaitem('plateDoubleEnergeticAlloy'), metaitem('plateDarkSteel'), metaitem('plateDoubleEnergeticAlloy')],
        [metaitem('emitter.hv'), ore('itemMachineChassi'), metaitem('sensor.hv')],
        [metaitem('gearEnergeticAlloy'), item('enderio:block_simple_wired_charger'), metaitem('gearEnergeticAlloy')],
    ])
    .register()

// Enhanced Wired Charger
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_enhanced_wired_charger'))
    .shape([
        [metaitem('plateVibrantAlloy'), metaitem('plateEndSteel'), metaitem('plateVibrantAlloy')],
        [metaitem('emitter.ev'), ore('itemEnhancedMachineChassi'), metaitem('sensor.ev')],
        [metaitem('gearVibrantAlloy'), metaitem('plateEndSteel'), metaitem('gearVibrantAlloy')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_enhanced_wired_charger'))
    .shape([
        [metaitem('plateDoubleVibrantAlloy'), metaitem('plateEndSteel'), metaitem('plateDoubleVibrantAlloy')],
        [metaitem('emitter.ev'), ore('itemEnhancedMachineChassi'), metaitem('sensor.ev')],
        [metaitem('gearVibrantAlloy'), item('enderio:block_wired_charger'), metaitem('gearVibrantAlloy')],
    ])
    .register()

// Wireless Charger
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_wireless_charger'))
    .shape([
        [metaitem('plateElectricalSteel'), metaitem('plateElectricalSteel'), metaitem('plateElectricalSteel')],
        [metaitem('plateElectricalSteel'), ore('skullEnderResonator'), metaitem('plateElectricalSteel')],
        [metaitem('plateElectricalSteel'), item('enderio:item_capacitor_silver'), metaitem('plateElectricalSteel')],
    ])
    .register()

// Wireless Charging Antenna
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_normal_wireless_charger'))
    .shape([
        [ore('itemWirelessDish'), item('enderio:block_wireless_charger'), ore('itemWirelessDish')],
        [ore('itemWirelessDish'), ore('itemMachineChassi'), ore('itemWirelessDish')],
        [null, item('enderio:item_capacitor_silver'), null],
    ])
    .register()

// Enhanced Wireless Charging Antenna
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_enhanced_wireless_charger'))
    .shape([
        [ore('itemWirelessDish'), item('enderio:block_wireless_charger'), ore('itemWirelessDish')],
        [ore('itemWirelessDish'), ore('itemMachineChassi'), ore('itemWirelessDish')],
        [null, item('enderio:item_capacitor_vivid'), null],
    ])
    .register()

// Wireless Charging Antenna Extension
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_wireless_charger_extension'))
    .shape([
        [null, ore('itemWirelessDish'), null],
        [ore('itemWirelessDish'), metaitem('plateEndSteel'), ore('itemWirelessDish')],
        [null, ore('itemWirelessDish'), null],
    ])
    .register()

// Fluid Tanks

// Dimensional Transceiver
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_transceiver'))
    .shape([
        [metaitem('sensor.iv'), ore('skullEnderResonator'), metaitem('sensor.iv')],
        [
            item('enderio:block_fused_quartz', 32767),
            item('enderio:block_travel_anchor'),
            item('enderio:block_fused_quartz', 32767),
        ],
        [ore('itemEnderCrystal'), item('enderio:item_capacitor_vivid'), ore('itemEnderCrystal')],
    ])
    .register()

// Vacuum Chest
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_vacuum_chest'))
    .shape([
        [metaitem('plateConstructionAlloy'), metaitem('plateConstructionAlloy'), metaitem('plateConstructionAlloy')],
        [metaitem('plateConstructionAlloy'), metaitem('item_collector.hv'), metaitem('plateConstructionAlloy')],
        [metaitem('plateConstructionAlloy'), ore('itemEnderCrystal'), metaitem('plateConstructionAlloy')],
    ])
    .register()

// XP Vacuum
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_xp_vacuum'))
    .shape([
        [metaitem('plateConstructionAlloy'), metaitem('plateConstructionAlloy'), metaitem('plateConstructionAlloy')],
        [metaitem('plateConstructionAlloy'), item('enderio:item_xp_transfer'), metaitem('plateConstructionAlloy')],
        [metaitem('plateConstructionAlloy'), ore('itemPulsatingCrystal'), metaitem('plateConstructionAlloy')],
    ])
    .register()

// The Niard
mods.jei.ingredient.hide(item('enderio:block_niard'))

// Travel Anchor
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_travel_anchor'))
    .shape([
        [metaitem('plateElectricalSteel'), ore('blockElevator'), metaitem('plateElectricalSteel')],
        [ore('itemPulsatingCrystal'), ore('itemEnhancedMachineChassi'), ore('itemPulsatingCrystal')],
        [metaitem('plateElectricalSteel'), metaitem('field.generator.hv'), metaitem('plateElectricalSteel')],
    ])
    .register()

// Telepad Block
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_tele_pad'))
    .shape([
        [item('enderio:block_fused_quartz', 32767), metaitem('plateVibrantAlloy'), item('enderio:block_fused_quartz', 32767)],
        [metaitem('plateDarkSteel'), item('enderio:block_travel_anchor'), metaitem('plateDarkSteel')],
        [metaitem('plateDarkSteel'), item('enderio:item_capacitor_silver'), metaitem('plateDarkSteel')],
    ])
    .register()

// Dialing Device
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_dialing_device'))
    .shape([
        [null, metaitem('plateElectricalSteel'), null],
        [null, ore('skullEnderResonator'), null],
        [metaitem('plateDarkSteel'), item('enderio:item_capacitor_vivid'), metaitem('plateDarkSteel')],
    ])
    .register()

// Impulse Hopper
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_impulse_hopper'))
    .shape([
        [metaitem('plateElectricalSteel'), ore('blockHopper'), metaitem('plateElectricalSteel')],
        [metaitem('gearEnergeticAlloy'), ore('itemMachineChassi'), metaitem('gearEnergeticAlloy')],
        [metaitem('plateElectricalSteel'), metaitem('plateRedstoneAlloy'), metaitem('plateElectricalSteel')],
    ])
    .register()

// Simple Crafter
mods.jei.ingredient.hide(item('enderio:block_simple_crafter'))

// Crafter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:block_crafter'))
    .shape([
        [metaitem('plateSilicon'), metaitem('plateSilicon'), metaitem('plateSilicon')],
        [metaitem('plateConstructionAlloy'), ore('itemEnhancedMachineChassi'), metaitem('plateConstructionAlloy')],
        [metaitem('gearVibrantAlloy'), metaitem('workbench'), metaitem('gearVibrantAlloy')],
    ])
    .register()
