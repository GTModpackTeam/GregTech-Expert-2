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
    <enderio:item_conduit_facade>, <enderio:block_fused_glass:*>
]);

# Transparent Hardened Conduit
recipes.addShaped(<enderio:item_conduit_facade:3>, [
    [null, <ore:dustObsidian>, null],
    [<ore:dustObsidian>, <enderio:item_conduit_facade:*>, <ore:dustObsidian>],
    [null, <ore:dustObsidian>, null]
]);
recipes.addShapeless(<enderio:item_conduit_facade:3>, [
    <enderio:item_conduit_facade:1>, <enderio:block_fused_glass:*>
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
JEI.removeAndHide(<enderio:item_cold_fire_igniter>);

# Coordinate Selctor
recipes.addShaped(<enderio:item_coord_selector>, [
    [<ore:ingotElectricalSteel>, <ore:enderpearl>, <ore:ingotElectricalSteel>],
    [null, <minecraft:compass>, <ore:ingotElectricalSteel>],
    [null, null, <ore:ingotElectricalSteel>]
]);

# Staff of Traveling
recipes.addShaped(<enderio:item_travel_staff>, [
    [null, null, <ore:itemEnderCrystal>],
    [null, <ore:stickDarkSteel>, null],
    [<ore:stickDarkSteel>, null, null]
]);

# Rod of Return
recipes.addShaped(<enderio:item_rod_of_return>, [
    [null, <ore:itemPulsatingCrystal>, <ore:itemEnderCrystal>],
    [null, <ore:stickDarkSteel>, <ore:itemPulsatingCrystal>],
    [<ore:stickDarkSteel>, null, null]
]);

# Electromagnet
JEI.removeAndHide(<enderio:item_magnet>);
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
    [<ore:paperBlack>, <ore:ingotIron>, <ore:paperBlack>],
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
    <ore:craftingRedstoneTorch>, <enderio:item_redstone_and_filter>
]);

# Redstone NOR Filter
recipes.addShaped(<enderio:item_redstone_xor_filter>, [
    [null, <ore:craftingRedstoneTorch>, null],
    [<ore:ingotRedstoneAlloy>, <ore:itemRedstoneFilterBase>, <ore:ingotRedstoneAlloy>],
    [null, <ore:craftingRedstoneTorch>, null]
]);
recipes.addShapeless(<enderio:item_redstone_xor_filter>, [
    <ore:craftingRedstoneTorch>, <enderio:item_redstone_xnor_filter>
]);

# Redstone XNOR Filter
recipes.addShapeless(<enderio:item_redstone_xnor_filter>, [
    <ore:craftingRedstoneTorch>, <enderio:item_redstone_xor_filter>
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
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:gtce.tool.hard.hammers>, <ore:plateDarkSteel>]
]);
recipes.addShaped(<enderio:item_dark_steel_chestplate>, [
    [<ore:plateDarkSteel>, <ore:gtce.tool.hard.hammers>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>]
]);
recipes.addShaped(<enderio:item_dark_steel_leggings>, [
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:gtce.tool.hard.hammers>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, null, <ore:plateDarkSteel>]
]);
recipes.addShaped(<enderio:item_dark_steel_boots>, [
    [null, null, null],
    [<ore:plateDarkSteel>, null, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:gtce.tool.hard.hammers>, <ore:plateDarkSteel>]
]);

# Dark Shield
recipes.addShaped(<enderio:item_dark_steel_shield>, [
    [<ore:boltDarkSteel>, <ore:stickDarkSteel>, <ore:boltDarkSteel>],
    [<ore:stickLongDarkSteel>, <ore:plateDarkSteel>, <ore:stickLongDarkSteel>],
    [<ore:boltDarkSteel>, <ore:stickDarkSteel>, <ore:boltDarkSteel>]
]);

# The Ender
recipes.addShaped(<enderio:item_dark_steel_sword>, [
    [null, <ore:plateDarkSteel>, null],
    [<ore:gtce.tool.files>, <ore:plateDarkSteel>, <ore:gtce.tool.hard.hammers>],
    [null, <ore:stickDarkSteel>, null]
]);

