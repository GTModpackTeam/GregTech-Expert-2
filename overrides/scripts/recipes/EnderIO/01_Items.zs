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



# Conduit Facade
recipes.addShaped(<enderio:item_conduit_facade>, [
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:itemConduitBinder>, null, <ore:itemConduitBinder>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);

# Hardened Conduit Facade
recipes.addShaped(<enderio:item_conduit_facade:1>, [
    [null, <ore:dustObsidian>, null],
    [<ore:dustObsidian>, <enderio:item_conduit_facade>, <ore:dustObsidian>],
    [null, <ore:dustObsidian>, null]
]);

# Transparent Conduit Facade
recipes.addShaped(<enderio:item_conduit_facade:2>, [
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:itemConduitBinder>, <enderio:block_fused_glass:*>, <ore:itemConduitBinder>], [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
recipes.addShapeless(<enderio:item_conduit_facade:2>, [
    <enderio:item_conduit_facade>,<enderio:block_fused_glass:*>
]);

# Transparent Hardened Conduit
recipes.addShaped(<enderio:item_conduit_facade:3>, [
    [null, <ore:dustObsidian>, null],
    [<ore:dustObsidian>, <enderio:item_conduit_facade:*>, <ore:dustObsidian>],
    [null, <ore:dustObsidian>, null]
]);
recipes.addShapeless(<enderio:item_conduit_facade:3>, [
    <enderio:item_conduit_facade:1>,<enderio:block_fused_glass:*>
]);

# Conduit Probe
recipes.addShaped(<enderio:item_conduit_probe>, [
    [<ore:nuggetElectricalSteel>, null, <ore:nuggetElectricalSteel>],
    [<ore:ingotConstructionAlloy>, <enderio:item_yeta_wrench>, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, <ore:dustBedrock>, <ore:ingotConstructionAlloy>]
]);

# Yeta Wrench
recipes.addShaped(<enderio:item_yeta_wrench>, [
    [<ore:ingotElectricalSteel>, null, <ore:ingotElectricalSteel>],
    [null, <ore:gearStone>, null],
    [null, <ore:ingotElectricalSteel>, null]
]);

# Experience Rod
recipes.addShaped(<enderio:item_xp_transfer>, [
    [null, null, <ore:ingotSoularium>],
    [null, <ore:ingotEnergeticAlloy>, null],
    [<ore:ingotSoularium>, null, null]
]);

# Cold Fire Igniter

# Coordinate Selctor
recipes.addShaped(<enderio:item_coord_selector>, [
    [<ore:ingotElectricalSteel>, <ore:enderpearl>, <ore:ingotElectricalSteel>],
    [null, <minecraft:compass>, <ore:ingotElectricalSteel>],
    [null, null, <ore:ingotElectricalSteel>]
]);

# Staff of Traveling
recipes.addShaped(<enderio:item_travel_staff>, [
    [null, null, <ore:itemEnderCrystal>],
    [null, <ore:stickSteel>, null],
    [<ore:stickSteel>, null, null]
]);

# Rod of Return
recipes.addShaped(<enderio:item_rod_of_return>, [
    [null, <ore:itemPulsatingCrystal>, <ore:itemEnderCrystal>],
    [null, <ore:stickSteel>, <ore:itemPulsatingCrystal>],
    [<ore:stickSteel>, null, null]
]);

# Electromagnet
// recipes.addShaped(<enderio:item_magnet>, [
//     [<ore:ingotRedAlloy>, <ore:gemEmerald>, <ore:ingotRedAlloy>],
//     [<ore:ingotRedAlloy>, null, <ore:ingotRedAlloy>],
//     [<ore:ingotSteel>, null, <ore:ingotSteel>]
// ]);

# Enderios
recipes.addShaped(<enderio:item_ender_food>, [
    [<minecraft:bowl>, <minecraft:milk_bucket>, null],
    [<minecraft:wheat>, <ore:dustEnderPearl>, null],
    [null, null, null]
]);

# Basic Item Filter
recipes.addShaped(<enderio:item_basic_item_filter>, [
    [null, <ore:paperBlack>, null],
    [<ore:paperBlack>, <ore:blockHopper>, <ore:paperBlack>],
    [null, <ore:paperBlack>, null]
]);

# Advanced Item Filter
recipes.addShaped(<enderio:item_advanced_item_filter>, [
    [<ore:dustRegularRedstone>, <ore:paperBlack>, <ore:dustRegularRedstone>],
    [<ore:paperBlack>, <ore:skullZombieController>, <ore:paperBlack>],
    [<ore:dustRegularRedstone>, <ore:paperBlack>, <ore:dustRegularRedstone>]
]);

# Limited Item Filter
recipes.addShaped(<enderio:item_limited_item_filter>, [
    [null, null, null],
    [<minecraft:comparator>, <ore:skullZombieController>, <minecraft:comparator>],
    [null, null, null]
]);

# Big Item Filter
recipes.addShaped(<enderio:item_big_item_filter>, [
    [<ore:dustObsidian>, <ore:paperBlack>, <ore:dustObsidian>],
    [<ore:paperBlack>, <ore:skullSkeletalContractor>, <ore:paperBlack>],
    [<ore:dustObsidian>, <ore:paperBlack>, <ore:dustObsidian>]
]);

# Advanced Big Item Filter
recipes.addShaped(<enderio:item_big_advanced_item_filter>, [
    [null, <minecraft:shulker_shell>, null],
    [null, <enderio:item_advanced_item_filter>, null],
    [null, <minecraft:shulker_shell>, null]
]);

# Big Soul Item Filter
for mob in entitieMobs {
    SoulBinder.addRecipe(<enderio:item_soul_filter_big>, <enderio:item_big_item_filter>, [mob], 5000000, 12);
}

# Big Enchantment Item Filter
recipes.addShapeless(<enderio:item_enchantment_filter_big>, [
    <enderio:item_big_item_filter>, <minecraft:enchanted_book>
]);

# Existing Item Filter
recipes.addShaped(<enderio:item_existing_item_filter>, [
    [null, <ore:dustRegularRedstone>, null],
    [<ore:dustRegularRedstone>, <enderio:item_advanced_item_filter>, <ore:dustRegularRedstone>],
    [null, <minecraft:comparator>, null]
]);

# Mod Item Filter
recipes.addShaped(<enderio:item_mod_item_filter>, [
    [null, <ore:paperBlack>, null],
    [<ore:paperBlack>, <enderio:item_yeta_wrench>, <ore:paperBlack>],
    [null, <ore:paperBlack>, null]
]);

# Power Item Filter
recipes.addShaped(<enderio:item_power_item_filter>, [
    [null, <ore:paperBlack>, null],
    [<ore:paperBlack>, <enderio:item_conduit_probe>, <ore:paperBlack>],
    [null, <ore:paperBlack>, null]
]);

# Soul Item Filter
for mob in entitieMobs {
    SoulBinder.addRecipe(<enderio:item_soul_filter_normal>, <enderio:item_basic_item_filter>, [mob], 5000000, 12);
}

# Enchantment Item Filter
recipes.addShapeless(<enderio:item_enchantment_filter_normal>, [
    <enderio:item_basic_item_filter>, <minecraft:enchanted_book>
]);

# Basic Fluid Filter
recipes.addShaped(<enderio:item_fluid_filter>, [
    [null, <ore:paperBlack>, null],
    [<ore:paperBlack>, <minecraft:bucket>, <ore:paperBlack>],
    [null, <ore:paperBlack>, null]
]);

# Redstone Filter Base
recipes.addShaped(<enderio:item_material:60>, [
    [<ore:ingotRedstoneAlloy>, <ore:paperBlack>, <ore:ingotRedstoneAlloy>],
    [<ore:paperBlack>, <ore:ingotConstructionAlloy>, <ore:paperBlack>],
    [<ore:ingotRedstoneAlloy>, <ore:paperBlack>, <ore:ingotRedstoneAlloy>]
]);

# Redstone NOT Filter
recipes.addShaped(<enderio:item_redstone_not_filter>, [
    [null, null, null],
    [<ore:craftingRedstoneTorch>, <ore:itemRedstoneFilterBase>, <ore:ingotRedstoneAlloy>],
    [null, null, null]
]);

# Redstone OR Filter
recipes.addShaped(<enderio:item_redstone_or_filter>, [
    [null, <ore:ingotRedstoneAlloy>, null],
    [null, <ore:itemRedstoneFilterBase>, null],
    [null, <ore:ingotRedstoneAlloy>, null]
]);
recipes.addShapeless(<enderio:item_redstone_or_filter>, [
    <ore:craftingRedstoneTorch>, <enderio:item_redstone_nor_filter>
]);

# Redstone AND Filter
recipes.addShaped(<enderio:item_redstone_and_filter>, [
    [null, <ore:craftingRedstoneTorch>, null],
    [null, <ore:itemRedstoneFilterBase>, null],
    [null, <ore:craftingRedstoneTorch>, null]
]);
recipes.addShapeless(<enderio:item_redstone_and_filter>, [
    <ore:craftingRedstoneTorch>, <enderio:item_redstone_nand_filter>
]);

# Redstone NOR Filter
recipes.addShapeless(<enderio:item_redstone_nor_filter>, [
    <ore:craftingRedstoneTorch>, <enderio:item_redstone_or_filter>
]);

# Redstone NAND Filter
recipes.addShapeless(<enderio:item_redstone_nand_filter>, [
    <ore:craftingRedstoneTorch>,<enderio:item_redstone_and_filter>
]);

# Redstone NOR Filter
recipes.addShaped(<enderio:item_redstone_xor_filter>, [
    [null, <ore:craftingRedstoneTorch>, null],
    [<ore:ingotRedstoneAlloy>, <ore:itemRedstoneFilterBase>, <ore:ingotRedstoneAlloy>],
    [null, <ore:craftingRedstoneTorch>, null]
]);
recipes.addShapeless(<enderio:item_redstone_xor_filter>, [
    <ore:craftingRedstoneTorch>,<enderio:item_redstone_xnor_filter>
]);

# Redstone XNOR Filter
recipes.addShapeless(<enderio:item_redstone_xnor_filter>, [
    <ore:craftingRedstoneTorch>,<enderio:item_redstone_xor_filter>
]);

# Redstone Toggle Latch Filter
recipes.addShaped(<enderio:item_redstone_toggle_filter>, [
    [null, null, null],
    [<minecraft:lever>, <ore:itemRedstoneFilterBase>, <ore:ingotRedstoneAlloy>],
    [null, null, null]
]);

# Redstone Counting Filter
recipes.addShaped(<enderio:item_redstone_counting_filter>, [
    [<ore:ingotRedstoneAlloy>, null, null],
    [<ore:ingotRedstoneAlloy>, <ore:itemRedstoneFilterBase>, <ore:ingotRedstoneAlloy>],
    [<ore:ingotRedstoneAlloy>, null, null]
]);

# Redstone Senor Filter
recipes.addShaped(<enderio:item_redstone_sensor_filter>, [
    [null, null, null],
    [<minecraft:comparator>, <ore:itemRedstoneFilterBase>, <ore:ingotRedstoneAlloy>],
    [null, null, null]
]);

# Redstone Timer Filter
recipes.addShaped(<enderio:item_redstone_timer_filter>, [
    [null, null, null],
    [<ore:ingotRedstoneAlloy>, <ore:itemRedstoneFilterBase>, <minecraft:clock>],
    [null, null, null]
]);

# Soul Vial
recipes.addShaped(<enderio:item_soul_vial>, [
    [null, <ore:ingotSoularium>, null],
    [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>],
    [null, <enderio:block_fused_quartz:*>, null]
]);

# Dark Armors
recipes.addShaped(<enderio:item_dark_steel_helmet>, [
    [null, null, null],
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>]
]);
recipes.addShaped(<enderio:item_dark_steel_chestplate>, [
    [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>]
]);
recipes.addShaped(<enderio:item_dark_steel_leggings>, [
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>]
]);
recipes.addShaped(<enderio:item_dark_steel_boots>, [
    [null, null, null],
    [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>]
]);

# Dark Shield
recipes.addShaped(<enderio:item_dark_steel_shield>, [
    [<ore:ingotDarkSteel>, <ore:ingotConstructionAlloy>, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>],
    [null, <ore:ingotDarkSteel>, null]
]);

# The Ender
recipes.addShaped(<enderio:item_dark_steel_sword>, [[null, <ore:ingotDarkSteel>, null],[null, <ore:ingotDarkSteel>, null], [null, <ore:stickSteel>, null]]);

# Dark Pick
recipes.addShaped(<enderio:item_dark_steel_pickaxe>, [
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
    [null, <ore:stickSteel>, null],
    [null, <ore:stickSteel>, null]
]);

# Dark Axe
recipes.addShaped(<enderio:item_dark_steel_axe>, [
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null],
    [<ore:ingotDarkSteel>, <ore:stickSteel>, null],
    [null, <ore:stickSteel>, null]
]);

