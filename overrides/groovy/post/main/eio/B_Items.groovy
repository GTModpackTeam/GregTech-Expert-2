// Conduit Facade
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_conduit_facade'))
    .shape([
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')],
        [ore('itemConduitBinder'), null, ore('itemConduitBinder')],
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')],
    ])
    .register()

// Hardened Conduit Facade
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_conduit_facade', 1))
    .shape([
        [null, metaitem('dustObsidian'), null],
        [metaitem('dustObsidian'), item('enderio:item_conduit_facade'), metaitem('dustObsidian')],
        [null, metaitem('dustObsidian'), null],
    ])
    .register()

// Transparent Conduit Facade
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_conduit_facade', 2))
    .shape([
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')],
        [ore('itemConduitBinder'), item('enderio:block_fused_glass', 32767), ore('itemConduitBinder')],
        [ore('itemConduitBinder'), ore('itemConduitBinder'), ore('itemConduitBinder')],
    ])
    .register()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_conduit_facade', 2))
    .input(item('enderio:item_conduit_facade'), item('enderio:block_fused_glass', 32767))
    .register()

// Transparent Hardened Conduit
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_conduit_facade', 3))
    .input(item('enderio:item_conduit_facade', 1), item('enderio:block_fused_glass', 32767))
    .register()

// Conduit Probe
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_conduit_probe'))
    .shape([
        [metaitem('nuggetElectricalSteel'), null, metaitem('nuggetElectricalSteel')],
        [metaitem('plateConstructionAlloy'), item('enderio:item_yeta_wrench'), metaitem('plateConstructionAlloy')],
        [metaitem('plateConstructionAlloy'), item('enderio:item_material', 20), metaitem('plateConstructionAlloy')],
    ])
    .register()

// Experience Rod
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_xp_transfer'))
    .shape([
        [null, null, ore('itemVibrantCrystal')],
        [null, metaitem('stickVibrantAlloy'), null],
        [metaitem('stickVibrantAlloy'), null, null],
    ])
    .register()

// Cold Fire Igniter
mods.jei.ingredient.hide(item('enderio:item_cold_fire_igniter'))

// Coordinate Selector
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_coord_selector'))
    .shape([
        [metaitem('emitter.hv'), ore('circuitHv'), metaitem('plateElectricalSteel')],
        [null, metaitem('gearVibrantAlloy'), metaitem('plateElectricalSteel')],
        [null, null, metaitem('plateElectricalSteel')],
    ])
    .register()

// Staff of Traveling
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_travel_staff'))
    .shape([
        [null, null, ore('itemEnderCrystal')],
        [null, metaitem('stickDarkSteel'), null],
        [metaitem('stickDarkSteel'), null, null],
    ])
    .register()

// Rod of Return
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_rod_of_return'))
    .shape([
        [null, ore('itemPulsatingCrystal'), ore('itemEnderCrystal')],
        [null, metaitem('stickDarkSteel'), ore('itemPulsatingCrystal')],
        [metaitem('stickDarkSteel'), null, null],
    ])
    .register()

// Electromagnet
mods.jei.ingredient.hide(item('enderio:item_magnet'))

// Enderios
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_ender_food'))
    .shape([
        [item('minecraft:bowl'), item('minecraft:milk_bucket'), null],
        [item('minecraft:wheat'), metaitem('dustEnderPearl'), null],
        [null, null, null],
    ])
    .register()

// Basic Item Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_basic_item_filter'))
    .shape([
        [metaitem('dustElectricalSteel'), ore('paperBlack'), metaitem('dustElectricalSteel')],
        [ore('paperBlack'), metaitem('item_filter'), ore('paperBlack')],
        [metaitem('dustElectricalSteel'), ore('paperBlack'), metaitem('dustElectricalSteel')],
    ])
    .register()

// Advanced Item Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_advanced_item_filter'))
    .shape([
        [metaitem('dustRedstoneAlloy'), ore('paperBlack'), metaitem('dustRedstoneAlloy')],
        [ore('paperBlack'), metaitem('item_filter'), ore('paperBlack')],
        [metaitem('dustRedstoneAlloy'), ore('paperBlack'), metaitem('dustRedstoneAlloy')],
    ])
    .register()

// Limited Item Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_limited_item_filter'))
    .shape([
        [null, ore('skullZombieController'), null],
        [item('minecraft:comparator'), item('enderio:item_advanced_item_filter'), item('minecraft:comparator')],
        [null, null, null],
    ])
    .register()