# Dark Pick
recipes.addShaped(<enderio:item_dark_steel_pickaxe>, [
    [<ore:plateDarkSteel>, <ore:ingotDarkSteel>, <ore:gtce.tool.hard.hammers>],
    [<ore:gtce.tool.files>, <ore:stickDarkSteel>, null],
    [null, <ore:stickDarkSteel>, null]
]);

# Dark Axe
recipes.addShaped(<enderio:item_dark_steel_axe>, [
    [<ore:plateDarkSteel>, <ore:ingotDarkSteel>, <ore:gtce.tool.hard.hammers>],
    [<ore:plateDarkSteel>, <ore:stickDarkSteel>, null],
    [<ore:gtce.tool.files>, <ore:stickDarkSteel>, null]
]);

# Dark Bow
recipes.addShaped(<enderio:item_dark_steel_bow>, [
    [<ore:gtce.tool.hard.hammers>, <ore:stickLongDarkSteel>, <ore:string>],
    [<ore:stickLongDarkSteel>, <ore:ringDarkSteel>, <ore:string>],
    [<ore:gtce.tool.files>, <ore:stickLongDarkSteel>, <ore:string>]
]);

# Dark Shears
recipes.addShaped(<enderio:item_dark_steel_shears>, [
    [<ore:plateDarkSteel>, <ore:screwDarkSteel>, <ore:plateDarkSteel>],
    [<ore:gtce.tool.hard.hammers>, <ore:ringDarkSteel>, <ore:gtce.tool.files>],
    [<ore:stickDarkSteel>, <ore:gtce.tool.screwdrivers>, <ore:stickDarkSteel>]
]);

# Dark Crook
recipes.addShaped(<enderio:item_dark_steel_crook>, [
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:stickLongDarkSteel>],
    [<ore:gtce.tool.screwdrivers>, <ore:gtce.tool.hard.hammers>, <ore:stickLongDarkSteel>],
    [null, <ore:gtce.tool.files>, <ore:stickLongDarkSteel>]
]);

# Dark Backhoe
recipes.addShaped(<enderio:item_dark_steel_hand>, [
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <minecraft:diamond_hoe>, <ore:plateDarkSteel>],
    [<ore:gtce.tool.screwdrivers>, <ore:gtce.tool.hard.hammers>, <ore:gtce.tool.files>]
]);

# Vibrant Inventory Charger
recipes.addShaped(<enderio:item_inventory_charger_vibrant>, [
    [<ore:ingotDarkSteel>, <ore:ingotElectricalSteel>, <ore:ingotDarkSteel>],
    [<ore:itemWirelessDish>, <ore:skullEnderResonator>, <ore:itemWirelessDish>],
    [<ore:ingotDarkSteel>, <enderio:block_cap_bank:3>, <ore:ingotDarkSteel>]
]);

# The Ender Mk2
recipes.addShaped(<enderio:item_end_steel_sword>, [
    [null, <ore:plateEndSteel>, null],
    [<ore:gtce.tool.files>, <ore:plateEndSteel>, <ore:gtce.tool.hard.hammers>],
    [null, <ore:stickEndSteel>, null]
]);

# Ender Pickaxe
recipes.addShaped(<enderio:item_end_steel_pickaxe>, [
    [<ore:plateEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>],
    [<ore:gtce.tool.files>, <ore:stickEndSteel>, <ore:gtce.tool.hard.hammers>],
    [null, <ore:stickEndSteel>, null]
]);

# Ender Axe
recipes.addShaped(<enderio:item_end_steel_axe>, [
    [<ore:plateEndSteel>, <ore:ingotEndSteel>, <ore:gtce.tool.hard.hammers>],
    [<ore:plateEndSteel>, <ore:stickEndSteel>, null],
    [<ore:gtce.tool.files>, <ore:stickEndSteel>, null]
]);

# Ender Bow
recipes.addShaped(<enderio:item_end_steel_bow>, [
    [<ore:gtce.tool.hard.hammers>, <ore:stickLongEndSteel>, <ore:string>],
    [<ore:stickLongEndSteel>, <ore:ringEndSteel>, <ore:string>],
    [<ore:gtce.tool.files>, <ore:stickLongEndSteel>, <ore:string>]
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
    [<ore:plateEndSteel>, <ore:screwEndSteel>, <ore:plateEndSteel>],
    [<ore:gtce.tool.hard.hammers>, <ore:ringEndSteel>, <ore:gtce.tool.files>],
    [<ore:stickEndSteel>, <ore:gtce.tool.screwdrivers>, <ore:stickEndSteel>]
]);

