# Imports
import mods.jei.JEI;



# Conduit Facade
recipes.addShaped(<enderio:item_conduit_facade>, [
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:itemConduitBinder>, null, <ore:itemConduitBinder>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);

# Hardened Conduit Facade
recipes.addShaped(<enderio:item_conduit_facade:1>, [
    [null, <metaitem:dustObsidian>, null],
    [<metaitem:dustObsidian>, <enderio:item_conduit_facade>, <metaitem:dustObsidian>],
    [null, <metaitem:dustObsidian>, null]
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
recipes.addShapeless(<enderio:item_conduit_facade:3>, [
    <enderio:item_conduit_facade:1>, <enderio:block_fused_glass:*>
]);

# Conduit Probe
recipes.addShaped(<enderio:item_conduit_probe>, [
    [<metaitem:nuggetElectricalSteel>, null, <metaitem:nuggetElectricalSteel>],
    [<metaitem:plateConstructionAlloy>, <enderio:item_yeta_wrench>, <metaitem:plateConstructionAlloy>],
    [<metaitem:plateConstructionAlloy>, <enderio:item_material:20>, <metaitem:plateConstructionAlloy>]
]);

# Experience Rod
recipes.addShaped(<enderio:item_xp_transfer>, [
    [null, null, <ore:itemVibrantCrystal>],
    [null, <metaitem:stickVibrantAlloy>, null],
    [<metaitem:stickVibrantAlloy>, null, null]
]);

# Cold Fire Igniter
JEI.hide(<enderio:item_cold_fire_igniter>);

# Coordinate Selector
recipes.addShaped(<enderio:item_coord_selector>, [
    [<metaitem:emitter.hv>, <ore:circuitHv>, <metaitem:plateElectricalSteel>],
    [null, <metaitem:gearVibrantAlloy>, <metaitem:plateElectricalSteel>],
    [null, null, <metaitem:plateElectricalSteel>]
]);

# Staff of Traveling
recipes.addShaped(<enderio:item_travel_staff>, [
    [null, null, <ore:itemEnderCrystal>],
    [null, <metaitem:stickDarkSteel>, null],
    [<metaitem:stickDarkSteel>, null, null]
]);

# Rod of Return
recipes.addShaped(<enderio:item_rod_of_return>, [
    [null, <ore:itemPulsatingCrystal>, <ore:itemEnderCrystal>],
    [null, <metaitem:stickDarkSteel>, <ore:itemPulsatingCrystal>],
    [<metaitem:stickDarkSteel>, null, null]
]);

# Electromagnet
JEI.hide(<enderio:item_magnet>);

# Enderios
recipes.addShaped(<enderio:item_ender_food>, [
    [<minecraft:bowl>, <minecraft:milk_bucket>, null],
    [<minecraft:wheat>, <metaitem:dustEnderPearl>, null],
    [null, null, null]
]);

# Basic Item Filter
recipes.addShaped(<enderio:item_basic_item_filter>, [
    [<metaitem:dustElectricalSteel>, <ore:paperBlack>, <metaitem:dustElectricalSteel>],
    [<ore:paperBlack>, <metaitem:item_filter>, <ore:paperBlack>],
    [<metaitem:dustElectricalSteel>, <ore:paperBlack>, <metaitem:dustElectricalSteel>]
]);

# Advanced Item Filter
recipes.addShaped(<enderio:item_advanced_item_filter>, [
    [<metaitem:dustRedstoneAlloy>, <ore:paperBlack>, <metaitem:dustRedstoneAlloy>],
    [<ore:paperBlack>, <metaitem:item_filter>, <ore:paperBlack>],
    [<metaitem:dustRedstoneAlloy>, <ore:paperBlack>, <metaitem:dustRedstoneAlloy>]
]);

# Limited Item Filter
recipes.addShaped(<enderio:item_limited_item_filter>, [
    [null, <ore:skullZombieController>, null],
    [<minecraft:comparator>, <enderio:item_advanced_item_filter>, <minecraft:comparator>],
    [null, null, null]
]);

# Big Item Filter
recipes.addShaped(<enderio:item_big_item_filter>, [
    [<metaitem:dustObsidian>, <ore:paperBlack>, <metaitem:dustObsidian>],
    [<ore:paperBlack>, <ore:skullSkeletalContractor>, <ore:paperBlack>],
    [<metaitem:dustObsidian>, <ore:paperBlack>, <metaitem:dustObsidian>]
]);

# Advanced Big Item Filter
recipes.addShaped(<enderio:item_big_advanced_item_filter>, [
    [null, <minecraft:shulker_shell>, null],
    [null, <enderio:item_advanced_item_filter>, null],
    [null, <minecraft:shulker_shell>, null]
]);

# Big Enchantment Item Filter
recipes.addShapeless(<enderio:item_enchantment_filter_big>, [
    <enderio:item_big_item_filter>, <minecraft:enchanted_book>
]);

# Existing Item Filter
recipes.addShaped(<enderio:item_existing_item_filter>, [
    [null, <metaitem:dustRedstoneAlloy>, null],
    [<metaitem:dustRedstoneAlloy>, <enderio:item_advanced_item_filter>, <metaitem:dustRedstoneAlloy>],
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

# Enchantment Item Filter
recipes.addShapeless(<enderio:item_enchantment_filter_normal>, [
    <enderio:item_basic_item_filter>, <minecraft:enchanted_book>
]);

# Basic Fluid Filter
recipes.addShaped(<enderio:item_fluid_filter>, [
    [<metaitem:dustRedstoneAlloy>, <ore:paperBlack>, <metaitem:dustRedstoneAlloy>],
    [<ore:paperBlack>, <metaitem:fluid_filter>, <ore:paperBlack>],
    [<metaitem:dustRedstoneAlloy>, <ore:paperBlack>, <metaitem:dustRedstoneAlloy>]
]);

# Redstone Filter Base
recipes.addShaped(<enderio:item_material:60>, [
    [<metaitem:plateRedstoneAlloy>, <ore:paperBlack>, <metaitem:plateRedstoneAlloy>],
    [<ore:paperBlack>, <metaitem:plateIron>, <ore:paperBlack>],
    [<metaitem:plateRedstoneAlloy>, <ore:paperBlack>, <metaitem:plateRedstoneAlloy>]
]);

# Redstone NOT Filter
recipes.addShaped(<enderio:item_redstone_not_filter>, [
    [null, null, null],
    [<ore:craftingRedstoneTorch>, <ore:itemRedstoneFilterBase>, <metaitem:plateRedstoneAlloy>],
    [null, null, null]
]);

# Redstone OR Filter
recipes.addShaped(<enderio:item_redstone_or_filter>, [
    [null, <metaitem:plateRedstoneAlloy>, null],
    [null, <ore:itemRedstoneFilterBase>, null],
    [null, <metaitem:plateRedstoneAlloy>, null]
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
    [<metaitem:plateRedstoneAlloy>, <ore:itemRedstoneFilterBase>, <metaitem:plateRedstoneAlloy>],
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
    [<minecraft:lever>, <ore:itemRedstoneFilterBase>, <metaitem:plateRedstoneAlloy>],
    [null, null, null]
]);

# Redstone Counting Filter
recipes.addShaped(<enderio:item_redstone_counting_filter>, [
    [<metaitem:plateRedstoneAlloy>, null, null],
    [<metaitem:plateRedstoneAlloy>, <ore:itemRedstoneFilterBase>, <metaitem:plateRedstoneAlloy>],
    [<metaitem:plateRedstoneAlloy>, null, null]
]);

# Redstone Senor Filter
recipes.addShaped(<enderio:item_redstone_sensor_filter>, [
    [null, null, null],
    [<minecraft:comparator>, <ore:itemRedstoneFilterBase>, <metaitem:plateRedstoneAlloy>],
    [null, null, null]
]);

# Redstone Timer Filter
recipes.addShaped(<enderio:item_redstone_timer_filter>, [
    [null, null, null],
    [<metaitem:plateRedstoneAlloy>, <ore:itemRedstoneFilterBase>, <minecraft:clock>],
    [null, null, null]
]);

# Staff of Levity
recipes.addShaped(<enderio:item_staff_of_levity>, [
    [null, null, <ore:itemPrecientCrystal>],
    [null, <metaitem:stickEndSteel>, null],
    [<metaitem:stickEndSteel>, null, null]
]);

# Simple Inventory Charger
recipes.addShaped(<enderio:item_inventory_charger_simple>, [
    [<metaitem:nuggetDarkSteel>, <metaitem:plateConductiveIron>, <metaitem:nuggetDarkSteel>],
    [<metaitem:plateConductiveIron>, <enderio:item_capacitor_silver>, <metaitem:plateConductiveIron>],
    [<metaitem:nuggetDarkSteel>, <metaitem:plateConductiveIron>, <metaitem:nuggetDarkSteel>]
]);

# Basic Inventory Charger
recipes.addShaped(<enderio:item_inventory_charger_basic>, [
    [<metaitem:plateDarkSteel>, <metaitem:plateElectricalSteel>, <metaitem:plateDarkSteel>],
    [<ore:itemWirelessDish>, <ore:skullZombieElectrode>, <ore:itemWirelessDish>],
    [<metaitem:plateDarkSteel>, <enderio:block_cap_bank:1>, <metaitem:plateDarkSteel>]
]);

# Inventory Charger
recipes.addShaped(<enderio:item_inventory_charger>, [
    [<metaitem:plateDarkSteel>, <metaitem:plateEnergeticAlloy>, <metaitem:plateDarkSteel>],
    [<ore:itemWirelessDish>, <ore:skullEnderResonator>, <ore:itemWirelessDish>],
    [<metaitem:plateDarkSteel>, <enderio:block_cap_bank:2>, <metaitem:plateDarkSteel>]
]);

# Vibrant Inventory Charger
recipes.addShaped(<enderio:item_inventory_charger_vibrant>, [
    [<metaitem:plateDarkSteel>, <metaitem:plateVibrantAlloy>, <metaitem:plateDarkSteel>],
    [<ore:itemWirelessDish>, <ore:skullSentientEnder>, <ore:itemWirelessDish>],
    [<metaitem:plateDarkSteel>, <enderio:block_cap_bank:3>, <metaitem:plateDarkSteel>]
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
    [null, <metaitem:nuggetDarkSteel>, <metaitem:nuggetDarkSteel>],
    [null, null, <minecraft:stick>],
    [<enderio:item_dark_steel_upgrade>, null, <minecraft:stick>]
]);

# Dark Steel Upgrade "Mini Anvil"
recipes.addShaped(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil1"}), [
    [null, <metaitem:plateDarkSteel>, <metaitem:plateDarkSteel>],
    [null, null, <minecraft:stick>],
    [<enderio:item_dark_steel_upgrade>, null, <minecraft:stick>]
]);

# Dark Steel Upgrade "Pocket Anvil"
recipes.addShaped(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil2"}), [
    [null, null, <ore:blockDarkSteel>],
    [null, null, <minecraft:stick>],
    [<enderio:item_dark_steel_upgrade>, <enderio:block_dark_steel_anvil>, <minecraft:stick>]
]);

# Dark Steel Upgrade "Carpeting"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:carpet:*>
]);

# Dark Steel Upgrade "Depth"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:skull:4>
]);