# Dark Bow
recipes.addShaped(<enderio:item_dark_steel_shears>, [
    [null, <ore:ingotDarkSteel>, null],
    [<ore:ingotDarkSteel>, null, null],
    [null, null, null]
]);

# Dark Crook
recipes.addShaped(<enderio:item_dark_steel_crook>, [
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:stickSteel>],
    [null, null, <ore:stickSteel>],
    [null, null, <ore:stickSteel>]
]);

# Dark Backhoe
recipes.addShaped(<enderio:item_dark_steel_hand>, [
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, <minecraft:diamond_hoe>, <ore:ingotDarkSteel>],
    [<ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>]
]);

# Vibrant Inventory Charger
recipes.addShaped(<enderio:item_inventory_charger_vibrant>, [
    [<ore:ingotDarkSteel>, <ore:ingotElectricalSteel>, <ore:ingotDarkSteel>],
    [<ore:itemWirelessDish>, <ore:skullEnderResonator>, <ore:itemWirelessDish>],
    [<ore:ingotDarkSteel>, <enderio:block_cap_bank:3>, <ore:ingotDarkSteel>]
]);

# The Ender Mk2
recipes.addShaped(<enderio:item_end_steel_sword>, [
    [null, <ore:ingotEndSteel>, null],
    [null, <ore:ingotEndSteel>, null],
    [null, <ore:stickSteel>, null]
]);

