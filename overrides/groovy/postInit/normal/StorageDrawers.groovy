import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName("assembler")


////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Trim
mods.minecraft.crafting.removeByOutput(item('storagedrawers:trim', 32767))
mods.chisel.carving.addGroup('drawerTrim')
mods.chisel.carving.addVariation('drawerTrim', item('storagedrawers:trim', 0))
mods.chisel.carving.addVariation('drawerTrim', item('storagedrawers:trim', 1))
mods.chisel.carving.addVariation('drawerTrim', item('storagedrawers:trim', 2))
mods.chisel.carving.addVariation('drawerTrim', item('storagedrawers:trim', 3))
mods.chisel.carving.addVariation('drawerTrim', item('storagedrawers:trim', 4))
mods.chisel.carving.addVariation('drawerTrim', item('storagedrawers:trim', 5))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:trim', 0) * 4)
    .shape([
        [item('minecraft:stick'), ore('slabWood'), item('minecraft:stick')],
        [ore('slabWood'), ore('slabWood'), ore('slabWood')],
        [item('minecraft:stick'), ore('slabWood'), item('minecraft:stick')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(11)
    .inputs(ore('slabWood') * 5, item('minecraft:stick') * 4)
    .outputs(item('storagedrawers:trim', 0) * 4)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Basic Drawer
mods.minecraft.crafting.removeByOutput(item('storagedrawers:basicdrawers', 0))
mods.chisel.carving.addGroup('drawer1x1')
mods.chisel.carving.addVariation('drawer1x1', item('storagedrawers:basicdrawers', 0).withNbt(['material': 'oak']))
mods.chisel.carving.addVariation('drawer1x1', item('storagedrawers:basicdrawers', 0).withNbt(['material': 'spruce']))
mods.chisel.carving.addVariation('drawer1x1', item('storagedrawers:basicdrawers', 0).withNbt(['material': 'birch']))
mods.chisel.carving.addVariation('drawer1x1', item('storagedrawers:basicdrawers', 0).withNbt(['material': 'jungle']))
mods.chisel.carving.addVariation('drawer1x1', item('storagedrawers:basicdrawers', 0).withNbt(['material': 'acacia']))
mods.chisel.carving.addVariation('drawer1x1', item('storagedrawers:basicdrawers', 0).withNbt(['material': 'dark_oak']))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:basicdrawers', 0).withNbt(['material': 'oak']))
    .shape([
        [ore('slabWood'), ore('slabWood'), ore('slabWood')],
        [ore('slabWood'), item('minecraft:chest'), ore('slabWood')],
        [ore('slabWood'), ore('slabWood'), ore('slabWood')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(12)
    .inputs(ore('slabWood') * 8, item('minecraft:chest'))
    .outputs(item('storagedrawers:basicdrawers', 0).withNbt(['material': 'oak']))
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Basic Drawer 1x2
mods.minecraft.crafting.removeByOutput(item('storagedrawers:basicdrawers', 1))
mods.chisel.carving.addGroup('drawer1x2')
mods.chisel.carving.addVariation('drawer1x2', item('storagedrawers:basicdrawers', 1).withNbt(['material': 'oak']))
mods.chisel.carving.addVariation('drawer1x2', item('storagedrawers:basicdrawers', 1).withNbt(['material': 'spruce']))
mods.chisel.carving.addVariation('drawer1x2', item('storagedrawers:basicdrawers', 1).withNbt(['material': 'birch']))
mods.chisel.carving.addVariation('drawer1x2', item('storagedrawers:basicdrawers', 1).withNbt(['material': 'jungle']))
mods.chisel.carving.addVariation('drawer1x2', item('storagedrawers:basicdrawers', 1).withNbt(['material': 'acacia']))
mods.chisel.carving.addVariation('drawer1x2', item('storagedrawers:basicdrawers', 1).withNbt(['material': 'dark_oak']))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:basicdrawers', 1).withNbt(['material': 'oak']) * 2)
    .shape([
        [ore('slabWood'), item('minecraft:chest'), ore('slabWood')],
        [ore('slabWood'), ore('slabWood'), ore('slabWood')],
        [ore('slabWood'), item('minecraft:chest'), ore('slabWood')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(13)
    .inputs(ore('slabWood') * 7, item('minecraft:chest') * 2)
    .outputs(item('storagedrawers:basicdrawers', 1).withNbt(['material': 'oak']) * 2)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Basic Drawer 2x2
mods.minecraft.crafting.removeByOutput(item('storagedrawers:basicdrawers', 2))
mods.chisel.carving.addGroup('drawer2x2')
mods.chisel.carving.addVariation('drawer2x2', item('storagedrawers:basicdrawers', 2).withNbt(['material': 'oak']))
mods.chisel.carving.addVariation('drawer2x2', item('storagedrawers:basicdrawers', 2).withNbt(['material': 'spruce']))
mods.chisel.carving.addVariation('drawer2x2', item('storagedrawers:basicdrawers', 2).withNbt(['material': 'birch']))
mods.chisel.carving.addVariation('drawer2x2', item('storagedrawers:basicdrawers', 2).withNbt(['material': 'jungle']))
mods.chisel.carving.addVariation('drawer2x2', item('storagedrawers:basicdrawers', 2).withNbt(['material': 'acacia']))
mods.chisel.carving.addVariation('drawer2x2', item('storagedrawers:basicdrawers', 2).withNbt(['material': 'dark_oak']))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:basicdrawers', 2).withNbt(['material': 'oak']) * 4)
    .shape([
        [item('minecraft:chest'), ore('slabWood'), item('minecraft:chest')],
        [ore('slabWood'), ore('slabWood'), ore('slabWood')],
        [item('minecraft:chest'), ore('slabWood'), item('minecraft:chest')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(14)
    .inputs(ore('slabWood') * 5, item('minecraft:chest') * 4)
    .outputs(item('storagedrawers:basicdrawers', 2).withNbt(['material': 'oak']) * 4)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Half Basic Drawer 1x2
mods.minecraft.crafting.removeByOutput(item('storagedrawers:basicdrawers', 3))
mods.chisel.carving.addGroup('drawerHalf1x2')
mods.chisel.carving.addVariation('drawerHalf1x2', item('storagedrawers:basicdrawers', 3).withNbt(['material': 'oak']))
mods.chisel.carving.addVariation('drawerHalf1x2', item('storagedrawers:basicdrawers', 3).withNbt(['material': 'spruce']))
mods.chisel.carving.addVariation('drawerHalf1x2', item('storagedrawers:basicdrawers', 3).withNbt(['material': 'birch']))
mods.chisel.carving.addVariation('drawerHalf1x2', item('storagedrawers:basicdrawers', 3).withNbt(['material': 'jungle']))
mods.chisel.carving.addVariation('drawerHalf1x2', item('storagedrawers:basicdrawers', 3).withNbt(['material': 'acacia']))
mods.chisel.carving.addVariation('drawerHalf1x2', item('storagedrawers:basicdrawers', 3).withNbt(['material': 'dark_oak']))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:basicdrawers', 3).withNbt(['material': 'oak']))
    .shape([
        [ore('slabWood'), ore('slabWood'), ore('slabWood')],
        [item('minecraft:chest'), ore('slabWood'), item('minecraft:chest')],
        [ore('slabWood'), ore('slabWood'), ore('slabWood')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(15)
    .inputs(ore('slabWood') * 7, item('minecraft:chest') * 2)
    .outputs(item('storagedrawers:basicdrawers', 3).withNbt(['material': 'oak']))
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Half Basic Drawer 2x2
mods.minecraft.crafting.removeByOutput(item('storagedrawers:basicdrawers', 4))
mods.chisel.carving.addGroup('drawerHalf2x2')
mods.chisel.carving.addVariation('drawerHalf2x2', item('storagedrawers:basicdrawers', 4).withNbt(['material': 'oak']))
mods.chisel.carving.addVariation('drawerHalf2x2', item('storagedrawers:basicdrawers', 4).withNbt(['material': 'spruce']))
mods.chisel.carving.addVariation('drawerHalf2x2', item('storagedrawers:basicdrawers', 4).withNbt(['material': 'birch']))
mods.chisel.carving.addVariation('drawerHalf2x2', item('storagedrawers:basicdrawers', 4).withNbt(['material': 'jungle']))
mods.chisel.carving.addVariation('drawerHalf2x2', item('storagedrawers:basicdrawers', 4).withNbt(['material': 'acacia']))
mods.chisel.carving.addVariation('drawerHalf2x2', item('storagedrawers:basicdrawers', 4).withNbt(['material': 'dark_oak']))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:basicdrawers', 4).withNbt(['material': 'oak']) * 4)
    .shape([
        [ore('slabWood'), item('minecraft:chest'), ore('slabWood')],
        [item('minecraft:chest'), ore('slabWood'), item('minecraft:chest')],
        [ore('slabWood'), item('minecraft:chest'), ore('slabWood')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(16)
    .inputs(ore('slabWood') * 5, item('minecraft:chest') * 4)
    .outputs(item('storagedrawers:basicdrawers', 4).withNbt(['material': 'oak']) * 4)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Framing Table
mods.minecraft.crafting.removeByOutput(item('storagedrawers:framingtable'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:framingtable'))
    .shape([
        [ore('slabWood'), ore('slabWood'), ore('slabWood')],
        [ore('fenceWood'), item('minecraft:stick'), ore('fenceWood')],
        [ore('fenceWood'), ore('craftingToolScrewdriver'), ore('fenceWood')]
    ])
    .register()

// Framed Trim
mods.minecraft.crafting.removeByOutput(item('storagedrawers:customtrim', 0))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:customtrim', 0) * 4)
    .shape([
        [item('minecraft:stick'), mi('frameWood'), item('minecraft:stick')],
        [mi('frameWood'), mi('frameWood'), mi('frameWood')],
        [item('minecraft:stick'), mi('frameWood'), item('minecraft:stick')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:customtrim', 0) * 16)
    .shape([
        [mi('stickTreatedWood'), mi('frameTreatedWood'), mi('stickTreatedWood')],
        [mi('frameTreatedWood'), mi('frameTreatedWood'), mi('frameTreatedWood')],
        [mi('stickTreatedWood'), mi('frameTreatedWood'), mi('stickTreatedWood')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(11)
    .inputs(mi('frameWood', 5), item('minecraft:stick') * 4)
    .outputs(item('storagedrawers:customtrim', 0) * 4)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(11)
    .inputs(mi('frameTreatedWood', 5), mi('stickTreatedWood', 4))
    .outputs(item('storagedrawers:customtrim', 0) * 16)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Framed Drawer
mods.minecraft.crafting.removeByOutput(item('storagedrawers:customdrawers', 0))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:customdrawers', 0).withNbt([:]))
    .shape([
        [mi('frameWood'), mi('frameWood'), mi('frameWood')],
        [mi('frameWood'), item('minecraft:chest'), mi('frameWood')],
        [mi('frameWood'), mi('frameWood'), mi('frameWood')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:customdrawers', 0).withNbt([:]) * 4)
    .shape([
        [mi('frameTreatedWood'), mi('frameTreatedWood'), mi('frameTreatedWood')],
        [mi('frameTreatedWood'), item('minecraft:chest'), mi('frameTreatedWood')],
        [mi('frameTreatedWood'), mi('frameTreatedWood'), mi('frameTreatedWood')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(12)
    .inputs(mi('frameWood', 8), item('minecraft:chest'))
    .outputs(item('storagedrawers:customdrawers', 0).withNbt([:]))
    .duration(20)
    .EUt(7)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(12)
    .inputs(mi('frameTreatedWood', 8), item('minecraft:chest'))
    .outputs(item('storagedrawers:customdrawers', 0).withNbt([:]) * 4)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Framed Drawer 1x2
mods.minecraft.crafting.removeByOutput(item('storagedrawers:customdrawers', 1))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:customdrawers', 1).withNbt([:]) * 2)
    .shape([
        [mi('frameWood'), item('minecraft:chest'), mi('frameWood')],
        [mi('frameWood'), mi('frameWood'), mi('frameWood')],
        [mi('frameWood'), item('minecraft:chest'), mi('frameWood')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:customdrawers', 1).withNbt([:]) * 8)
    .shape([
        [mi('frameTreatedWood'), item('minecraft:chest'), mi('frameTreatedWood')],
        [mi('frameTreatedWood'), mi('frameTreatedWood'), mi('frameTreatedWood')],
        [mi('frameTreatedWood'), item('minecraft:chest'), mi('frameTreatedWood')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(13)
    .inputs(mi('frameWood', 7), item('minecraft:chest') * 2)
    .outputs(item('storagedrawers:customdrawers', 1).withNbt([:]) * 2)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(13)
    .inputs(mi('frameTreatedWood', 7), item('minecraft:chest') * 2)
    .outputs(item('storagedrawers:customdrawers', 1).withNbt([:]) * 8)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Framed Drawer 2x2
mods.minecraft.crafting.removeByOutput(item('storagedrawers:customdrawers', 2))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:customdrawers', 2).withNbt([:]) * 4)
    .shape([
        [item('minecraft:chest'), mi('frameWood'), item('minecraft:chest')],
        [mi('frameWood'), mi('frameWood'), mi('frameWood')],
        [item('minecraft:chest'), mi('frameWood'), item('minecraft:chest')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:customdrawers', 2).withNbt([:]) * 16)
    .shape([
        [item('minecraft:chest'), mi('frameTreatedWood'), item('minecraft:chest')],
        [mi('frameTreatedWood'), mi('frameTreatedWood'), mi('frameTreatedWood')],
        [item('minecraft:chest'), mi('frameTreatedWood'), item('minecraft:chest')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(14)
    .inputs(mi('frameWood', 5), item('minecraft:chest') * 4)
    .outputs(item('storagedrawers:customdrawers', 2).withNbt([:]) * 4)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(14)
    .inputs(mi('frameTreatedWood', 5), item('minecraft:chest') * 4)
    .outputs(item('storagedrawers:customdrawers', 2).withNbt([:]) * 16)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Framed Half Drawer 1x2
mods.minecraft.crafting.removeByOutput(item('storagedrawers:customdrawers', 3))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:customdrawers', 3).withNbt([:]))
    .shape([
        [mi('frameWood'), mi('frameWood'), mi('frameWood')],
        [item('minecraft:chest'), mi('frameWood'), item('minecraft:chest')],
        [mi('frameWood'), mi('frameWood'), mi('frameWood')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:customdrawers', 3).withNbt([:]) * 4)
    .shape([
        [mi('frameTreatedWood'), mi('frameTreatedWood'), mi('frameTreatedWood')],
        [item('minecraft:chest'), mi('frameTreatedWood'), item('minecraft:chest')],
        [mi('frameTreatedWood'), mi('frameTreatedWood'), mi('frameTreatedWood')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(15)
    .inputs(mi('frameWood', 7), item('minecraft:chest') * 2)
    .outputs(item('storagedrawers:customdrawers', 3).withNbt([:]))
    .duration(20)
    .EUt(7)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(15)
    .inputs(mi('frameTreatedWood', 7), item('minecraft:chest') * 2)
    .outputs(item('storagedrawers:customdrawers', 3).withNbt([:]) * 4)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Framed Half Drawer 2x2
mods.minecraft.crafting.removeByOutput(item('storagedrawers:customdrawers', 4))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:customdrawers', 4).withNbt([:]) * 4)
    .shape([
        [mi('frameWood'), item('minecraft:chest'), mi('frameWood')],
        [item('minecraft:chest'), mi('frameWood'), item('minecraft:chest')],
        [mi('frameWood'), item('minecraft:chest'), mi('frameWood')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:customdrawers', 4).withNbt([:]) * 16)
    .shape([
        [mi('frameTreatedWood'), item('minecraft:chest'), mi('frameTreatedWood')],
        [item('minecraft:chest'), mi('frameTreatedWood'), item('minecraft:chest')],
        [mi('frameTreatedWood'), item('minecraft:chest'), mi('frameTreatedWood')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(16)
    .inputs(mi('frameWood', 5), item('minecraft:chest') * 4)
    .outputs(item('storagedrawers:customdrawers', 4).withNbt([:]) * 4)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(16)
    .inputs(mi('frameTreatedWood', 5), item('minecraft:chest') * 4)
    .outputs(item('storagedrawers:customdrawers', 4).withNbt([:]) * 16)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Controller
mods.minecraft.crafting.removeByOutput(item('storagedrawers:controller'))
mods.minecraft.crafting.removeByOutput(item('framedcompactdrawers:framed_drawer_controller'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('framedcompactdrawers:framed_drawer_controller'))
    .input(item('storagedrawers:controller'))
    .register()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('storagedrawers:controller'))
    .input(item('framedcompactdrawers:framed_drawer_controller'))
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:controller'))
    .shape([
        [ore('plankWood'), ore('plankWood'), ore('plankWood')],
        [item('minecraft:repeater'), item('storagedrawers:customdrawers'), item('minecraft:repeater')],
        [ore('plankWood'), ore('plankWood'), ore('plankWood')]
    ])
    .register()

// Compacting Drawer
mods.minecraft.crafting.removeByOutput(item('storagedrawers:compdrawers'))
mods.minecraft.crafting.removeByOutput(item('framedcompactdrawers:framed_compact_drawer'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('framedcompactdrawers:framed_compact_drawer'))
    .input(item('storagedrawers:compdrawers'))
    .register()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('storagedrawers:compdrawers'))
    .input(item('framedcompactdrawers:framed_compact_drawer'))
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:compdrawers'))
    .shape([
        [ore('plankWood'), ore('plankWood'), ore('plankWood')],
        [ore('craftingPiston'), item('storagedrawers:customdrawers'), ore('craftingPiston')],
        [ore('plankWood'), ore('plankWood'), ore('plankWood')]
    ])
    .register()

// Controller Slave
mods.minecraft.crafting.removeByOutput(item('storagedrawers:controllerslave'))
mods.minecraft.crafting.removeByOutput(item('framedcompactdrawers:framed_slave'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('framedcompactdrawers:framed_slave'))
    .input(item('storagedrawers:controllerslave'))
    .register()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('storagedrawers:controllerslave'))
    .input(item('framedcompactdrawers:framed_slave'))
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:controllerslave'))
    .shape([
        [ore('plankWood'), ore('plankWood'), ore('plankWood')],
        [item('minecraft:comparator'), item('storagedrawers:customdrawers'), item('minecraft:comparator')],
        [ore('plankWood'), ore('plankWood'), ore('plankWood')]
    ])
    .register()


////////////////////////////////////////
// Items
////////////////////////////////////////
// Packing Tape
mods.minecraft.crafting.removeByOutput(item('storagedrawers:tape'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:tape'))
    .shape([
        [null, null, null],
        [null, item('minecraft:slime_ball'), null],
        [item('minecraft:paper'), item('minecraft:paper'), item('minecraft:paper')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:tape'))
    .shape([
        [null, null, null],
        [null, mi('rubber_drop'), null],
        [item('minecraft:paper'), item('minecraft:paper'), item('minecraft:paper')]
    ])
    .register()

// Upgrade Template
mods.minecraft.crafting.removeByOutput(item('storagedrawers:upgrade_template'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:upgrade_template') * 8)
    .shape([
        [null, null, null],
        [mi('screwIron'), ore('drawerBasic'), mi('screwIron')],
        [mi('screwIron'), ore('craftingToolScrewdriver'), mi('screwIron')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(8)
    .inputs(mi('screwIron', 4), ore('drawerBasic'))
    .outputs(item('storagedrawers:upgrade_template') * 8)
    .duration(20)
    .EUt(7)
    .buildAndRegister()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:upgrade_template') * 16)
    .shape([
        [null, null, null],
        [mi('screwSteel'), ore('drawerBasic'), mi('screwSteel')],
        [mi('screwSteel'), ore('craftingToolScrewdriver'), mi('screwSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(8)
    .inputs(mi('screwSteel', 4), ore('drawerBasic'))
    .outputs(item('storagedrawers:upgrade_template') * 16)
    .duration(20)
    .EUt(7)
    .buildAndRegister()

// Status Upgrade MK2
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:upgrade_status', 1))
    .shape([
        [item('minecraft:comparator'), item('minecraft:stick'), item('minecraft:comparator')],
        [item('minecraft:stick'), item('storagedrawers:upgrade_status', 0), item('minecraft:stick')],
        [item('minecraft:redstone'), item('minecraft:stick'), item('minecraft:redstone')]
    ])
    .register()

// Redstone Max Upgrade
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:upgrade_redstone', 1))
    .shape([
        [item('minecraft:redstone'), item('minecraft:redstone'), item('minecraft:redstone')],
        [item('minecraft:stick'), item('storagedrawers:upgrade_redstone', 0), item('minecraft:stick')],
        [item('minecraft:stick'), item('minecraft:stick'), item('minecraft:stick')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:upgrade_redstone', 1))
    .shape([
        [item('minecraft:redstone'), item('minecraft:redstone'), item('minecraft:redstone')],
        [item('minecraft:stick'), item('storagedrawers:upgrade_redstone', 2), item('minecraft:stick')],
        [item('minecraft:stick'), item('minecraft:stick'), item('minecraft:stick')]
    ])
    .register()

// Redstone Min Upgrade
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:upgrade_redstone', 2))
    .shape([
        [item('minecraft:stick'), item('minecraft:stick'), item('minecraft:stick')],
        [item('minecraft:stick'), item('storagedrawers:upgrade_redstone', 0), item('minecraft:stick')],
        [item('minecraft:redstone'), item('minecraft:redstone'), item('minecraft:redstone')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:upgrade_redstone', 2))
    .shape([
        [item('minecraft:stick'), item('minecraft:stick'), item('minecraft:stick')],
        [item('minecraft:stick'), item('storagedrawers:upgrade_redstone', 1), item('minecraft:stick')],
        [item('minecraft:redstone'), item('minecraft:redstone'), item('minecraft:redstone')]
    ])
    .register()

// Storage Downgrade
mods.minecraft.crafting.shapedBuilder()
    .output(item('storagedrawers:upgrade_one_stack'))
    .shape([
        [item('minecraft:stick'), item('minecraft:stick'), item('minecraft:stick')],
        [item('minecraft:flint'), item('storagedrawers:upgrade_storage', 32767), item('minecraft:flint')],
        [item('minecraft:stick'), item('minecraft:stick'), item('minecraft:stick')]
    ])
    .register()
