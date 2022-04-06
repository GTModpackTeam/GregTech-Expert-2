#packmode normal



########################################
# Blocks
########################################
# Blank Box
recipes.remove(<ezstorage:blank_box>);
recipes.addShaped(<ezstorage:blank_box>, [
    [<ore:logWood>, <ore:gtce.tool.hard.hammers>, <ore:logWood>],
    [<metaitem:plateBronze>, <ore:logWood>, <metaitem:plateBronze>],
    [<ore:logWood>, <metaitem:plateBronze>, <ore:logWood>]
]);

# Storage Core
recipes.remove(<ezstorage:storage_core>);
recipes.addShaped(<ezstorage:storage_core>, [
    [<ore:logWood>, <ore:gtce.tool.hard.hammers>, <ore:logWood>],
    [<metaitem:plateIron>, <ezstorage:storage_box>, <metaitem:plateIron>],
    [<ore:logWood>, <metaitem:plateIron>, <ore:logWood>]
]);

# Storage Box
recipes.remove(<ezstorage:storage_box>);
recipes.addShaped(<ezstorage:storage_box>, [
    [<ore:logWood>, <ore:gtce.tool.hard.hammers>, <ore:logWood>],
    [<ezstorage:blank_box>, <gregtech:machine:1625>, <ezstorage:blank_box>],
    [<ore:logWood>, <ezstorage:blank_box>, <ore:logWood>]
]);

# Condensed Storage Box
recipes.remove(<ezstorage:condensed_storage_box>);
recipes.addShaped(<ezstorage:condensed_storage_box>, [
    [<metaitem:plateIron>, <ore:gtce.tool.hard.hammers>, <metaitem:plateIron>],
    [<metaitem:plateIron>, <gregtech:machine:1626>, <metaitem:plateIron>],
    [<metaitem:plateIron>, <ezstorage:storage_box>, <metaitem:plateIron>]
]);

# Super Storage Box
recipes.remove(<ezstorage:super_storage_box>);
recipes.addShaped(<ezstorage:super_storage_box>, [
    [<metaitem:plateGold>, <ore:gtce.tool.hard.hammers>, <metaitem:plateGold>],
    [<metaitem:plateGold>, <gregtech:machine:1627>, <metaitem:plateGold>],
    [<metaitem:plateGold>, <ezstorage:condensed_storage_box>, <metaitem:plateGold>]
]);

# Ultra Storage Box
recipes.remove(<ezstorage:ultra_storage_box>);
recipes.addShaped(<ezstorage:ultra_storage_box>, [
    [<metaitem:plateAluminium>, <ore:gtce.tool.hard.hammers>, <metaitem:plateAluminium>],
    [<metaitem:plateAluminium>, <gregtech:machine:1628>, <metaitem:plateAluminium>],
    [<metaitem:plateAluminium>, <ezstorage:super_storage_box>, <metaitem:plateAluminium>]
]);

# Hyper Storage Box
recipes.remove(<ezstorage:hyper_storage_box>);
recipes.addShaped(<ezstorage:hyper_storage_box>, [
    [<metaitem:plateStainlessSteel>, <ore:gtce.tool.hard.hammers>, <metaitem:plateStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <gregtech:machine:1629>, <metaitem:plateStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <ezstorage:ultra_storage_box>, <metaitem:plateStainlessSteel>]
]);

# Input Port
recipes.remove(<ezstorage:input_port>);
recipes.addShaped(<ezstorage:input_port>, [
    [<metaitem:plateSteel>, <ore:gtce.tool.wrenches>, <metaitem:plateSteel>],
    [<minecraft:hopper>, <ezstorage:storage_core>, <minecraft:hopper>],
    [<metaitem:plateSteel>, <ore:craftingPiston>, <metaitem:plateSteel>]
]);

# Output Port
recipes.remove(<ezstorage:output_port>);
recipes.addShaped(<ezstorage:output_port>, [
    [<metaitem:plateSteel>, <minecraft:dropper>, <metaitem:plateSteel>],
    [<minecraft:dropper>, <ezstorage:input_port>, <minecraft:dropper>],
    [<metaitem:plateSteel>, <ore:gtce.tool.wrenches>, <metaitem:plateSteel>]
]);

# Extract Port
recipes.remove(<ezstorage:extract_port>);
recipes.addShaped(<ezstorage:extract_port>, [
    [<minecraft:iron_bars>, <minecraft:comparator>, <minecraft:iron_bars>],
    [<minecraft:hopper>, <ezstorage:input_port>, <minecraft:hopper>],
    [<minecraft:iron_bars>, <minecraft:comparator>, <minecraft:iron_bars>]
]);

# Crafting Box
recipes.remove(<ezstorage:crafting_box>);
recipes.addShaped(<ezstorage:crafting_box>, [
    [<metaitem:plateSteel>, <ore:gtce.tool.hard.hammers>, <metaitem:plateSteel>],
    [<metaitem:cover.crafting>, <ezstorage:blank_box>, <metaitem:cover.crafting>],
    [<metaitem:plateSteel>, <ore:gtce.tool.wrenches>, <metaitem:plateSteel>]
]);
recipes.addShaped(<ezstorage:crafting_box>, [
    [<metaitem:plateSteel>, <ore:gtce.tool.wrenches>, <metaitem:plateSteel>],
    [<metaitem:cover.crafting>, <ezstorage:blank_box>, <metaitem:cover.crafting>],
    [<metaitem:plateSteel>, <ore:gtce.tool.hard.hammers>, <metaitem:plateSteel>]
]);

# Search Box
recipes.remove(<ezstorage:search_box>);
recipes.addShaped(<ezstorage:search_box>, [
    [<metaitem:plateSteel>, <ore:gtce.tool.wrenches>, <metaitem:plateSteel>],
    [<minecraft:compass>, <ezstorage:blank_box>, <minecraft:compass>],
    [<metaitem:plateSteel>, <ore:gtce.tool.hard.hammers>, <metaitem:plateSteel>]
]);
recipes.addShaped(<ezstorage:search_box>, [
    [<metaitem:plateSteel>, <ore:gtce.tool.hard.hammers>, <metaitem:plateSteel>],
    [<minecraft:compass>, <ezstorage:blank_box>, <minecraft:compass>],
    [<metaitem:plateSteel>, <ore:gtce.tool.wrenches>, <metaitem:plateSteel>]
]);