// Big Item Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_big_item_filter'))
    .shape([
        [metaitem('dustObsidian'), ore('paperBlack'), metaitem('dustObsidian')],
        [ore('paperBlack'), ore('skullSkeletalContractor'), ore('paperBlack')],
        [metaitem('dustObsidian'), ore('paperBlack'), metaitem('dustObsidian')],
    ])
    .register()

// Advanced Big Item Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_big_advanced_item_filter'))
    .shape([
        [null, item('minecraft:shulker_shell'), null],
        [null, item('enderio:item_advanced_item_filter'), null],
        [null, item('minecraft:shulker_shell'), null],
    ])
    .register()

// Big Enchantment Item Filter
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_enchantment_filter_big'))
    .input(item('enderio:item_big_item_filter'), item('minecraft:enchanted_book'))
    .register()

// Existing Item Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_existing_item_filter'))
    .shape([
        [null, metaitem('dustRedstoneAlloy'), null],
        [metaitem('dustRedstoneAlloy'), item('enderio:item_advanced_item_filter'), metaitem('dustRedstoneAlloy')],
        [null, item('minecraft:comparator'), null],
    ])
    .register()

// Mod Item Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_mod_item_filter'))
    .shape([
        [null, ore('paperBlack'), null],
        [ore('paperBlack'), item('enderio:item_yeta_wrench'), ore('paperBlack')],
        [null, ore('paperBlack'), null],
    ])
    .register()

// Power Item Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_power_item_filter'))
    .shape([
        [null, ore('paperBlack'), null],
        [ore('paperBlack'), item('enderio:item_conduit_probe'), ore('paperBlack')],
        [null, ore('paperBlack'), null],
    ])
    .register()

// Enchantment Item Filter
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_enchantment_filter_normal'))
    .input(item('enderio:item_basic_item_filter'), item('minecraft:enchanted_book'))
    .register()

// Basic Fluid Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_fluid_filter'))
    .shape([
        [metaitem('dustRedstoneAlloy'), ore('paperBlack'), metaitem('dustRedstoneAlloy')],
        [ore('paperBlack'), metaitem('fluid_filter'), ore('paperBlack')],
        [metaitem('dustRedstoneAlloy'), ore('paperBlack'), metaitem('dustRedstoneAlloy')],
    ])
    .register()

// Redstone Filter Base
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_material', 60))
    .shape([
        [metaitem('plateRedstoneAlloy'), ore('paperBlack'), metaitem('plateRedstoneAlloy')],
        [ore('paperBlack'), metaitem('plateIron'), ore('paperBlack')],
        [metaitem('plateRedstoneAlloy'), ore('paperBlack'), metaitem('plateRedstoneAlloy')],
    ])
    .register()

// Redstone NOT Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_redstone_not_filter'))
    .shape([
        [null, null, null],
        [ore('craftingRedstoneTorch'), ore('itemRedstoneFilterBase'), metaitem('plateRedstoneAlloy')],
        [null, null, null],
    ])
    .register()

// Redstone OR Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_redstone_or_filter'))
    .shape([
        [null, metaitem('plateRedstoneAlloy'), null],
        [null, ore('itemRedstoneFilterBase'), null],
        [null, metaitem('plateRedstoneAlloy'), null],
    ])
    .register()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_redstone_or_filter'))
    .input(ore('craftingRedstoneTorch'), item('enderio:item_redstone_nor_filter'))
    .register()

// Redstone AND Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_redstone_and_filter'))
    .shape([
        [null, ore('craftingRedstoneTorch'), null],
        [null, ore('itemRedstoneFilterBase'), null],
        [null, ore('craftingRedstoneTorch'), null],
    ])
    .register()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_redstone_and_filter'))
    .input(ore('craftingRedstoneTorch'), item('enderio:item_redstone_nand_filter'))
    .register()

// Redstone NOR Filter
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_redstone_nor_filter'))
    .input(ore('craftingRedstoneTorch'), item('enderio:item_redstone_or_filter'))
    .register()

// Redstone NAND Filter
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_redstone_nand_filter'))
    .input(ore('craftingRedstoneTorch'), item('enderio:item_redstone_and_filter'))
    .register()

// Redstone XOR Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_redstone_xor_filter'))
    .shape([
        [null, ore('craftingRedstoneTorch'), null],
        [metaitem('plateRedstoneAlloy'), ore('itemRedstoneFilterBase'), metaitem('plateRedstoneAlloy')],
        [null, ore('craftingRedstoneTorch'), null],
    ])
    .register()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_redstone_xor_filter'))
    .input(ore('craftingRedstoneTorch'), item('enderio:item_redstone_xnor_filter'))
    .register()

