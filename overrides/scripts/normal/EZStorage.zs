# Imports



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
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:plateBronze> * 2,
        <ore:logWood> * 3
    ])
    .outputs([<ezstorage:blank_box>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Storage Core
recipes.remove(<ezstorage:storage_core>);
recipes.addShaped(<ezstorage:storage_core>, [
    [<ore:logWood>, <ore:gtce.tool.hard.hammers>, <ore:logWood>],
    [<metaitem:plateIron>, <ezstorage:storage_box>, <metaitem:plateIron>],
    [<ore:logWood>, <metaitem:plateIron>, <ore:logWood>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ezstorage:storage_box>,
        <ore:logWood> * 2,
        <metaitem:plateIron> * 2
    ])
    .outputs([<ezstorage:storage_core>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Storage Box
recipes.remove(<ezstorage:storage_box>);
recipes.addShaped(<ezstorage:storage_box>, [
    [<ore:logWood>, <ore:gtce.tool.hard.hammers>, <ore:logWood>],
    [<ezstorage:blank_box>, <metaitem:crate.wood>, <ezstorage:blank_box>],
    [<ore:logWood>, <ezstorage:blank_box>, <ore:logWood>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:crate.wood>,
        <ore:logWood> * 2,
        <ezstorage:blank_box> * 3
    ])
    .outputs([<ezstorage:storage_box>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Condensed Storage Box
recipes.remove(<ezstorage:condensed_storage_box>);
recipes.addShaped(<ezstorage:condensed_storage_box>, [
    [<metaitem:plateIron>, <ore:gtce.tool.hard.hammers>, <metaitem:plateIron>],
    [<metaitem:plateIron>, <metaitem:crate.bronze>, <metaitem:plateIron>],
    [<metaitem:plateIron>, <ezstorage:storage_box>, <metaitem:plateIron>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:crate.bronze>,
        <ezstorage:storage_box>,
        <metaitem:plateIron> * 3
    ])
    .outputs([<ezstorage:condensed_storage_box>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Super Storage Box
recipes.remove(<ezstorage:super_storage_box>);
recipes.addShaped(<ezstorage:super_storage_box>, [
    [<metaitem:plateGold>, <ore:gtce.tool.hard.hammers>, <metaitem:plateGold>],
    [<metaitem:plateGold>, <metaitem:crate.steel>, <metaitem:plateGold>],
    [<metaitem:plateGold>, <ezstorage:condensed_storage_box>, <metaitem:plateGold>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:crate.steel>,
        <ezstorage:condensed_storage_box>,
        <metaitem:plateGold> * 3
    ])
    .outputs([<ezstorage:super_storage_box>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Ultra Storage Box
recipes.remove(<ezstorage:ultra_storage_box>);
recipes.addShaped(<ezstorage:ultra_storage_box>, [
    [<metaitem:plateAluminium>, <ore:gtce.tool.hard.hammers>, <metaitem:plateAluminium>],
    [<metaitem:plateAluminium>, <metaitem:crate.aluminium>, <metaitem:plateAluminium>],
    [<metaitem:plateAluminium>, <ezstorage:super_storage_box>, <metaitem:plateAluminium>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:crate.aluminium>,
        <ezstorage:super_storage_box>,
        <metaitem:plateAluminium> * 3
    ])
    .outputs([<ezstorage:ultra_storage_box>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Hyper Storage Box
recipes.remove(<ezstorage:hyper_storage_box>);
recipes.addShaped(<ezstorage:hyper_storage_box>, [
    [<metaitem:plateStainlessSteel>, <ore:gtce.tool.hard.hammers>, <metaitem:plateStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <metaitem:crate.stainless_steel>, <metaitem:plateStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <ezstorage:ultra_storage_box>, <metaitem:plateStainlessSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:crate.stainless_steel>,
        <ezstorage:ultra_storage_box>,
        <metaitem:plateStainlessSteel> * 3
    ])
    .outputs([<ezstorage:hyper_storage_box>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Input Port
recipes.remove(<ezstorage:input_port>);
recipes.addShaped(<ezstorage:input_port>, [
    [<metaitem:plateSteel>, <ore:gtce.tool.wrenches>, <metaitem:plateSteel>],
    [<minecraft:hopper>, <ezstorage:storage_core>, <minecraft:hopper>],
    [<metaitem:plateSteel>, <ore:craftingPiston>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:craftingPiston>,
        <ezstorage:storage_core>,
        <metaitem:plateSteel> * 2
    ])
    .outputs([<ezstorage:input_port>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Output Port
recipes.remove(<ezstorage:output_port>);
recipes.addShaped(<ezstorage:output_port>, [
    [<metaitem:plateSteel>, <minecraft:dropper>, <metaitem:plateSteel>],
    [<minecraft:dropper>, <ezstorage:input_port>, <minecraft:dropper>],
    [<metaitem:plateSteel>, <ore:gtce.tool.wrenches>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:dropper>,
        <ezstorage:input_port>,
        <metaitem:plateSteel> * 2
    ])
    .outputs([<ezstorage:output_port>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Extract Port
recipes.remove(<ezstorage:extract_port>);
recipes.addShaped(<ezstorage:extract_port>, [
    [<minecraft:iron_bars>, <minecraft:comparator>, <minecraft:iron_bars>],
    [<minecraft:hopper>, <ezstorage:input_port>, <minecraft:hopper>],
    [<minecraft:iron_bars>, <minecraft:comparator>, <minecraft:iron_bars>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:comparator>,
        <minecraft:hopper>,
        <ezstorage:input_port>,
        <minecraft:iron_bars> * 2
    ])
    .outputs([<ezstorage:extract_port>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

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
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:cover.crafting>,
        <ezstorage:blank_box>,
        <metaitem:plateSteel> * 2
    ])
    .outputs([<ezstorage:crafting_box>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

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
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:compass>,
        <ezstorage:blank_box>,
        <metaitem:plateSteel> * 2
    ])
    .outputs([<ezstorage:search_box>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();