# Dark Steel Upgrade "Direct"
recipes.addShaped(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct"}), [
    [<metaitem:nuggetVibrantAlloy>, <metaitem:plateVibrantAlloy>, <metaitem:nuggetVibrantAlloy>],
    [<metaitem:plateVibrantAlloy>, <ore:enderpearl>, <metaitem:plateVibrantAlloy>],
    [<metaitem:nuggetVibrantAlloy>, <enderio:item_dark_steel_upgrade>, <metaitem:nuggetVibrantAlloy>]
]);

# Dark Steel Upgrade "Elytra"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:elytra"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:elytra>
]);

# Dark Steel Upgrade "Empowered lv1"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade"}), [
    <enderio:item_dark_steel_upgrade>, <ore:itemVibrantCrystal>
]);

# Dark Steel Upgrade "Empowered lv2"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade1"}), [
    <enderio:item_dark_steel_upgrade>, <enderio:item_basic_capacitor>
]);

# Dark Steel Upgrade "Empowered lv3"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade2"}), [
    <enderio:item_dark_steel_upgrade>, <enderio:item_basic_capacitor:1>
]);

# Dark Steel Upgrade "Empowered lv4"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade3"}), [
    <enderio:item_dark_steel_upgrade>, <enderio:item_basic_capacitor:2>
]);