// Redstone XNOR Filter
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_redstone_xnor_filter'))
    .input(ore('craftingRedstoneTorch'), item('enderio:item_redstone_xor_filter'))
    .register()

// Redstone Toggle Latch Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_redstone_toggle_filter'))
    .shape([
        [null, null, null],
        [item('minecraft:lever'), ore('itemRedstoneFilterBase'), metaitem('plateRedstoneAlloy')],
        [null, null, null],
    ])
    .register()

// Redstone Counting Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_redstone_counting_filter'))
    .shape([
        [metaitem('plateRedstoneAlloy'), null, null],
        [metaitem('plateRedstoneAlloy'), ore('itemRedstoneFilterBase'), metaitem('plateRedstoneAlloy')],
        [metaitem('plateRedstoneAlloy'), null, null],
    ])
    .register()

// Redstone Sensor Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_redstone_sensor_filter'))
    .shape([
        [null, null, null],
        [item('minecraft:comparator'), ore('itemRedstoneFilterBase'), metaitem('plateRedstoneAlloy')],
        [null, null, null],
    ])
    .register()

// Redstone Timer Filter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_redstone_timer_filter'))
    .shape([
        [null, null, null],
        [metaitem('plateRedstoneAlloy'), ore('itemRedstoneFilterBase'), item('minecraft:clock')],
        [null, null, null],
    ])
    .register()

// Staff of Levity
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_staff_of_levity'))
    .shape([
        [null, null, ore('itemPrecientCrystal')],
        [null, metaitem('stickEndSteel'), null],
        [metaitem('stickEndSteel'), null, null],
    ])
    .register()

// Simple Inventory Charger
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_inventory_charger_simple'))
    .shape([
        [metaitem('nuggetDarkSteel'), metaitem('plateConductiveIron'), metaitem('nuggetDarkSteel')],
        [metaitem('plateConductiveIron'), item('enderio:item_capacitor_silver'), metaitem('plateConductiveIron')],
        [metaitem('nuggetDarkSteel'), metaitem('plateConductiveIron'), metaitem('nuggetDarkSteel')],
    ])
    .register()

// Basic Inventory Charger
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_inventory_charger_basic'))
    .shape([
        [metaitem('plateDarkSteel'), metaitem('plateElectricalSteel'), metaitem('plateDarkSteel')],
        [ore('itemWirelessDish'), ore('skullZombieElectrode'), ore('itemWirelessDish')],
        [metaitem('plateDarkSteel'), item('enderio:block_cap_bank', 1), metaitem('plateDarkSteel')],
    ])
    .register()

// Inventory Charger
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_inventory_charger'))
    .shape([
        [metaitem('plateDarkSteel'), metaitem('plateEnergeticAlloy'), metaitem('plateDarkSteel')],
        [ore('itemWirelessDish'), ore('skullEnderResonator'), ore('itemWirelessDish')],
        [metaitem('plateDarkSteel'), item('enderio:block_cap_bank', 2), metaitem('plateDarkSteel')],
    ])
    .register()

// Vibrant Inventory Charger
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_inventory_charger_vibrant'))
    .shape([
        [metaitem('plateDarkSteel'), metaitem('plateVibrantAlloy'), metaitem('plateDarkSteel')],
        [ore('itemWirelessDish'), ore('skullSentientEnder'), ore('itemWirelessDish')],
        [metaitem('plateDarkSteel'), item('enderio:block_cap_bank', 3), metaitem('plateDarkSteel')],
    ])
    .register()

// Blank Dark Steel Upgrade
alloySmelter.recipeBuilder()
    .inputs(
        item('enderio:item_basic_item_filter'),
        item('enderio:block_dark_iron_bars')
    )
    .outputs(item('enderio:item_dark_steel_upgrade'))
    .duration(56)
    .EUt(480)
    .buildAndRegister()

// Dark Steel Upgrade "Micro Anvil"
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:anvil']))
    .shape([
        [null, metaitem('nuggetDarkSteel'), metaitem('nuggetDarkSteel')],
        [null, null, item('minecraft:stick')],
        [item('enderio:item_dark_steel_upgrade'), null, item('minecraft:stick')],
    ])
    .register()

