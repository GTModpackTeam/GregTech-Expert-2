import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName("assembler")
def packer = RecipeMap.getByName("packer")

mods.jei.category.hideCategory('compactmachines3.MultiblockMiniaturization')
mods.minecraft.crafting.removeByOutput(item('compactmachines3:fieldprojector'))
mods.jei.ingredient.hide(item('compactmachines3:fieldprojector'))



////////////////////////////////////////
// Items
////////////////////////////////////////
// Personal Shrinking Device
mods.minecraft.crafting.remove(resource('compactmachines3:psd'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('compactmachines3:psd'))
    .shape([
        [null, mi('cover.screen'), null],
        [mi('emitter.lv'), item('minecraft:book'), mi('emitter.lv')],
        [null, ore('circuitLv'), null]
    ])
    .register()

// Tunnel
assembler.recipeBuilder()
    .inputs(
        mi('cover.energy.detector'),
        mi('cover.item.detector'),
        mi('cover.fluid.detector')
    )
    .outputs(item('compactmachines3:tunneltool') * 4)
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Redstone Tunnel
assembler.recipeBuilder()
    .inputs(
        mi('cover.activity.detector'),
        mi('component.resistor')
    )
    .outputs(item('compactmachines3:redstonetunneltool') * 4)
    .duration(100)
    .EUt(30)
    .buildAndRegister()



////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Compact Machine Wall
mods.minecraft.crafting.shapedBuilder()
    .output(item('compactmachines3:wallbreakable') * 8)
    .shape([
        [mi('frameSteel'), mi('frameSteel'), mi('frameSteel')],
        [mi('frameSteel'), mi('sensor.lv'), mi('frameSteel')],
        [mi('frameSteel'), mi('frameSteel'), mi('frameSteel')]
    ])
    .register()

// Tiny Compact Machine
packer.recipeBuilder()
    .inputs(
        item('compactmachines3:wallbreakable') * 8,
        item('gtexpert:meta_item_1', 17)
    )
    .outputs(item('compactmachines3:machine', 0))
    .duration(200)
    .EUt(7)
    .buildAndRegister()
packer.recipeBuilder()
    .inputs(item('compactmachines3:machine', 0))
    .outputs(
        item('compactmachines3:wallbreakable') * 8,
        item('gtexpert:meta_item_1', 17)
    )
    .duration(10)
    .EUt(7)
    .buildAndRegister()

// Small Compact Machine
packer.recipeBuilder()
    .inputs(
        item('compactmachines3:wallbreakable') * 16,
        mi('field.generator.lv')
    )
    .outputs(item('compactmachines3:machine', 1))
    .duration(200)
    .EUt(30)
    .buildAndRegister()
packer.recipeBuilder()
    .inputs(item('compactmachines3:machine', 1))
    .outputs(
        item('compactmachines3:wallbreakable') * 16,
        mi('field.generator.lv')
    )
    .duration(10)
    .EUt(7)
    .buildAndRegister()

// Normal Compact Machine
packer.recipeBuilder()
    .inputs(
        item('compactmachines3:wallbreakable') * 24,
        mi('field.generator.mv')
    )
    .outputs(item('compactmachines3:machine', 2))
    .duration(200)
    .EUt(120)
    .buildAndRegister()
packer.recipeBuilder()
    .inputs(item('compactmachines3:machine', 2))
    .outputs(
        item('compactmachines3:wallbreakable') * 24,
        mi('field.generator.mv')
    )
    .duration(10)
    .EUt(7)
    .buildAndRegister()

// Large Compact Machine
packer.recipeBuilder()
    .inputs(
        item('compactmachines3:wallbreakable') * 32,
        mi('field.generator.hv')
    )
    .outputs(item('compactmachines3:machine', 3))
    .duration(200)
    .EUt(480)
    .buildAndRegister()
packer.recipeBuilder()
    .inputs(item('compactmachines3:machine', 3))
    .outputs(
        item('compactmachines3:wallbreakable') * 32,
        mi('field.generator.hv')
    )
    .duration(10)
    .EUt(7)
    .buildAndRegister()

// Giant Compact Machine
packer.recipeBuilder()
    .inputs(
        item('compactmachines3:wallbreakable') * 40,
        mi('field.generator.ev')
    )
    .outputs(item('compactmachines3:machine', 4))
    .duration(200)
    .EUt(1920)
    .buildAndRegister()
packer.recipeBuilder()
    .inputs(item('compactmachines3:machine', 4))
    .outputs(
        item('compactmachines3:wallbreakable') * 40,
        mi('field.generator.ev')
    )
    .duration(10)
    .EUt(7)
    .buildAndRegister()

// Maximum Compact Machine
packer.recipeBuilder()
    .inputs(
        item('compactmachines3:wallbreakable') * 48,
        mi('field.generator.iv')
    )
    .outputs(item('compactmachines3:machine', 5))
    .duration(200)
    .EUt(7680)
    .buildAndRegister()
packer.recipeBuilder()
    .inputs(item('compactmachines3:machine', 5))
    .outputs(
        item('compactmachines3:wallbreakable') * 48,
        mi('field.generator.iv')
    )
    .duration(10)
    .EUt(7)
    .buildAndRegister()