# Staff of Levity
recipes.addShaped(<enderio:item_staff_of_levity>, [
    [null, null, <ore:itemPrecientCrystal>],
    [null, <ore:stickEndSteel>, null],
    [<ore:stickEndSteel>, null, null]
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
recipes.addShaped(<enderio:item_stellar_alloy_boots>, [
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
recipes.addShaped(<enderio:item_inventory_charger_basic>, [
    [<ore:ingotDarkSteel>, <ore:ingotElectricalSteel>, <ore:ingotDarkSteel>],
    [<ore:itemWirelessDish>, <ore:skullEnderResonator>, <ore:itemWirelessDish>],
    [<ore:ingotDarkSteel>, <enderio:block_cap_bank:1>, <ore:ingotDarkSteel>]
]);

# Inventory Charger
recipes.addShaped(<enderio:item_inventory_charger>, [
    [<ore:ingotDarkSteel>, <ore:ingotElectricalSteel>, <ore:ingotDarkSteel>],
    [<ore:itemWirelessDish>, <ore:skullEnderResonator>, <ore:itemWirelessDish>],
    [<ore:ingotDarkSteel>, <enderio:block_cap_bank:2>, <ore:ingotDarkSteel>]
]);

# Blank Dark Steel Upgrade
alloy_smelter.recipeBuilder()
    .inputs([
        <enderio:item_basic_item_filter>,
        <enderio:block_dark_iron_bars>
    ])
    .outputs([<enderio:item_dark_steel_upgrade>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Micro Anvil"
recipes.addShaped(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil"}), [
    [null, <ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>],
    [null, null, <ore:stickWood>],
    [<enderio:item_dark_steel_upgrade>, null, <ore:stickWood>]
]);

# Dark Steel Upgrade(XP) "Micro Anvil"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil"})])
    .fluidInputs([<liquid:xpjuice> * 144])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Mini Anvil"
recipes.addShaped(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil1"}), [
    [null, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
    [null, null, <ore:stickWood>],
    [<enderio:item_dark_steel_upgrade>, null, <ore:stickWood>]
]);

# Dark Steel Upgrade(XP) "Mini Anvil"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil1"})])
    .fluidInputs([<liquid:xpjuice> * 144])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil1", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Pocket Anvil"
recipes.addShaped(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil2"}), [
    [null, null, <ore:blockDarkSteel>],
    [null, null, <ore:stickWood>],
    [<enderio:item_dark_steel_upgrade>, <enderio:block_dark_steel_anvil>, <ore:stickWood>]
]);

# Dark Steel Upgrade(XP) "Pocket Anvil"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil2"})])
    .fluidInputs([<liquid:xpjuice> * 144])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil2", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Carpeting"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:carpet:*>
]);

# Dark Steel Upgrade(XP) "Carpeting"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet"})])
    .fluidInputs([<liquid:xpjuice> * 2240])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Depth"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:skull:4>
]);

# Dark Steel Upgrade(XP) "Depth"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth"})])
    .fluidInputs([<liquid:xpjuice> * 2240])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Direct"
recipes.addShaped(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct"}), [
    [<ore:nuggetVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:nuggetVibrantAlloy>],
    [<ore:ingotVibrantAlloy>, <ore:enderpearl>, <ore:ingotVibrantAlloy>],
    [<ore:nuggetVibrantAlloy>, <enderio:item_dark_steel_upgrade>, <ore:nuggetVibrantAlloy>]
]);

# Dark Steel Upgrade(XP) "Direct"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct"})])
    .fluidInputs([<liquid:xpjuice> * 2240])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Elytra"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:elytra"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:elytra>
]);

# Dark Steel Upgrade(XP) "Elytra"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:elytra"})])
    .fluidInputs([<liquid:xpjuice> * 3200])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:elytra", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Empowered lv1"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade"}), [
    <enderio:item_dark_steel_upgrade>, <ore:itemVibrantCrystal>
]);

# Dark Steel Upgrade(XP) "Empowered lv1"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade"})])
    .fluidInputs([<liquid:xpjuice> * 800])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Empowered lv2"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade1"}), [
    <enderio:item_dark_steel_upgrade>, <enderio:item_basic_capacitor>
]);

