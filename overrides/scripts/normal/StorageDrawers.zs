# Imports
import mods.chisel.Carving;



########################################
# Blocks
########################################
# Trim
recipes.remove(<storagedrawers:trim:*>);
Carving.addGroup("drawerTrim");
Carving.addVariation("drawerTrim", <storagedrawers:trim:0>);
Carving.addVariation("drawerTrim", <storagedrawers:trim:1>);
Carving.addVariation("drawerTrim", <storagedrawers:trim:2>);
Carving.addVariation("drawerTrim", <storagedrawers:trim:3>);
Carving.addVariation("drawerTrim", <storagedrawers:trim:4>);
Carving.addVariation("drawerTrim", <storagedrawers:trim:5>);
recipes.addShaped(<storagedrawers:trim:0> * 4, [
    [<minecraft:stick>, <ore:slabWood>, <minecraft:stick>],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<minecraft:stick>, <ore:slabWood>, <minecraft:stick>]
]);
assembler.recipeBuilder()
    .circuit(11)
    .inputs([
        <ore:slabWood> * 5,
        <minecraft:stick> * 4
    ])
    .outputs([<storagedrawers:trim:0> * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Basic Drawer
recipes.remove(<storagedrawers:basicdrawers:0>);
Carving.addGroup("drawer1x1");
Carving.addVariation("drawer1x1", <storagedrawers:basicdrawers:0>.withTag({material: "oak"}));
Carving.addVariation("drawer1x1", <storagedrawers:basicdrawers:0>.withTag({material: "spruce"}));
Carving.addVariation("drawer1x1", <storagedrawers:basicdrawers:0>.withTag({material: "birch"}));
Carving.addVariation("drawer1x1", <storagedrawers:basicdrawers:0>.withTag({material: "jungle"}));
Carving.addVariation("drawer1x1", <storagedrawers:basicdrawers:0>.withTag({material: "acacia"}));
Carving.addVariation("drawer1x1", <storagedrawers:basicdrawers:0>.withTag({material: "dark_oak"}));
recipes.addShaped(<storagedrawers:basicdrawers:0>.withTag({material: "oak"}), [
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<ore:slabWood>, <minecraft:chest>, <ore:slabWood>],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);
assembler.recipeBuilder()
    .circuit(12)
    .inputs([
        <ore:slabWood> * 8,
        <minecraft:chest>
    ])
    .outputs([<storagedrawers:basicdrawers:0>.withTag({material: "oak"})])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Basic Drawer 1x2
recipes.remove(<storagedrawers:basicdrawers:1>);
Carving.addGroup("drawer1x2");
Carving.addVariation("drawer1x2", <storagedrawers:basicdrawers:1>.withTag({material: "oak"}));
Carving.addVariation("drawer1x2", <storagedrawers:basicdrawers:1>.withTag({material: "spruce"}));
Carving.addVariation("drawer1x2", <storagedrawers:basicdrawers:1>.withTag({material: "birch"}));
Carving.addVariation("drawer1x2", <storagedrawers:basicdrawers:1>.withTag({material: "jungle"}));
Carving.addVariation("drawer1x2", <storagedrawers:basicdrawers:1>.withTag({material: "acacia"}));
Carving.addVariation("drawer1x2", <storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}));
recipes.addShaped(<storagedrawers:basicdrawers:1>.withTag({material: "oak"}) * 2, [
    [<ore:slabWood>, <minecraft:chest>, <ore:slabWood>],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<ore:slabWood>, <minecraft:chest>, <ore:slabWood>]
]);
assembler.recipeBuilder()
    .circuit(13)
    .inputs([
        <ore:slabWood> * 7,
        <minecraft:chest> * 2
    ])
    .outputs([<storagedrawers:basicdrawers:1>.withTag({material: "oak"}) * 2])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Basic Drawer 2x2