// Dark Steel Upgrade "Mini Anvil"
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:anvil1']))
    .shape([
        [null, metaitem('plateDarkSteel'), metaitem('plateDarkSteel')],
        [null, null, item('minecraft:stick')],
        [item('enderio:item_dark_steel_upgrade'), null, item('minecraft:stick')],
    ])
    .register()

// Dark Steel Upgrade "Pocket Anvil"
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:anvil2']))
    .shape([
        [null, null, ore('blockDarkSteel')],
        [null, null, item('minecraft:stick')],
        [item('enderio:item_dark_steel_upgrade'), item('enderio:block_dark_steel_anvil'), item('minecraft:stick')],
    ])
    .register()

// Dark Steel Upgrade "Carpeting"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:carpet']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:carpet', 32767))
    .register()

// Dark Steel Upgrade "Depth"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:depth']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:skull', 4))
    .register()

// Dark Steel Upgrade "Direct"
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:direct']))
    .shape([
        [metaitem('nuggetVibrantAlloy'), metaitem('plateVibrantAlloy'), metaitem('nuggetVibrantAlloy')],
        [metaitem('plateVibrantAlloy'), ore('enderpearl'), metaitem('plateVibrantAlloy')],
        [metaitem('nuggetVibrantAlloy'), item('enderio:item_dark_steel_upgrade'), metaitem('nuggetVibrantAlloy')],
    ])
    .register()

// Dark Steel Upgrade "Elytra"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:elytra']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:elytra'))
    .register()

// Dark Steel Upgrade "Empowered lv1"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:energyupgrade']))
    .input(item('enderio:item_dark_steel_upgrade'), ore('itemVibrantCrystal'))
    .register()

// Dark Steel Upgrade "Empowered lv2"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:energyupgrade1']))
    .input(item('enderio:item_dark_steel_upgrade'), item('enderio:item_basic_capacitor'))
    .register()

// Dark Steel Upgrade "Empowered lv3"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:energyupgrade2']))
    .input(item('enderio:item_dark_steel_upgrade'), item('enderio:item_basic_capacitor', 1))
    .register()

// Dark Steel Upgrade "Empowered lv4"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:energyupgrade3']))
    .input(item('enderio:item_dark_steel_upgrade'), item('enderio:item_basic_capacitor', 2))
    .register()

// Dark Steel Upgrade "Empowered lv5"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:energyupgrade4']))
    .input(item('enderio:item_dark_steel_upgrade'), ore('skullEnderResonator'))
    .register()

// Dark Steel Upgrade "Glider"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:glide']))
    .input(item('enderio:item_dark_steel_upgrade'), item('enderio:item_material', 7))
    .register()

// Dark Steel Upgrade "Fork"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:hoe']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:golden_hoe'))
    .register()

// Dark Steel Upgrade "Inventory lv1"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:inv']))
    .input(item('enderio:item_dark_steel_upgrade'), ore('chestWood'), metaitem('gearWood'))
    .register()

// Dark Steel Upgrade "Inventory lv2"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:inv1']))
    .input(item('enderio:item_dark_steel_upgrade'), ore('chestWood'), metaitem('gearEnergeticAlloy'))
    .register()

// Dark Steel Upgrade "Inventory lv3"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:inv2']))
    .input(item('enderio:item_dark_steel_upgrade'), ore('chestWood'), metaitem('gearVibrantAlloy'))
    .register()

// Dark Steel Upgrade "Jump lv1"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:jumpboost1']))
    .input(item('enderio:item_dark_steel_upgrade'), ore('craftingPiston'), metaitem('gearWood'))
    .register()

// Dark Steel Upgrade "Jump lv2"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:jumpboost2']))
    .input(item('enderio:item_dark_steel_upgrade'), ore('craftingPiston'), metaitem('gearEnergeticAlloy'))
    .register()

// Dark Steel Upgrade "Jump lv3"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:jumpboost3']))
    .input(item('enderio:item_dark_steel_upgrade'), ore('craftingPiston'), metaitem('gearVibrantAlloy'))
    .register()

// Dark Steel Upgrade "Night Vision"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:nightvision']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:potion').withNbt([Potion : 'minecraft:night_vision']))
    .register()

// Dark Steel Upgrade "Padding"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:padding']))
    .input(item('enderio:item_dark_steel_upgrade'), ore('wool'))
    .register()