# Dark Steel Upgrade(XP) "Empowered lv2"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade1"})])
    .fluidInputs([<liquid:xpjuice> * 2240])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade1", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Empowered lv3"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade2"}), [
    <enderio:item_dark_steel_upgrade>, <enderio:item_basic_capacitor:1>
]);

# Dark Steel Upgrade(XP) "Empowered lv3"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade2"})])
    .fluidInputs([<liquid:xpjuice> * 4320])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade2", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Empowered lv4"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade3"}), [
    <enderio:item_dark_steel_upgrade>, <enderio:item_basic_capacitor:2>
]);

# Dark Steel Upgrade(XP) "Empowered lv4"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade3"})])
    .fluidInputs([<liquid:xpjuice> * 7040])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade3", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Empowered lv5"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4"}), [
    <enderio:item_dark_steel_upgrade>, <ore:skullEnderResonator>
]);

# Dark Steel Upgrade(XP) "Empowered lv5"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4"})])
    .fluidInputs([<liquid:xpjuice> * 11000])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Glider"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide"}), [
    <enderio:item_dark_steel_upgrade>, <enderio:item_material:7>
]);

# Dark Steel Upgrade(XP) "Glider"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide"})])
    .fluidInputs([<liquid:xpjuice> * 800])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Fork"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:golden_hoe>
]);

# Dark Steel Upgrade(XP) "Fork"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe"})])
    .fluidInputs([<liquid:xpjuice> * 800])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Inventory lv1"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv"}), [
    <enderio:item_dark_steel_upgrade>, <ore:chest>, <ore:gearWood>
]);

# Dark Steel Upgrade(XP) "Inventory lv1"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv"})])
    .fluidInputs([<liquid:xpjuice> * 4320])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Inventory lv2"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv1"}), [
    <enderio:item_dark_steel_upgrade>, <ore:chest>, <ore:gearEnergeticAlloySteel>
]);

# Dark Steel Upgrade(XP) "Inventory lv2"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv1"})])
    .fluidInputs([<liquid:xpjuice> * 11000])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv1", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Inventory lv3"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv2"}), [
    <enderio:item_dark_steel_upgrade>, <ore:chest>, <ore:gearVibrantAlloy>
]);

# Dark Steel Upgrade(XP) "Inventory lv3"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv2"})])
    .fluidInputs([<liquid:xpjuice> * 32560])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv2", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Jump lv1"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost1"}), [
    <enderio:item_dark_steel_upgrade>, <ore:craftingPiston>, <ore:gearWood>
]);

# Dark Steel Upgrade(XP) "Jump lv1"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost1"})])
    .fluidInputs([<liquid:xpjuice> * 800])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost1", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Jump lv2"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost2"}), [
    <enderio:item_dark_steel_upgrade>, <ore:craftingPiston>, <ore:gearEnergeticAlloySteel>
]);

# Dark Steel Upgrade(XP) "Jump lv2"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost2"})])
    .fluidInputs([<liquid:xpjuice> * 1440])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost2", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Jump lv3"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost3"}), [
    <enderio:item_dark_steel_upgrade>, <ore:craftingPiston>, <ore:gearVibrantAlloy>
]);

# Dark Steel Upgrade(XP) "Jump lv3"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost3"})])
    .fluidInputs([<liquid:xpjuice> * 2240])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost3", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Night Vision"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:nightvision"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:potion>.withTag({Potion: "minecraft:night_vision"})
]);

# Dark Steel Upgrade(XP) "Night Vision"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:nightvision"})])
    .fluidInputs([<liquid:xpjuice> * 800])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:nightvision", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Padding"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:padding"}), [
    <enderio:item_dark_steel_upgrade>, <ore:wool>
]);

# Dark Steel Upgrade(XP) "Padding"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:padding"})])
    .fluidInputs([<liquid:xpjuice> * 800])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:padding", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade(XP) "Solars"
JEI.removeAndHide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar"}));
JEI.removeAndHide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar", "enderio:enabled": 1 as byte}));
JEI.removeAndHide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar1"}));
JEI.removeAndHide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar1", "enderio:enabled": 1 as byte}));
JEI.removeAndHide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar2"}));
JEI.removeAndHide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar2", "enderio:enabled": 1 as byte}));
JEI.removeAndHide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar3"}));
JEI.removeAndHide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar3", "enderio:enabled": 1 as byte}));