# Ender Pickaxe
recipes.addShaped(<enderio:item_end_steel_pickaxe>, [
    [<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>],
    [null, <ore:stickSteel>, null],
    [null, <ore:stickSteel>, null]
]);

# Ender Axe
recipes.addShaped(<enderio:item_end_steel_axe>, [
    [<ore:ingotEndSteel>, <ore:ingotEndSteel>, null],
    [<ore:ingotEndSteel>, <ore:stickSteel>, null],
    [null, <ore:stickSteel>, null]
]);

# Ender Bow
recipes.addShaped(<enderio:item_end_steel_bow>, [
    [null, <ore:stickSteel>, <ore:string>],
    [<ore:skullSkeletalContractor>, null, <ore:string>],
    [null, <ore:stickSteel>, <ore:string>]
]);

# Ender Armors
recipes.addShaped(<enderio:item_end_steel_helmet>, [
    [null, null, null],
    [<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>],
    [<ore:ingotEndSteel>, <ore:skullGuardianDiode>, <ore:ingotEndSteel>]
]);
recipes.addShaped(<enderio:item_end_steel_chestplate>, [
    [<ore:ingotEndSteel>, <ore:skullGuardianDiode>, <ore:ingotEndSteel>],
    [<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>],
    [<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>]
]);
recipes.addShaped(<enderio:item_end_steel_leggings>, [
    [<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>],
    [<ore:ingotEndSteel>, <ore:skullGuardianDiode>, <ore:ingotEndSteel>],
    [<ore:ingotEndSteel>, null, <ore:ingotEndSteel>]
]);
recipes.addShaped(<enderio:item_end_steel_boots>, [
    [null, null, null],
    [<ore:ingotEndSteel>, <ore:skullGuardianDiode>, <ore:ingotEndSteel>],
    [<ore:ingotEndSteel>, null, <ore:ingotEndSteel>]
]);