// Dark Steel Upgrade(XP) "Solars"
mods.jei.ingredient.hide(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderiomachines:solar']))
mods.jei.ingredient.hide(
    item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderiomachines:solar', 'enderio:enabled' : 1 as byte])
)
mods.jei.ingredient.hide(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderiomachines:solar1']))
mods.jei.ingredient.hide(
    item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderiomachines:solar1', 'enderio:enabled' : 1 as byte])
)
mods.jei.ingredient.hide(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderiomachines:solar2']))
mods.jei.ingredient.hide(
    item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderiomachines:solar2', 'enderio:enabled' : 1 as byte])
)
mods.jei.ingredient.hide(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderiomachines:solar3']))
mods.jei.ingredient.hide(
    item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderiomachines:solar3', 'enderio:enabled' : 1 as byte])
)

// Dark Steel Upgrade "Sound Locator"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:sounddetector']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:noteblock'))
    .register()

// Dark Steel Upgrade "Speed lv1"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:speedboost1']))
    .input(
        item('enderio:item_dark_steel_upgrade'),
        item('minecraft:potion').withNbt([Potion : 'minecraft:long_swiftness']),
        metaitem('gearWood')
    )
    .register()

// Dark Steel Upgrade "Speed lv2"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:speedboost2']))
    .input(
        item('enderio:item_dark_steel_upgrade'),
        item('minecraft:potion').withNbt([Potion : 'minecraft:long_swiftness']),
        metaitem('gearEnergeticAlloy')
    )
    .register()

// Dark Steel Upgrade "Speed lv3"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:speedboost3']))
    .input(
        item('enderio:item_dark_steel_upgrade'),
        item('minecraft:potion').withNbt([Potion : 'minecraft:long_swiftness']),
        metaitem('gearVibrantAlloy')
    )
    .register()

// Dark Steel Upgrade "Spoon"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:spoon']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:golden_shovel'))
    .register()

// Dark Steel Upgrade "Step Assist"
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:step_assist']))
    .shape([
        [null, null, item('minecraft:brick')],
        [null, item('minecraft:brick'), item('minecraft:brick')],
        [item('minecraft:brick'), item('minecraft:brick'), item('enderio:item_dark_steel_upgrade')],
    ])
    .register()

// Dark Steel Upgrade "Flippers"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:swim']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:waterlily'))
    .register()

// Dark Steel Upgrade "Explosive lv1"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:tnt']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:tnt'), metaitem('gearWood'))
    .register()

// Dark Steel Upgrade "Explosive lv2"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:tnt1']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:tnt'), metaitem('gearStone'))
    .register()

// Dark Steel Upgrade "Explosive lv3"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:tnt2']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:tnt'), metaitem('gearElectricalSteel'))
    .register()

// Dark Steel Upgrade "Explosive lv4"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:tnt3']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:tnt'), metaitem('gearEnergeticAlloy'))
    .register()

// Dark Steel Upgrade "Explosive lv5"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:tnt4']))
    .input(item('enderio:item_dark_steel_upgrade'), item('minecraft:tnt'), metaitem('gearVibrantAlloy'))
    .register()

// Dark Steel Upgrade "The One Probe"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:top']))
    .input(item('enderio:item_dark_steel_upgrade'), item('theoneprobe:probe'))
    .register()

// Dark Steel Upgrade "Travel"
mods.minecraft.crafting.shapelessBuilder()
    .output(item('enderio:item_dark_steel_upgrade', 1).withNbt(['enderio:dsu' : 'enderio:travel']))
    .input(item('enderio:item_dark_steel_upgrade'), ore('itemEnderCrystal'))
    .register()

// Extract Speed Upgrade
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_extract_speed_upgrade'))
    .shape([
        [metaitem('plateConstructionAlloy'), metaitem('plateConstructionAlloy'), metaitem('plateConstructionAlloy')],
        [metaitem('plateElectricalSteel'), item('minecraft:piston'), metaitem('plateElectricalSteel')],
        [metaitem('plateElectricalSteel'), item('enderio:item_dark_steel_upgrade'), metaitem('plateElectricalSteel')],
    ])
    .register()

// Extract Speed Downgrade
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_extract_speed_downgrade'))
    .shape([
        [metaitem('plateConstructionAlloy'), metaitem('plateConstructionAlloy'), metaitem('plateConstructionAlloy')],
        [metaitem('plateElectricalSteel'), item('minecraft:sticky_piston'), metaitem('plateElectricalSteel')],
        [metaitem('plateElectricalSteel'), item('enderio:item_dark_steel_upgrade'), metaitem('plateElectricalSteel')],
    ])
    .register()
