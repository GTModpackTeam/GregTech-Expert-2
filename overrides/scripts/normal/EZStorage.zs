#packmode normal



########################################
# Blocks
########################################
# Blank Box
recipes.remove(<ezstorage:blank_box>);
recipes.addShaped(<ezstorage:blank_box>, [
    [<ore:logWood>, <ore:gtce.tool.hard.hammers>, <ore:logWood>],
    [<ore:plateBronze>, <ore:logWood>, <ore:plateBronze>],
    [<ore:logWood>, <ore:plateBronze>, <ore:logWood>]
]);

# Storage Core
recipes.remove(<ezstorage:storage_core>);
recipes.addShaped(<ezstorage:storage_core>, [
    [<ore:logWood>, <ore:gtce.tool.hard.hammers>, <ore:logWood>],
    [<ore:plateIron>, <ezstorage:storage_box>, <ore:plateIron>],
    [<ore:logWood>, <ore:plateIron>, <ore:logWood>]
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
    [<ore:plateIron>, <ore:gtce.tool.hard.hammers>, <ore:plateIron>],
    [<ore:plateIron>, <gregtech:machine:1626>, <ore:plateIron>],
    [<ore:plateIron>, <ezstorage:storage_box>, <ore:plateIron>]
]);

# Super Storage Box
recipes.remove(<ezstorage:super_storage_box>);
recipes.addShaped(<ezstorage:super_storage_box>, [
    [<ore:plateGold>, <ore:gtce.tool.hard.hammers>, <ore:plateGold>],
    [<ore:plateGold>, <gregtech:machine:1627>, <ore:plateGold>],
    [<ore:plateGold>, <ezstorage:condensed_storage_box>, <ore:plateGold>]
]);

# Ultra Storage Box
recipes.remove(<ezstorage:ultra_storage_box>);
recipes.addShaped(<ezstorage:ultra_storage_box>, [
    [<ore:plateAluminium>, <ore:gtce.tool.hard.hammers>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <gregtech:machine:1628>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <ezstorage:super_storage_box>, <ore:plateAluminium>]
]);

# Hyper Storage Box
recipes.remove(<ezstorage:hyper_storage_box>);
recipes.addShaped(<ezstorage:hyper_storage_box>, [
    [<ore:plateStainlessSteel>, <ore:gtce.tool.hard.hammers>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <gregtech:machine:1629>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <ezstorage:ultra_storage_box>, <ore:plateStainlessSteel>]
]);

# Input Port
recipes.remove(<ezstorage:input_port>);
recipes.addShaped(<ezstorage:input_port>, [
    [<ore:plateSteel>, <ore:gtce.tool.wrenches>, <ore:plateSteel>],
    [<minecraft:hopper>, <ezstorage:storage_core>, <minecraft:hopper>],
    [<ore:plateSteel>, <ore:craftingPiston>, <ore:plateSteel>]
]);

# Output Port
recipes.remove(<ezstorage:output_port>);
recipes.addShaped(<ezstorage:output_port>, [
    [<ore:plateSteel>, <minecraft:dropper>, <ore:plateSteel>],
    [<minecraft:dropper>, <ezstorage:input_port>, <minecraft:dropper>],
    [<ore:plateSteel>, <ore:gtce.tool.wrenches>, <ore:plateSteel>]
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
    [<ore:plateSteel>, <ore:gtce.tool.hard.hammers>, <ore:plateSteel>],
    [<metaitem:cover.crafting>, <ezstorage:blank_box>, <metaitem:cover.crafting>],
    [<ore:plateSteel>, <ore:gtce.tool.wrenches>, <ore:plateSteel>]
]);
recipes.addShaped(<ezstorage:crafting_box>, [
    [<ore:plateSteel>, <ore:gtce.tool.wrenches>, <ore:plateSteel>],
    [<metaitem:cover.crafting>, <ezstorage:blank_box>, <metaitem:cover.crafting>],
    [<ore:plateSteel>, <ore:gtce.tool.hard.hammers>, <ore:plateSteel>]
]);

# Search Box
recipes.remove(<ezstorage:search_box>);
recipes.addShaped(<ezstorage:search_box>, [
    [<ore:plateSteel>, <ore:gtce.tool.wrenches>, <ore:plateSteel>],
    [<minecraft:compass>, <ezstorage:blank_box>, <minecraft:compass>],
    [<ore:plateSteel>, <ore:gtce.tool.hard.hammers>, <ore:plateSteel>]
]);
recipes.addShaped(<ezstorage:search_box>, [
    [<ore:plateSteel>, <ore:gtce.tool.hard.hammers>, <ore:plateSteel>],
    [<minecraft:compass>, <ezstorage:blank_box>, <minecraft:compass>],
    [<ore:plateSteel>, <ore:gtce.tool.wrenches>, <ore:plateSteel>]
]);