# Dark Steel Upgrade "Sound Locator"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:noteblock>
]);

# Dark Steel Upgrade(XP) "Sound Locator"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector"})])
    .fluidInputs([<liquid:xpjuice> * 800])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Speed lv1"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost1"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"}),<ore:gearWood>
]);

# Dark Steel Upgrade(XP) "Speed lv1"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost1"})])
    .fluidInputs([<liquid:xpjuice> * 800])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost1", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Speed lv2"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost2"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"}),<ore:gearEnergeticAlloySteel>
]);

# Dark Steel Upgrade(XP) "Speed lv2"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost2"})])
    .fluidInputs([<liquid:xpjuice> * 1440])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost2", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Speed lv3"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost3"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"}),<ore:gearVibrantAlloy>
]);

# Dark Steel Upgrade(XP) "Speed lv3"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost3"})])
    .fluidInputs([<liquid:xpjuice> * 2240])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost3", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Spoon"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:golden_shovel>
]);

# Dark Steel Upgrade(XP) "Spoon"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon"})])
    .fluidInputs([<liquid:xpjuice> * 800])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Step Assist"
recipes.addShaped(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:step_assist"}), [
    [null, null, <minecraft:brick>],
    [null, <minecraft:brick>, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:brick>, <enderio:item_dark_steel_upgrade>]
]);

# Dark Steel Upgrade(XP) "Step Assist"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:step_assist"})])
    .fluidInputs([<liquid:xpjuice> * 320])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:step_assist", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Flippers"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:swim"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:waterlily>
]);

# Dark Steel Upgrade(XP) "Flippers"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:swim"})])
    .fluidInputs([<liquid:xpjuice> * 800])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:swim", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Explosive lv1"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearWood>
]);

# Dark Steel Upgrade(XP) "Explosive lv1"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt"})])
    .fluidInputs([<liquid:xpjuice> * 2240])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Explosive lv2"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearStone>
]);

# Dark Steel Upgrade(XP) "Explosive lv2"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1"})])
    .fluidInputs([<liquid:xpjuice> * 4340])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Explosive lv3"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearElectricalSteel>
]);

# Dark Steel Upgrade(XP) "Explosive lv3"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2"})])
    .fluidInputs([<liquid:xpjuice> * 8820])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Explosive lv4"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearEnergeticAlloySteel>
]);

# Dark Steel Upgrade(XP) "Explosive lv4"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3"})])
    .fluidInputs([<liquid:xpjuice> * 19940])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Explosive lv5"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearVibrantAlloy>
]);

# Dark Steel Upgrade(XP) "Explosive lv5"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4"})])
    .fluidInputs([<liquid:xpjuice> * 44040])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "The One Probe"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:top"}), [
    <enderio:item_dark_steel_upgrade>, <theoneprobe:probe>
]);

# Dark Steel Upgrade(XP) "The One Probe"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:top"})])
    .fluidInputs([<liquid:xpjuice> * 800])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:top", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Upgrade "Travel"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel"}), [
    <enderio:item_dark_steel_upgrade>, <ore:itemEnderCrystal>
]);

# Dark Steel Upgrade(XP) "Travel"
assembler.recipeBuilder()
    .inputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel"})])
    .fluidInputs([<liquid:xpjuice> * 7040])
    .outputs([<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel", "enderio:enabled": 1 as byte})])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Extract Speed Upgrade
recipes.addShaped(<enderio:item_extract_speed_upgrade>, [
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>],
    [<ore:ingotElectricalSteel>, <minecraft:piston>, <ore:ingotElectricalSteel>],
    [<ore:ingotElectricalSteel>, <enderio:item_dark_steel_upgrade>, <ore:ingotElectricalSteel>]
]);

# Extract Speed Downgrade
recipes.addShaped(<enderio:item_extract_speed_downgrade>, [
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>],
    [<ore:ingotElectricalSteel>, <minecraft:sticky_piston>, <ore:ingotElectricalSteel>],
    [<ore:ingotElectricalSteel>, <enderio:item_dark_steel_upgrade>, <ore:ingotElectricalSteel>]
]);