# Dark Steel Upgrade "Empowered lv5"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4"}), [
    <enderio:item_dark_steel_upgrade>, <ore:skullEnderResonator>
]);

# Dark Steel Upgrade "Glider"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide"}), [
    <enderio:item_dark_steel_upgrade>, <enderio:item_material:7>
]);

# Dark Steel Upgrade "Fork"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:golden_hoe>
]);

# Dark Steel Upgrade "Inventory lv1"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv"}), [
    <enderio:item_dark_steel_upgrade>, <ore:chestWood>, <metaitem:gearWood>
]);

# Dark Steel Upgrade "Inventory lv2"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv1"}), [
    <enderio:item_dark_steel_upgrade>, <ore:chestWood>, <metaitem:gearEnergeticAlloy>
]);

# Dark Steel Upgrade "Inventory lv3"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv2"}), [
    <enderio:item_dark_steel_upgrade>, <ore:chestWood>, <metaitem:gearVibrantAlloy>
]);

# Dark Steel Upgrade "Jump lv1"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost1"}), [
    <enderio:item_dark_steel_upgrade>, <ore:craftingPiston>, <metaitem:gearWood>
]);

# Dark Steel Upgrade "Jump lv2"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost2"}), [
    <enderio:item_dark_steel_upgrade>, <ore:craftingPiston>, <metaitem:gearEnergeticAlloy>
]);