# Ender Shield
recipes.addShaped(<enderio:item_end_steel_shield>, [
    [<ore:ingotEndSteel>, <ore:skullGuardianDiode>, <ore:ingotEndSteel>],
    [<ore:ingotEndSteel>, null, <ore:ingotEndSteel>],
    [null, <ore:ingotEndSteel>, null]
]);

# Staff of Levity
recipes.addShaped(<enderio:item_staff_of_levity>, [
    [null, null, <ore:itemPrecientCrystal>],
    [null, <ore:stickSteel>, null],
    [<ore:stickSteel>, null, null]
]);

# The Ender Mark IV
recipes.addShaped(<enderio:item_stellar_alloy_sword>, [
    [null, <ore:ingotStellarAlloy>, null],
    [null, <ore:ingotStellarAlloy>, null],
    [null, <ore:skullSentientEnder>, null]
]);

# Stellar Pickaxe
recipes.addShaped(<enderio:item_stellar_alloy_pickaxe>, [
    [<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>],
    [null, <ore:skullSentientEnder>, null],
    [null, <ore:stickSteel>, null]
]);

# Stellar Axe
recipes.addShaped(<enderio:item_stellar_alloy_axe>, [
    [<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, null],
    [<ore:ingotStellarAlloy>, <ore:skullSentientEnder>, null],
    [null, <ore:stickSteel>, null]
]);