recipes.remove(<storagedrawers:basicdrawers:2>);
Carving.addGroup("drawer2x2");
Carving.addVariation("drawer2x2", <storagedrawers:basicdrawers:2>.withTag({material: "oak"}));
Carving.addVariation("drawer2x2", <storagedrawers:basicdrawers:2>.withTag({material: "spruce"}));
Carving.addVariation("drawer2x2", <storagedrawers:basicdrawers:2>.withTag({material: "birch"}));
Carving.addVariation("drawer2x2", <storagedrawers:basicdrawers:2>.withTag({material: "jungle"}));
Carving.addVariation("drawer2x2", <storagedrawers:basicdrawers:2>.withTag({material: "acacia"}));
Carving.addVariation("drawer2x2", <storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"}));
recipes.addShaped(<storagedrawers:basicdrawers:2>.withTag({material: "oak"}) * 4, [
    [<minecraft:chest>, <ore:slabWood>, <minecraft:chest>],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<minecraft:chest>, <ore:slabWood>, <minecraft:chest>]
]);
assembler.recipeBuilder()
    .circuit(14)
    .inputs([
        <ore:slabWood> * 5,
        <minecraft:chest> * 4
    ])
    .outputs([<storagedrawers:basicdrawers:2>.withTag({material: "oak"}) * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Half Basic Drawer 1x2
recipes.remove(<storagedrawers:basicdrawers:3>);
Carving.addGroup("drawerHalf1x2");
Carving.addVariation("drawerHalf1x2", <storagedrawers:basicdrawers:3>.withTag({material: "oak"}));
Carving.addVariation("drawerHalf1x2", <storagedrawers:basicdrawers:3>.withTag({material: "spruce"}));
Carving.addVariation("drawerHalf1x2", <storagedrawers:basicdrawers:3>.withTag({material: "birch"}));
Carving.addVariation("drawerHalf1x2", <storagedrawers:basicdrawers:3>.withTag({material: "jungle"}));
Carving.addVariation("drawerHalf1x2", <storagedrawers:basicdrawers:3>.withTag({material: "acacia"}));
Carving.addVariation("drawerHalf1x2", <storagedrawers:basicdrawers:3>.withTag({material: "dark_oak"}));
recipes.addShaped(<storagedrawers:basicdrawers:3>.withTag({material: "oak"}), [
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<minecraft:chest>, <ore:slabWood>, <minecraft:chest>],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);
assembler.recipeBuilder()
    .circuit(15)
    .inputs([
        <ore:slabWood> * 7,
        <minecraft:chest> * 2
    ])
    .outputs([<storagedrawers:basicdrawers:3>.withTag({material: "oak"})])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Half Basic Drawer 2x2
recipes.remove(<storagedrawers:basicdrawers:4>);
Carving.addGroup("drawerHalf2x2");
Carving.addVariation("drawerHalf2x2", <storagedrawers:basicdrawers:4>.withTag({material: "oak"}));
Carving.addVariation("drawerHalf2x2", <storagedrawers:basicdrawers:4>.withTag({material: "spruce"}));
Carving.addVariation("drawerHalf2x2", <storagedrawers:basicdrawers:4>.withTag({material: "birch"}));
Carving.addVariation("drawerHalf2x2", <storagedrawers:basicdrawers:4>.withTag({material: "jungle"}));
Carving.addVariation("drawerHalf2x2", <storagedrawers:basicdrawers:4>.withTag({material: "acacia"}));
Carving.addVariation("drawerHalf2x2", <storagedrawers:basicdrawers:4>.withTag({material: "dark_oak"}));
recipes.addShaped(<storagedrawers:basicdrawers:4>.withTag({material: "oak"}) * 4, [
    [<ore:slabWood>, <minecraft:chest>, <ore:slabWood>],
    [<minecraft:chest>, <ore:slabWood>, <minecraft:chest>],
    [<ore:slabWood>, <minecraft:chest>, <ore:slabWood>]
]);
assembler.recipeBuilder()
    .circuit(16)
    .inputs([
        <ore:slabWood> * 5,
        <minecraft:chest> * 4
    ])
    .outputs([<storagedrawers:basicdrawers:4>.withTag({material: "oak"}) * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Framing Table
recipes.remove(<storagedrawers:framingtable>);
recipes.addShaped(<storagedrawers:framingtable>, [
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<ore:fenceWood>, <minecraft:stick>, <ore:fenceWood>],
    [<ore:fenceWood>, <ore:craftingToolScrewdriver>, <ore:fenceWood>]
]);

# Framed Trim
recipes.remove(<storagedrawers:customtrim:0>);
recipes.addShaped(<storagedrawers:customtrim:0> * 4, [
    [<minecraft:stick>, <metaitem:frameWood>, <minecraft:stick>],
    [<metaitem:frameWood>, <metaitem:frameWood>, <metaitem:frameWood>],
    [<minecraft:stick>, <metaitem:frameWood>, <minecraft:stick>]
]);
recipes.addShaped(<storagedrawers:customtrim:0> * 16, [
    [<metaitem:stickTreatedWood>, <metaitem:frameTreatedWood>, <metaitem:stickTreatedWood>],
    [<metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>],
    [<metaitem:stickTreatedWood>, <metaitem:frameTreatedWood>, <metaitem:stickTreatedWood>]
]);
assembler.recipeBuilder()
    .circuit(11)
    .inputs([
        <metaitem:frameWood> * 5,
        <minecraft:stick> * 4
    ])
    .outputs([<storagedrawers:customtrim:0> * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(11)
    .inputs([
        <metaitem:frameTreatedWood> * 5,
        <metaitem:stickTreatedWood> * 4
    ])
    .outputs([<storagedrawers:customtrim:0> * 16])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Framed Drawer
recipes.remove(<storagedrawers:customdrawers:0>);
recipes.addShaped(<storagedrawers:customdrawers:0>.withTag({}), [
    [<metaitem:frameWood>, <metaitem:frameWood>, <metaitem:frameWood>],
    [<metaitem:frameWood>, <minecraft:chest>, <metaitem:frameWood>],
    [<metaitem:frameWood>, <metaitem:frameWood>, <metaitem:frameWood>]
]);
recipes.addShaped(<storagedrawers:customdrawers:0>.withTag({}) * 4, [
    [<metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>],
    [<metaitem:frameTreatedWood>, <minecraft:chest>, <metaitem:frameTreatedWood>],
    [<metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>]
]);
assembler.recipeBuilder()
    .circuit(12)
    .inputs([
        <metaitem:frameWood> * 8,
        <minecraft:chest>
    ])
    .outputs([<storagedrawers:customdrawers:0>.withTag({})])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(12)
    .inputs([
        <metaitem:frameTreatedWood> * 8,
        <minecraft:chest>
    ])
    .outputs([<storagedrawers:customdrawers:0>.withTag({}) * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Framed Drawer 1x2
recipes.remove(<storagedrawers:customdrawers:1>);
recipes.addShaped(<storagedrawers:customdrawers:1>.withTag({}) * 2, [
    [<metaitem:frameWood>, <minecraft:chest>, <metaitem:frameWood>],
    [<metaitem:frameWood>, <metaitem:frameWood>, <metaitem:frameWood>],
    [<metaitem:frameWood>, <minecraft:chest>, <metaitem:frameWood>]
]);
recipes.addShaped(<storagedrawers:customdrawers:1>.withTag({}) * 8, [
    [<metaitem:frameTreatedWood>, <minecraft:chest>, <metaitem:frameTreatedWood>],
    [<metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>],
    [<metaitem:frameTreatedWood>, <minecraft:chest>, <metaitem:frameTreatedWood>]
]);
assembler.recipeBuilder()
    .circuit(13)
    .inputs([
        <metaitem:frameWood> * 7,
        <minecraft:chest> * 2
    ])
    .outputs([<storagedrawers:customdrawers:1>.withTag({}) * 2])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(13)
    .inputs([
        <metaitem:frameTreatedWood> * 7,
        <minecraft:chest> * 2
    ])
    .outputs([<storagedrawers:customdrawers:1>.withTag({}) * 8])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Framed Drawer 2x2
recipes.remove(<storagedrawers:customdrawers:2>);
recipes.addShaped(<storagedrawers:customdrawers:2>.withTag({}) * 4, [
    [<minecraft:chest>, <metaitem:frameWood>, <minecraft:chest>],
    [<metaitem:frameWood>, <metaitem:frameWood>, <metaitem:frameWood>],
    [<minecraft:chest>, <metaitem:frameWood>, <minecraft:chest>]
]);
recipes.addShaped(<storagedrawers:customdrawers:2>.withTag({}) * 16, [
    [<minecraft:chest>, <metaitem:frameTreatedWood>, <minecraft:chest>],
    [<metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>],
    [<minecraft:chest>, <metaitem:frameTreatedWood>, <minecraft:chest>]
]);
assembler.recipeBuilder()
    .circuit(14)
    .inputs([
        <metaitem:frameWood> * 5,
        <minecraft:chest> * 4
    ])
    .outputs([<storagedrawers:customdrawers:2>.withTag({}) * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(14)
    .inputs([
        <metaitem:frameTreatedWood> * 5,
        <minecraft:chest> * 4
    ])
    .outputs([<storagedrawers:customdrawers:2>.withTag({}) * 16])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Framed Half Drawer 1x2
recipes.remove(<storagedrawers:customdrawers:3>);
recipes.addShaped(<storagedrawers:customdrawers:3>.withTag({}), [
    [<metaitem:frameWood>, <metaitem:frameWood>, <metaitem:frameWood>],
    [<minecraft:chest>, <metaitem:frameWood>, <minecraft:chest>],
    [<metaitem:frameWood>, <metaitem:frameWood>, <metaitem:frameWood>]
]);
recipes.addShaped(<storagedrawers:customdrawers:3>.withTag({}) * 4, [
    [<metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>],
    [<minecraft:chest>, <metaitem:frameTreatedWood>, <minecraft:chest>],
    [<metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>, <metaitem:frameTreatedWood>]
]);
assembler.recipeBuilder()
    .circuit(15)
    .inputs([
        <metaitem:frameWood> * 7,
        <minecraft:chest> * 2
    ])
    .outputs([<storagedrawers:customdrawers:3>.withTag({})])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(15)
    .inputs([
        <metaitem:frameTreatedWood> * 7,
        <minecraft:chest> * 2
    ])
    .outputs([<storagedrawers:customdrawers:3>.withTag({}) * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Framed Half Drawer 2x2
recipes.remove(<storagedrawers:customdrawers:4>);
recipes.addShaped(<storagedrawers:customdrawers:4>.withTag({}) * 4, [
    [<metaitem:frameWood>, <minecraft:chest>, <metaitem:frameWood>],
    [<minecraft:chest>, <metaitem:frameWood>, <minecraft:chest>],
    [<metaitem:frameWood>, <minecraft:chest>, <metaitem:frameWood>]
]);
recipes.addShaped(<storagedrawers:customdrawers:4>.withTag({}) * 16, [
    [<metaitem:frameTreatedWood>, <minecraft:chest>, <metaitem:frameTreatedWood>],
    [<minecraft:chest>, <metaitem:frameTreatedWood>, <minecraft:chest>],
    [<metaitem:frameTreatedWood>, <minecraft:chest>, <metaitem:frameTreatedWood>]
]);
assembler.recipeBuilder()
    .circuit(16)
    .inputs([
        <metaitem:frameWood> * 5,
        <minecraft:chest> * 4
    ])
    .outputs([<storagedrawers:customdrawers:4>.withTag({}) * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(16)
    .inputs([
        <metaitem:frameTreatedWood> * 5,
        <minecraft:chest> * 4
    ])
    .outputs([<storagedrawers:customdrawers:4>.withTag({}) * 16])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Controller
recipes.remove(<storagedrawers:controller>);
recipes.remove(<framedcompactdrawers:framed_drawer_controller>);
recipes.addShapeless(<framedcompactdrawers:framed_drawer_controller>, [<storagedrawers:controller>]);
recipes.addShapeless(<storagedrawers:controller>, [<framedcompactdrawers:framed_drawer_controller>]);
recipes.addShaped(<storagedrawers:controller>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<minecraft:repeater>, <storagedrawers:customdrawers>, <minecraft:repeater>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

# Compacting Drawer
recipes.remove(<storagedrawers:compdrawers>);
recipes.remove(<framedcompactdrawers:framed_compact_drawer>);
recipes.addShapeless(<framedcompactdrawers:framed_compact_drawer>, [<storagedrawers:compdrawers>]);
recipes.addShapeless(<storagedrawers:compdrawers>, [<framedcompactdrawers:framed_compact_drawer>]);
recipes.addShaped(<storagedrawers:compdrawers>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:craftingPiston>, <storagedrawers:customdrawers>, <ore:craftingPiston>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

# Controller Slave
recipes.remove(<storagedrawers:controllerslave>);
recipes.remove(<framedcompactdrawers:framed_slave>);
recipes.addShapeless(<framedcompactdrawers:framed_slave>, [<storagedrawers:controllerslave>]);
recipes.addShapeless(<storagedrawers:controllerslave>, [<framedcompactdrawers:framed_slave>]);
recipes.addShaped(<storagedrawers:controllerslave>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<minecraft:comparator>, <storagedrawers:customdrawers>, <minecraft:comparator>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);



########################################
# Items
########################################
# Packing Tape
recipes.remove(<storagedrawers:tape>);
recipes.addShaped(<storagedrawers:tape>, [
    [null, null, null],
    [null, <minecraft:slime_ball>, null],
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
]);
recipes.addShaped(<storagedrawers:tape>, [
    [null, null, null],
    [null, <metaitem:rubber_drop>, null],
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
]);

# Upgrade Template
recipes.remove(<storagedrawers:upgrade_template>);
recipes.addShaped(<storagedrawers:upgrade_template> * 8, [
    [null, null, null],
    [<metaitem:screwIron>, <ore:drawerBasic>, <metaitem:screwIron>],
    [<metaitem:screwIron>, <ore:craftingToolScrewdriver>, <metaitem:screwIron>]
]);
assembler.recipeBuilder()
    .circuit(8)
    .inputs([
        <metaitem:screwIron> * 4,
        <ore:drawerBasic>
    ])
    .outputs([<storagedrawers:upgrade_template> * 8])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
recipes.addShaped(<storagedrawers:upgrade_template> * 16, [
    [null, null, null],
    [<metaitem:screwSteel>, <ore:drawerBasic>, <metaitem:screwSteel>],
    [<metaitem:screwSteel>, <ore:craftingToolScrewdriver>, <metaitem:screwSteel>]
]);
assembler.recipeBuilder()
    .circuit(8)
    .inputs([
        <metaitem:screwSteel> * 4,
        <ore:drawerBasic>
    ])
    .outputs([<storagedrawers:upgrade_template> * 16])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Status Upgrade MK2
recipes.addShaped(<storagedrawers:upgrade_status:1>, [
    [<minecraft:comparator>, <minecraft:stick>, <minecraft:comparator>],
    [<minecraft:stick>, <storagedrawers:upgrade_status:0>, <minecraft:stick>],
    [<minecraft:redstone>, <minecraft:stick>, <minecraft:redstone>]
]);

# Redstone Max Upgrade
recipes.addShaped(<storagedrawers:upgrade_redstone:1>, [
    [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
    [<minecraft:stick>, <storagedrawers:upgrade_redstone:0>, <minecraft:stick>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
recipes.addShaped(<storagedrawers:upgrade_redstone:1>, [
    [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
    [<minecraft:stick>, <storagedrawers:upgrade_redstone:2>, <minecraft:stick>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);

# Redstone Min Upgrade
recipes.addShaped(<storagedrawers:upgrade_redstone:2>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<minecraft:stick>, <storagedrawers:upgrade_redstone:0>, <minecraft:stick>],
    [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]
]);
recipes.addShaped(<storagedrawers:upgrade_redstone:2>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<minecraft:stick>, <storagedrawers:upgrade_redstone:1>, <minecraft:stick>],
    [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]
]);

# Storage Downgrade
recipes.addShaped(<storagedrawers:upgrade_one_stack>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<minecraft:flint>, <storagedrawers:upgrade_storage:*>, <minecraft:flint>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);

# Storage Upgrade MK2
recipes.addShaped(<storagedrawers:upgrade_storage:1>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<minecraft:iron_ingot>, <storagedrawers:upgrade_storage:0>, <minecraft:iron_ingot>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);

# Storage Upgrade MK3
recipes.addShaped(<storagedrawers:upgrade_storage:2>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<minecraft:gold_ingot>, <storagedrawers:upgrade_storage:1>, <minecraft:gold_ingot>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);

# Storage Upgrade MK4
recipes.addShaped(<storagedrawers:upgrade_storage:3>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<ore:gemDiamond>, <storagedrawers:upgrade_storage:1>, <ore:gemDiamond>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
recipes.addShaped(<storagedrawers:upgrade_storage:3>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<ore:gemDiamond>, <storagedrawers:upgrade_storage:2>, <ore:gemDiamond>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);

# Storage Upgrade MK5
recipes.addShaped(<storagedrawers:upgrade_storage:4>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<ore:gemEmerald>, <storagedrawers:upgrade_storage:1>, <ore:gemEmerald>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
recipes.addShaped(<storagedrawers:upgrade_storage:4>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<ore:gemEmerald>, <storagedrawers:upgrade_storage:2>, <ore:gemEmerald>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
recipes.addShaped(<storagedrawers:upgrade_storage:4>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<ore:gemEmerald>, <storagedrawers:upgrade_storage:3>, <ore:gemEmerald>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