# Dark Steel Upgrade "Jump lv3"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost3"}), [
    <enderio:item_dark_steel_upgrade>, <ore:craftingPiston>, <metaitem:gearVibrantAlloy>
]);

# Dark Steel Upgrade "Night Vision"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:nightvision"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:potion>.withTag({Potion: "minecraft:night_vision"})
]);

# Dark Steel Upgrade "Padding"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:padding"}), [
    <enderio:item_dark_steel_upgrade>, <ore:wool>
]);

# Dark Steel Upgrade(XP) "Solars"
JEI.hide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar"}));
JEI.hide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar", "enderio:enabled": 1 as byte}));
JEI.hide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar1"}));
JEI.hide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar1", "enderio:enabled": 1 as byte}));
JEI.hide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar2"}));
JEI.hide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar2", "enderio:enabled": 1 as byte}));
JEI.hide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar3"}));
JEI.hide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar3", "enderio:enabled": 1 as byte}));

# Dark Steel Upgrade "Sound Locator"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:noteblock>
]);

# Dark Steel Upgrade "Speed lv1"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost1"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"}),<metaitem:gearWood>
]);

# Dark Steel Upgrade "Speed lv2"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost2"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"}),<metaitem:gearEnergeticAlloy>
]);

# Dark Steel Upgrade "Speed lv3"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost3"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"}),<metaitem:gearVibrantAlloy>
]);

# Dark Steel Upgrade "Spoon"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:golden_shovel>
]);

# Dark Steel Upgrade "Step Assist"
recipes.addShaped(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:step_assist"}), [
    [null, null, <minecraft:brick>],
    [null, <minecraft:brick>, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:brick>, <enderio:item_dark_steel_upgrade>]
]);

# Dark Steel Upgrade "Flippers"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:swim"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:waterlily>
]);

# Dark Steel Upgrade "Explosive lv1"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <metaitem:gearWood>
]);

# Dark Steel Upgrade "Explosive lv2"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <metaitem:gearStone>
]);

# Dark Steel Upgrade "Explosive lv3"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <metaitem:gearElectricalSteel>
]);

# Dark Steel Upgrade "Explosive lv4"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <metaitem:gearEnergeticAlloy>
]);

# Dark Steel Upgrade "Explosive lv5"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4"}), [
    <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <metaitem:gearVibrantAlloy>
]);

# Dark Steel Upgrade "The One Probe"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:top"}), [
    <enderio:item_dark_steel_upgrade>, <theoneprobe:probe>
]);

# Dark Steel Upgrade "Travel"
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel"}), [
    <enderio:item_dark_steel_upgrade>, <ore:itemEnderCrystal>
]);

# Extract Speed Upgrade
recipes.addShaped(<enderio:item_extract_speed_upgrade>, [
    [<metaitem:plateConstructionAlloy>, <metaitem:plateConstructionAlloy>, <metaitem:plateConstructionAlloy>],
    [<metaitem:plateElectricalSteel>, <minecraft:piston>, <metaitem:plateElectricalSteel>],
    [<metaitem:plateElectricalSteel>, <enderio:item_dark_steel_upgrade>, <metaitem:plateElectricalSteel>]
]);

# Extract Speed Downgrade
recipes.addShaped(<enderio:item_extract_speed_downgrade>, [
    [<metaitem:plateConstructionAlloy>, <metaitem:plateConstructionAlloy>, <metaitem:plateConstructionAlloy>],
    [<metaitem:plateElectricalSteel>, <minecraft:sticky_piston>, <metaitem:plateElectricalSteel>],
    [<metaitem:plateElectricalSteel>, <enderio:item_dark_steel_upgrade>, <metaitem:plateElectricalSteel>]
]);