# Stellar Armors
recipes.addShaped(<enderio:item_stellar_alloy_helmet>, [
    [null, null, null],
    [<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>],
    [<ore:ingotStellarAlloy>, <ore:skullSentientEnder>, <ore:ingotStellarAlloy>]
]);
recipes.addShaped(<enderio:item_stellar_alloy_chestplate>, [
    [<ore:ingotStellarAlloy>, <ore:skullSentientEnder>, <ore:ingotStellarAlloy>],
    [<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>],
    [<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>]
]);
recipes.addShaped(<enderio:item_stellar_alloy_leggings>, [
    [<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>],
    [<ore:ingotStellarAlloy>, <ore:skullSentientEnder>, <ore:ingotStellarAlloy>],
    [<ore:ingotStellarAlloy>, null, <ore:ingotStellarAlloy>]
]);
recipes.addShaped(<enderio:item_stellar_alloy_leggings>, [
    [null, null, null],
    [<ore:ingotStellarAlloy>, <ore:skullSentientEnder>, <ore:ingotStellarAlloy>],
    [<ore:ingotStellarAlloy>, null, <ore:ingotStellarAlloy>]
]);

# Simple Inventory Charger
recipes.addShaped(<enderio:item_inventory_charger_simple>, [
    [<ore:nuggetDarkSteel>, <ore:ingotConductiveIron>, <ore:nuggetDarkSteel>],
    [<ore:ingotConductiveIron>, <enderio:item_capacitor_silver>, <ore:ingotConductiveIron>],
    [<ore:nuggetDarkSteel>, <ore:ingotConductiveIron>, <ore:nuggetDarkSteel>]
]);

# Basic Inventory Charger
recipes.addShaped(<enderio:item_inventory_charger_basic>, [[<ore:ingotDarkSteel>, <ore:ingotElectricalSteel>, <ore:ingotDarkSteel>],[<ore:itemWirelessDish>, <ore:skullEnderResonator>, <ore:itemWirelessDish>], [<ore:ingotDarkSteel>, <enderio:block_cap_bank:1>, <ore:ingotDarkSteel>]]);

# Inventory Charger
recipes.addShaped(<enderio:item_inventory_charger>, [
    [<ore:ingotDarkSteel>, <ore:ingotElectricalSteel>, <ore:ingotDarkSteel>],
    [<ore:itemWirelessDish>, <ore:skullEnderResonator>, <ore:itemWirelessDish>],
    [<ore:ingotDarkSteel>, <enderio:block_cap_bank:2>, <ore:ingotDarkSteel>]
]);









