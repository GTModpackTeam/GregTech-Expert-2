import static post.classes.Common.*

mods.jei.category.hideCategory('appliedenergistics2.grinder')
mods.jei.category.hideCategory('appliedenergistics2.inscriber')

itemsOf('appliedenergistics2').each { stack ->
    if (stack.displayName.contains('Cable Facade')) {
        mods.jei.ingredient.hide(stack)
    }
    if (stack.displayName.contains('Paint Ball')) {
        mods.minecraft.crafting.removeByOutput(stack)
        mods.jei.ingredient.hide(stack)
    }
}

////////////////////////////////////////
// Items
////////////////////////////////////////
// Certus Quartz Dust
mods.minecraft.ore_dict.remove('dustCertusQuartz', item('appliedenergistics2:material', 2))
mods.jei.ingredient.hide(item('appliedenergistics2:material', 2))

// Nether Quartz Dust
mods.minecraft.ore_dict.remove('dustNetherQuartz', item('appliedenergistics2:material', 3))
mods.minecraft.ore_dict.remove('dustQuartz', item('appliedenergistics2:material', 3))
mods.jei.ingredient.hide(item('appliedenergistics2:material', 3))

// Fluix Dust
mods.minecraft.ore_dict.remove('dustFluix', item('appliedenergistics2:material', 8))
mods.jei.ingredient.hide(item('appliedenergistics2:material', 8))

// Ender Dust
mods.minecraft.ore_dict.remove('dustEnder', item('appliedenergistics2:material', 46))
mods.minecraft.ore_dict.remove('dustEnderPearl', item('appliedenergistics2:material', 46))
mods.jei.ingredient.hide(item('appliedenergistics2:material', 46))

// Iron Dust
mods.minecraft.ore_dict.remove('dustIron', item('appliedenergistics2:material', 49))
mods.jei.ingredient.hide(item('appliedenergistics2:material', 49))

// Gold Dust
mods.minecraft.ore_dict.remove('dustGold', item('appliedenergistics2:material', 51))
mods.jei.ingredient.hide(item('appliedenergistics2:material', 51))

// Wooden Gear
mods.jei.ingredient.hide(item('appliedenergistics2:material', 40))
mods.minecraft.ore_dict.remove('gearWood', item('appliedenergistics2:material', 40))

// Network Tool
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:network_tool'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('appliedenergistics2:network_tool'))
    .input(ore('wrench'), item('appliedenergistics2:material', 23), item('minecraft:chest'), ore('itemIlluminatedPanel'))
    .register()

// View Cell
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:view_cell'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:view_cell'))
    .shape([
        [metaitem('plateGlass'), metaitem('plateRedAlloy'), metaitem('plateGlass')],
        [metaitem('plateRedAlloy'), ore('crystalCertusQuartz'), metaitem('plateRedAlloy')],
        [metaitem('plateAluminium'), metaitem('plateAluminium'), metaitem('plateAluminium')],
    ])
    .register()

// Blank Pattern
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 52))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 52))
    .shape([
        [item('appliedenergistics2:quartz_glass'), metaitem('plateGlowstone'), item('appliedenergistics2:quartz_glass')],
        [metaitem('plateGlowstone'), ore('crystalCertusQuartz'), metaitem('plateGlowstone')],
        [metaitem('plateAluminium'), metaitem('plateAluminium'), metaitem('plateAluminium')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 52) * 2)
    .shape([
        [item('appliedenergistics2:quartz_glass'), metaitem('plateGlowstone'), item('appliedenergistics2:quartz_glass')],
        [metaitem('plateGlowstone'), ore('crystalPureCertusQuartz'), metaitem('plateGlowstone')],
        [metaitem('plateAluminium'), metaitem('plateAluminium'), metaitem('plateAluminium')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('appliedenergistics2:quartz_glass'),
        metaitem('plateGlowstone') * 2,
        metaitem('plateAluminium') * 2,
        ore('craftCertusQuartz')
    )
    .outputs(item('appliedenergistics2:material', 52) * 4)
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Creative Storage Cell
mods.jei.ingredient.hide(item('appliedenergistics2:creative_storage_cell'))

// 1k Storage Component
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 35))
assembler.recipeBuilder()
    .inputs(
        ore('circuitUlv') * 4,
        metaitem('plateWroughtIron') * 4,
        metaitem('dustCertusQuartz') * 4,
        item('appliedenergistics2:material', 22)
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('appliedenergistics2:material', 35))
    .duration(200)
    .EUt(480)
    .buildAndRegister()

// 4k Storage Component
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 36))
assembler.recipeBuilder()
    .inputs(
        ore('circuitEv') * 4,
        metaitem('plateTitanium') * 4,
        metaitem('dustCertusQuartz') * 4,
        item('appliedenergistics2:material', 22)
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('appliedenergistics2:material', 36))
    .duration(200)
    .EUt(1920)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 22),
        ore('circuitEv') * 4,
        item('appliedenergistics2:material', 35) * 4
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('appliedenergistics2:material', 36))
    .duration(400)
    .EUt(1920)
    .buildAndRegister()

// 16k Storage Component
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 37))
assembler.recipeBuilder()
    .inputs(
        ore('circuitIv') * 4,
        metaitem('plateTungstenSteel') * 4,
        metaitem('dustCertusQuartz') * 8,
        item('appliedenergistics2:material', 24)
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('appliedenergistics2:material', 37))
    .duration(200)
    .EUt(7680)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        ore('circuitIv') * 4,
        item('appliedenergistics2:material', 36) * 4
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('appliedenergistics2:material', 37))
    .duration(400)
    .EUt(7680)
    .buildAndRegister()

// 64k Storage Component
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 38))
assembler.recipeBuilder()
    .inputs(
        ore('circuitLuv') * 4,
        metaitem('plateRhodiumPlatedPalladium') * 4,
        metaitem('dustCertusQuartz') * 8,
        item('appliedenergistics2:material', 24)
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('appliedenergistics2:material', 38))
    .duration(200)
    .EUt(30720)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        ore('circuitLuv') * 4,
        item('appliedenergistics2:material', 37) * 4
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('appliedenergistics2:material', 38))
    .duration(400)
    .EUt(30720)
    .buildAndRegister()

// 1k Fluid Component
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 54))
assembler.recipeBuilder()
    .inputs(
        ore('circuitUlv') * 4,
        metaitem('plateWroughtIron') * 4,
        metaitem('dustNetherQuartz') * 4,
        item('appliedenergistics2:material', 22)
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('appliedenergistics2:material', 54))
    .duration(200)
    .EUt(480)
    .buildAndRegister()

// 4k Fluid Component
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 55))
assembler.recipeBuilder()
    .inputs(
        ore('circuitEv') * 4,
        metaitem('plateTitanium') * 4,
        metaitem('dustNetherQuartz') * 4,
        item('appliedenergistics2:material', 22)
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('appliedenergistics2:material', 55))
    .duration(200)
    .EUt(1920)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 22),
        ore('circuitEv') * 4,
        item('appliedenergistics2:material', 54) * 4
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('appliedenergistics2:material', 55))
    .duration(400)
    .EUt(1920)
    .buildAndRegister()

// 16k Fluid Component
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 56))
assembler.recipeBuilder()
    .inputs(
        ore('circuitIv') * 4,
        metaitem('plateTungstenSteel') * 4,
        metaitem('dustNetherQuartz') * 8,
        item('appliedenergistics2:material', 24)
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('appliedenergistics2:material', 56))
    .duration(200)
    .EUt(7680)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        ore('circuitIv') * 4,
        item('appliedenergistics2:material', 55) * 4
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('appliedenergistics2:material', 56))
    .duration(400)
    .EUt(7680)
    .buildAndRegister()

// 64k Fluid Component
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 57))
assembler.recipeBuilder()
    .inputs(
        ore('circuitLuv') * 4,
        metaitem('plateRhodiumPlatedPalladium') * 4,
        metaitem('dustNetherQuartz') * 8,
        item('appliedenergistics2:material', 24)
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('appliedenergistics2:material', 57))
    .duration(200)
    .EUt(30720)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        ore('circuitLuv') * 4,
        item('appliedenergistics2:material', 56) * 4
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('appliedenergistics2:material', 57))
    .duration(400)
    .EUt(30720)
    .buildAndRegister()

// 2^3 Spatial Component
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 32))
assembler.recipeBuilder()
    .inputs(
        ore('circuitEv') * 4,
        metaitem('plateTitanium') * 4,
        metaitem('dustCertusQuartz') * 32,
        item('appliedenergistics2:material', 23)
    )
    .fluidInputs(fluid('hsla_steel') * 144)
    .outputs(item('appliedenergistics2:material', 32))
    .duration(200)
    .EUt(1920)
    .buildAndRegister()

// 16^3 Spatial Component
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 33))
assembler.recipeBuilder()
    .inputs(
        ore('circuitIv') * 4,
        metaitem('plateTungstenSteel') * 4,
        metaitem('dustCertusQuartz') * 32,
        item('appliedenergistics2:material', 23)
    )
    .fluidInputs(fluid('tungsten_steel') * 144)
    .outputs(item('appliedenergistics2:material', 33))
    .duration(200)
    .EUt(7680)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 23),
        ore('circuitIv') * 4,
        item('appliedenergistics2:material', 32) * 4
    )
    .fluidInputs(fluid('tungsten_steel') * 144)
    .outputs(item('appliedenergistics2:material', 33))
    .duration(400)
    .EUt(7680)
    .buildAndRegister()

// 128^3 Spatial Component
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 34))
assembler.recipeBuilder()
    .inputs(
        ore('circuitLuv') * 4,
        metaitem('plateRhodiumPlatedPalladium') * 4,
        metaitem('dustCertusQuartz') * 32,
        item('appliedenergistics2:material', 23)
    )
    .fluidInputs(fluid('tungsten_steel') * 144)
    .outputs(item('appliedenergistics2:material', 34))
    .duration(200)
    .EUt(30720)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 23),
        ore('circuitLuv') * 4,
        item('appliedenergistics2:material', 33) * 4
    )
    .fluidInputs(fluid('tungsten_steel') * 144)
    .outputs(item('appliedenergistics2:material', 34))
    .duration(400)
    .EUt(30720)
    .buildAndRegister()

// Entropy Manipulator
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:entropy_manipulator'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:entropy_manipulator'))
    .shape([
        [null, item('appliedenergistics2:material', 22), ore('crystalFluix')],
        [null, item('appliedenergistics2:energy_cell'), item('appliedenergistics2:material', 24)],
        [metaitem('stickSteel'), null, null],
    ])
    .register()

// Charged Staff
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:charged_staff'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:charged_staff'))
    .shape([
        [null, item('appliedenergistics2:material', 1), item('appliedenergistics2:material', 1)],
        [null, item('appliedenergistics2:energy_cell'), item('appliedenergistics2:material', 1)],
        [metaitem('stickSteel'), null, null],
    ])
    .register()

// Matter Cannon
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:matter_cannon'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:matter_cannon'))
    .shape([
        [metaitem('plateSteel'), metaitem('plateSteel'), item('appliedenergistics2:material', 43)],
        [item('appliedenergistics2:material', 36), item('appliedenergistics2:dense_energy_cell'), null],
        [metaitem('plateSteel'), null, null],
    ])
    .register()

// Color Applicator
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:color_applicator'))
mods.jei.ingredient.hide(item('appliedenergistics2:color_applicator'))

// Wireless Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:wireless_terminal'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:wireless_terminal'))
    .shape([
        [
            item('appliedenergistics2:material', 41),
            item('appliedenergistics2:part', 380),
            item('appliedenergistics2:material', 41),
        ],
        [item('appliedenergistics2:material', 24), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 24)],
        [metaitem('plateNetherQuartz'), item('appliedenergistics2:dense_energy_cell'), metaitem('plateNetherQuartz')],
    ])
    .register()

// Wireless Crafting Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:wireless_crafting_terminal'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:wireless_crafting_terminal'))
    .shape([
        [
            item('appliedenergistics2:material', 41),
            item('appliedenergistics2:part', 360),
            item('appliedenergistics2:material', 41),
        ],
        [item('appliedenergistics2:material', 24), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 24)],
        [metaitem('plateNetherQuartz'), item('appliedenergistics2:dense_energy_cell'), metaitem('plateNetherQuartz')],
    ])
    .register()

// Wireless Fluid Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:wireless_fluid_terminal'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:wireless_fluid_terminal'))
    .shape([
        [
            item('appliedenergistics2:material', 41),
            item('appliedenergistics2:part', 520),
            item('appliedenergistics2:material', 41),
        ],
        [item('appliedenergistics2:material', 24), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 24)],
        [metaitem('plateNetherQuartz'), item('appliedenergistics2:dense_energy_cell'), metaitem('plateNetherQuartz')],
    ])
    .register()

// Wireless Pattern Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:wireless_pattern_terminal'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:wireless_pattern_terminal'))
    .shape([
        [
            item('appliedenergistics2:material', 41),
            item('appliedenergistics2:part', 340),
            item('appliedenergistics2:material', 41),
        ],
        [item('appliedenergistics2:material', 24), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 24)],
        [metaitem('plateNetherQuartz'), item('appliedenergistics2:dense_energy_cell'), metaitem('plateNetherQuartz')],
    ])
    .register()

// Wireless Interface Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:wireless_interface_terminal'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:wireless_interface_terminal'))
    .shape([
        [
            item('appliedenergistics2:material', 41),
            item('appliedenergistics2:part', 480),
            item('appliedenergistics2:material', 41),
        ],
        [item('appliedenergistics2:material', 24), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 24)],
        [metaitem('plateNetherQuartz'), item('appliedenergistics2:dense_energy_cell'), metaitem('plateNetherQuartz')],
    ])
    .register()

// Biometric Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:biometric_card'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:biometric_card'))
    .shape([
        [item('appliedenergistics2:material', 22), metaitem('plateIron'), metaitem('plateIron')],
        [metaitem('plateGold'), metaitem('plateRedAlloy'), metaitem('plateGold')],
        [null, null, null],
    ])
    .register()

// Memory Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:memory_card'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:memory_card'))
    .shape([
        [item('appliedenergistics2:material', 23), metaitem('plateIron'), metaitem('plateIron')],
        [metaitem('plateGold'), metaitem('plateRedAlloy'), metaitem('plateGold')],
        [null, null, null],
    ])
    .register()

// Basic Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 25))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 25))
    .shape([
        [metaitem('plateGold'), metaitem('plateAluminium'), null],
        [metaitem('plateRedAlloy'), item('appliedenergistics2:material', 23), metaitem('plateAluminium')],
        [metaitem('plateGold'), metaitem('plateAluminium'), null],
    ])
    .register()

// Capacity Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 27))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 27))
    .shape([
        [item('appliedenergistics2:material', 25), item('appliedenergistics2:material', 35), null],
        [item('appliedenergistics2:material', 35), ore('gemCertusQuartz'), null],
        [null, null, null],
    ])
    .register()

// Crafting Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 53))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 53))
    .shape([
        [item('appliedenergistics2:material', 25), item('appliedenergistics2:material', 35), null],
        [item('appliedenergistics2:material', 35), item('minecraft:crafting_table'), null],
        [null, null, null],
    ])
    .register()

// Redstone Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 26))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 26))
    .shape([
        [item('appliedenergistics2:material', 25), item('minecraft:redstone_torch'), null],
        [item('minecraft:redstone_torch'), item('appliedenergistics2:material', 23), null],
        [null, null, null],
    ])
    .register()

// Advanced Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 28))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 28))
    .shape([
        [metaitem('platePlatinum'), metaitem('plateAluminium'), null],
        [metaitem('plateRedAlloy'), item('appliedenergistics2:material', 23), metaitem('plateAluminium')],
        [metaitem('platePlatinum'), metaitem('plateAluminium'), null],
    ])
    .register()

// Fuzzy Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 29))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 29))
    .shape([
        [item('appliedenergistics2:material', 28), item('appliedenergistics2:material', 24), null],
        [item('appliedenergistics2:material', 22), item('appliedenergistics2:material', 23), null],
        [null, null, null],
    ])
    .register()

// Inverter Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 31))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 31))
    .shape([
        [item('appliedenergistics2:material', 28), metaitem('cover.activity.detector'), null],
        [metaitem('cover.activity.detector'), item('appliedenergistics2:material', 23), null],
        [null, null, null],
    ])
    .register()

// Pattern Expansion Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 58))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('appliedenergistics2:material', 58))
    .input(item('appliedenergistics2:material', 28), ore('craftInterfaceDual'), item('appliedenergistics2:material', 23))
    .register()
mods.minecraft.crafting.shapelessBuilder()
    .output(item('appliedenergistics2:material', 58))
    .input(
        item('appliedenergistics2:material', 28),
        ore('craftInterfaceItem'),
        ore('craftInterfaceFluid'),
        item('appliedenergistics2:material', 23)
    )
    .register()

// Acceleration Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 30))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 30))
    .shape([
        [item('appliedenergistics2:material', 28), item('appliedenergistics2:material', 24), null],
        [item('appliedenergistics2:material', 22), ore('craftFluix'), null],
        [null, null, null],
    ])
    .register()

// Quantum Link Card
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 59))
    .shape([
        [
            item('appliedenergistics2:material', 42),
            metaitem('cover.digital.wireless'),
            item('appliedenergistics2:material', 42),
        ],
        [
            item('appliedenergistics2:material', 47),
            item('appliedenergistics2:material', 28),
            item('appliedenergistics2:material', 47),
        ],
        [
            item('appliedenergistics2:material', 42),
            metaitem('sensor.ev'),
            item('appliedenergistics2:material', 42),
        ],
    ])
    .register()

// Magnet Card
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 60))
    .shape([
        [metaitem('plateRedstone'), item('appliedenergistics2:part', 300), metaitem('plateLapis')],
        [metaitem('stickNeodymiumMagnetic'), item('appliedenergistics2:material', 28), metaitem('stickNeodymiumMagnetic')],
        [metaitem('stickNeodymiumMagnetic'), null, metaitem('stickNeodymiumMagnetic')],
    ])
    .register()

// Wireless Receiver
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 41))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 41))
    .shape([
        [ore('craftGlassCable'), item('appliedenergistics2:material', 9), ore('craftGlassCable')],
        [metaitem('sensor.ev'), metaitem('stickTitanium'), metaitem('sensor.ev')],
        [metaitem('plateCertusQuartz'), ore('circuitEv'), metaitem('plateCertusQuartz')],
    ])
    .register()

// Wireless Boosting
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 42))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 42))
    .shape([
        [metaitem('dustFluix'), ore('crystalCertusQuartz'), metaitem('plateEnderPearl')],
        [metaitem('plateTitanium'), metaitem('plateTitanium'), metaitem('plateTitanium')],
        [null, null, null],
    ])
    .register()

// Annihilation Plane
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 300))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 300))
    .shape([
        [ore('craftingToolScrewdriver'), metaitem('dustFluix'), ore('craftingToolSoftHammer')],
        [metaitem('screwSteel'), metaitem('dustFluix'), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 44), metaitem('plateSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 300))
    .shape([
        [ore('craftingToolSoftHammer'), metaitem('dustFluix'), ore('craftingToolScrewdriver')],
        [metaitem('screwSteel'), metaitem('dustFluix'), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 44), metaitem('plateSteel')],
    ])
    .register()

// Fluid Annihilation Plane
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 302))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 302))
    .shape([
        [ore('craftingToolScrewdriver'), metaitem('dustLapis'), ore('craftingToolSoftHammer')],
        [metaitem('screwStainlessSteel'), metaitem('dustLapis'), metaitem('screwSteel')],
        [metaitem('plateStainlessSteel'), item('appliedenergistics2:material', 44), metaitem('plateStainlessSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 302))
    .shape([
        [ore('craftingToolSoftHammer'), ore('gemLapis'), ore('craftingToolScrewdriver')],
        [metaitem('screwStainlessSteel'), ore('gemLapis'), metaitem('screwStainlessSteel')],
        [metaitem('plateStainlessSteel'), item('appliedenergistics2:material', 44), metaitem('plateStainlessSteel')],
    ])
    .register()

// Formation Plane
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 320))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 320))
    .shape([
        [ore('craftingToolScrewdriver'), metaitem('dustFluix'), ore('craftingToolSoftHammer')],
        [metaitem('screwSteel'), metaitem('dustFluix'), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 43), metaitem('plateSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 320))
    .shape([
        [ore('craftingToolSoftHammer'), metaitem('dustFluix'), ore('craftingToolScrewdriver')],
        [metaitem('screwSteel'), metaitem('dustFluix'), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 43), metaitem('plateSteel')],
    ])
    .register()

// Fluid Formation Plane
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 321))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 302))
    .shape([
        [ore('craftingToolScrewdriver'), metaitem('dustLapis'), ore('craftingToolSoftHammer')],
        [metaitem('screwStainlessSteel'), metaitem('dustLapis'), metaitem('screwSteel')],
        [metaitem('plateStainlessSteel'), item('appliedenergistics2:material', 43), metaitem('plateStainlessSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 302))
    .shape([
        [ore('craftingToolSoftHammer'), ore('gemLapis'), ore('craftingToolScrewdriver')],
        [metaitem('screwStainlessSteel'), ore('gemLapis'), metaitem('screwStainlessSteel')],
        [metaitem('plateStainlessSteel'), item('appliedenergistics2:material', 43), metaitem('plateStainlessSteel')],
    ])
    .register()

// Certus Quartz Crystal
mods.jei.ingredient.hide(item('appliedenergistics2:material'))

////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Cable Anchor
def anchorIngotsX4 = [
    item('minecraft:iron_ingot'),
    metaitem('ingotCopper'),
    metaitem('ingotAnnealedCopper'),
    metaitem('ingotTin'),
    metaitem('ingotLead'),
    metaitem('ingotNickel'),
    metaitem('ingotSilver'),
    metaitem('ingotSteel'),
]
def anchorIngotsX6 = [
    metaitem('ingotBronze'),
    metaitem('ingotBrass'),
    metaitem('ingotInvar'),
    metaitem('ingotDarkSteel'),
]
def anchorIngotsX8 = [
    metaitem('ingotStainlessSteel'),
    metaitem('ingotTitanium'),
]
anchorIngotsX4.each { anchorIngotX4 ->
    mods.minecraft.crafting.shapelessBuilder()
        .output(item('appliedenergistics2:part', 120) * 4)
        .input(anchorIngotX4, ore('craftingToolKnife'))
        .register()
    cutter.recipeBuilder()
        .inputs(anchorIngotX4)
        .fluidInputs(fluid('lubricant') * 1)
        .outputs(item('appliedenergistics2:part', 120) * 8)
        .duration(80)
        .EUt(480)
        .buildAndRegister()
    cutter.recipeBuilder()
        .inputs(anchorIngotX4)
        .fluidInputs(fluid('distilled_water') * 3)
        .outputs(item('appliedenergistics2:part', 120) * 8)
        .duration(160)
        .EUt(480)
        .buildAndRegister()
    cutter.recipeBuilder()
        .inputs(anchorIngotX4)
        .fluidInputs(fluid('water') * 4)
        .outputs(item('appliedenergistics2:part', 120) * 8)
        .duration(200)
        .EUt(480)
        .buildAndRegister()
}
anchorIngotsX6.each { anchorIngotX6 ->
    mods.minecraft.crafting.shapelessBuilder()
        .output(item('appliedenergistics2:part', 120) * 6)
        .input(anchorIngotX6, ore('craftingToolKnife'))
        .register()
    cutter.recipeBuilder()
        .inputs(anchorIngotX6)
        .fluidInputs(fluid('lubricant') * 1)
        .outputs(item('appliedenergistics2:part', 120) * 12)
        .duration(80)
        .EUt(480)
        .buildAndRegister()
    cutter.recipeBuilder()
        .inputs(anchorIngotX6)
        .fluidInputs(fluid('distilled_water') * 3)
        .outputs(item('appliedenergistics2:part', 120) * 12)
        .duration(160)
        .EUt(480)
        .buildAndRegister()
    cutter.recipeBuilder()
        .inputs(anchorIngotX6)
        .fluidInputs(fluid('water') * 4)
        .outputs(item('appliedenergistics2:part', 120) * 12)
        .duration(200)
        .EUt(480)
        .buildAndRegister()
}
anchorIngotsX8.each { anchorIngotX8 ->
    mods.minecraft.crafting.shapelessBuilder()
        .output(item('appliedenergistics2:part', 120) * 8)
        .input(anchorIngotX8, ore('craftingToolKnife'))
        .register()
    cutter.recipeBuilder()
        .inputs(anchorIngotX8)
        .fluidInputs(fluid('lubricant') * 1)
        .outputs(item('appliedenergistics2:part', 120) * 16)
        .duration(80)
        .EUt(480)
        .buildAndRegister()
    cutter.recipeBuilder()
        .inputs(anchorIngotX8)
        .fluidInputs(fluid('distilled_water') * 3)
        .outputs(item('appliedenergistics2:part', 120) * 16)
        .duration(160)
        .EUt(480)
        .buildAndRegister()
    cutter.recipeBuilder()
        .inputs(anchorIngotX8)
        .fluidInputs(fluid('water') * 4)
        .outputs(item('appliedenergistics2:part', 120) * 16)
        .duration(200)
        .EUt(480)
        .buildAndRegister()
}

// ME Controller
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:controller'))
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24) * 2,
        ore('circuitHv') * 2,
        metaitem('plateBlackSteel') * 4,
        item('appliedenergistics2:fluix_block')
    )
    .fluidInputs(fluid('plastic') * 144)
    .outputs(item('appliedenergistics2:controller'))
    .duration(200)
    .EUt(480)
    .buildAndRegister()

// Quartz Glass
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:quartz_glass'))
alloySmelter.recipeBuilder()
    .inputs(
        ore('blockGlass'),
        metaitem('dustCertusQuartz')
    )
    .outputs(item('appliedenergistics2:quartz_glass'))
    .duration(20)
    .EUt(480)
    .buildAndRegister()
alloySmelter.recipeBuilder()
    .inputs(
        ore('blockGlass'),
        metaitem('dustQuartzite')
    )
    .outputs(item('appliedenergistics2:quartz_glass'))
    .duration(20)
    .EUt(480)
    .buildAndRegister()

// Vibrant Quartz Glass
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:quartz_vibrant_glass'))
alloySmelter.recipeBuilder()
    .inputs(
        item('appliedenergistics2:quartz_glass'),
        item('minecraft:glowstone_dust') * 8
    )
    .outputs(item('appliedenergistics2:quartz_vibrant_glass'))
    .duration(20)
    .EUt(480)
    .buildAndRegister()
alloySmelter.recipeBuilder()
    .inputs(
        item('minecraft:glowstone'),
        metaitem('dustAluminium') * 8
    )
    .outputs(item('appliedenergistics2:quartz_vibrant_glass'))
    .duration(20)
    .EUt(480)
    .buildAndRegister()

// Quartz Fixture
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:quartz_fixture'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('appliedenergistics2:quartz_fixture'))
    .input(ore('gemCertusQuartz'), metaitem('stickAluminium'))
    .register()

// Charger
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:charger'))
mods.jei.ingredient.hide(item('appliedenergistics2:charger'))

// Security Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:security_station'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:security_station'))
    .shape([
        [metaitem('plateSteel'), ore('chestWood'), metaitem('plateSteel')],
        [ore('craftGlassCable'), item('appliedenergistics2:material', 35), ore('craftGlassCable')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 22), metaitem('plateSteel')],
    ])
    .register()

// Quantum Ring
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:quantum_ring'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:quantum_ring'))
    .shape([
        [metaitem('plateTitanium'), item('appliedenergistics2:material', 22), metaitem('plateTitanium')],
        [item('gtexpert:meta_item_1', 1), metaitem('emitter.ev'), ore('craftGlassCable')],
        [metaitem('plateTitanium'), item('appliedenergistics2:material', 22), metaitem('plateTitanium')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('appliedenergistics2:material', 22),
        ore('craftGlassCable'),
        item('gtexpert:meta_item_1', 1),
        metaitem('emitter.ev'),
        metaitem('plateTitanium') * 2
    )
    .outputs(item('appliedenergistics2:quantum_ring'))
    .duration(100)
    .EUt(1920)
    .buildAndRegister()

// Quantum Link
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:quantum_link'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:quantum_link'))
    .shape([
        [metaitem('plateGlass'), ore('pearlFluix'), metaitem('plateGlass')],
        [ore('pearlFluix'), metaitem('field.generator.ev'), ore('pearlFluix')],
        [metaitem('plateGlass'), ore('pearlFluix'), metaitem('plateGlass')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('field.generator.ev'),
        ore('pearlFluix') * 2,
        metaitem('plateGlass') * 2
    )
    .outputs(item('appliedenergistics2:quantum_link'))
    .duration(100)
    .EUt(1920)
    .buildAndRegister()

// Spatial Pylon
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:spatial_pylon'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:spatial_pylon'))
    .shape([
        [metaitem('plateGlass'), ore('craftGlassCable'), metaitem('plateGlass')],
        [metaitem('dustFluix'), ore('crystalFluix'), metaitem('dustFluix')],
        [metaitem('plateGlass'), ore('craftGlassCable'), metaitem('plateGlass')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('plateGlass') * 2,
        ore('craftGlassCable') * 2,
        metaitem('dustFluix'),
        ore('crystalFluix')
    )
    .outputs(item('appliedenergistics2:spatial_pylon'))
    .duration(100)
    .EUt(1920)
    .buildAndRegister()

// ME IO Port
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:io_port'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:io_port'))
    .shape([
        [metaitem('plateGlass'), metaitem('plateGlass'), metaitem('plateGlass')],
        [ore('craftGlassCable'), item('appliedenergistics2:drive'), ore('craftGlassCable')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 24), metaitem('plateSteel')],
    ])
    .register()

// ME Spatial IO Port
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:spatial_io_port'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:spatial_io_port'))
    .shape([
        [metaitem('plateGlass'), metaitem('plateGlass'), metaitem('plateGlass')],
        [ore('craftGlassCable'), item('appliedenergistics2:drive'), ore('craftGlassCable')],
        [metaitem('plateSteel'), item('gtexpert:meta_item_1', 1), metaitem('plateSteel')],
    ])
    .register()

// ME Chest
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:chest'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:chest'))
    .shape([
        [metaitem('plateSteel'), item('appliedenergistics2:part', 380), metaitem('plateSteel')],
        [ore('craftGlassCable'), ore('chestWood'), ore('craftGlassCable')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 22), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('appliedenergistics2:part', 380),
        item('appliedenergistics2:material', 22),
        ore('chestWood'),
        ore('craftGlassCable'),
        metaitem('plateSteel') * 2
    )
    .outputs(item('appliedenergistics2:chest'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Drive
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:drive'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:drive'))
    .shape([
        [metaitem('plateBlackSteel'), item('gtexpert:meta_item_1', 1), metaitem('plateBlackSteel')],
        [ore('craftGlassCable'), item('appliedenergistics2:chest'), ore('craftGlassCable')],
        [metaitem('plateBlackSteel'), item('appliedenergistics2:material', 24), metaitem('plateBlackSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('appliedenergistics2:material', 24),
        item('gtexpert:meta_item_1', 1),
        item('appliedenergistics2:chest'),
        ore('craftGlassCable'),
        metaitem('plateBlackSteel') * 2
    )
    .outputs(item('appliedenergistics2:drive'))
    .duration(100)
    .EUt(1920)
    .buildAndRegister()

// ME Interface
mods.minecraft.crafting.remove(resource('appliedenergistics2:network/blocks/interfaces_interface'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:interface'))
    .shape([
        [metaitem('plateSteel'), metaitem('plateGlass'), metaitem('plateSteel')],
        [item('gtexpert:meta_item_1', 1), item('gregtech:machine_casing', 3), item('gtexpert:meta_item_1', 1)],
        [metaitem('plateSteel'), metaitem('plateGlass'), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('gregtech:machine_casing', 3),
        item('gtexpert:meta_item_1', 1),
        metaitem('plateGlass'),
        metaitem('plateSteel') * 2
    )
    .outputs(item('appliedenergistics2:interface'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Fluid Interface
mods.minecraft.crafting.remove(resource('aeadditions:misc/parttointerface'))
mods.minecraft.crafting.remove(resource('appliedenergistics2:network/blocks/fluid_interfaces_interface'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:fluid_interface'))
    .shape([
        [metaitem('plateStainlessSteel'), metaitem('plateGlass'), metaitem('plateStainlessSteel')],
        [item('gtexpert:meta_item_1', 1), item('gregtech:machine_casing', 3), item('gtexpert:meta_item_1', 1)],
        [metaitem('plateStainlessSteel'), metaitem('plateGlass'), metaitem('plateStainlessSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        item('gregtech:machine_casing', 3),
        item('gtexpert:meta_item_1', 1),
        metaitem('plateGlass'),
        metaitem('plateStainlessSteel') * 2
    )
    .outputs(item('appliedenergistics2:fluid_interface'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Cell Workbench
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:cell_workbench'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:cell_workbench'))
    .shape([
        [ore('wool'), metaitem('cover.screen'), ore('wool')],
        [metaitem('plateAluminium'), item('appliedenergistics2:material', 23), metaitem('plateAluminium')],
        [metaitem('plateAluminium'), metaitem('plateAluminium'), metaitem('plateAluminium')],
    ])
    .register()

// Matter Condenser
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:condenser'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:condenser'))
    .shape([
        [metaitem('plateSteel'), metaitem('electric.piston.hv'), metaitem('plateSteel')],
        [metaitem('electric.piston.hv'), metaitem('hull.hv'), metaitem('electric.piston.hv')],
        [metaitem('plateSteel'), metaitem('electric.piston.hv'), metaitem('plateSteel')],
    ])
    .register()

// Energy Acceptor
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:energy_acceptor'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:energy_acceptor'))
    .shape([
        [metaitem('plateSteel'), metaitem('plateGlass'), metaitem('plateSteel')],
        [metaitem('plateGlass'), ore('crystalFluix'), metaitem('plateGlass')],
        [metaitem('plateSteel'), metaitem('plateGlass'), metaitem('plateSteel')],
    ])
    .register()

// Vibration Chamber
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:vibration_chamber'))
assembler.recipeBuilder()
    .inputs(
        ore('circuitHv') * 2,
        ore('cableGtSingleGold') * 2,
        metaitem('wireGtDoubleKanthal') * 4,
        metaitem('plateSteel') * 7
    )
    .outputs(item('appliedenergistics2:vibration_chamber'))
    .duration(200)
    .EUt(480)
    .buildAndRegister()

// Energy Cell
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:energy_cell'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:energy_cell'))
    .shape([
        [metaitem('plateFluix'), ore('circuitHv'), metaitem('plateFluix')],
        [ore('craftCoveredCable'), ore('batteryHv'), ore('craftCoveredCable')],
        [metaitem('plateFluix'), ore('cableGtOctalAluminium'), metaitem('plateFluix')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('plateFluix') * 2,
        ore('batteryHv'),
        ore('circuitHv'),
        ore('craftCoveredCable')
    )
    .outputs(item('appliedenergistics2:energy_cell'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Dense Energy Cell
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:dense_energy_cell'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:dense_energy_cell'))
    .shape([
        [item('appliedenergistics2:energy_cell'), ore('circuitEv'), item('appliedenergistics2:energy_cell')],
        [ore('craftDenseCoveredCable'), item('gtexpert:meta_item_1', 1), ore('craftDenseCoveredCable')],
        [item('appliedenergistics2:energy_cell'), metaitem('battery_buffer.ev.16'), item('appliedenergistics2:energy_cell')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('appliedenergistics2:energy_cell') * 2,
        metaitem('battery_buffer.ev.16'),
        item('gtexpert:meta_item_1', 1),
        ore('circuitEv'),
        ore('craftDenseCoveredCable')
    )
    .outputs(item('appliedenergistics2:dense_energy_cell'))
    .duration(20)
    .EUt(7680)
    .buildAndRegister()

// Crafting Unit
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:crafting_unit'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:crafting_unit'))
    .shape([
        [metaitem('plateSteel'), item('appliedenergistics2:material', 22), metaitem('plateSteel')],
        [ore('circuitHv'), item('appliedenergistics2:material', 24), ore('circuitHv')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 23), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('appliedenergistics2:material', 22),
        item('appliedenergistics2:material', 24),
        item('appliedenergistics2:material', 23),
        ore('circuitHv'),
        metaitem('plateSteel') * 2
    )
    .outputs(item('appliedenergistics2:crafting_unit'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Molecular Assembler
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:molecular_assembler'))
assembler.recipeBuilder()
    .inputs(
        metaitem('plateGlass') * 2,
        ore('circuitHv') * 2,
        metaitem('conveyor.module.hv') * 2,
        metaitem('robot.arm.hv') * 2,
        metaitem('plateSteel') * 4
    )
    .fluidInputs(fluid('plastic') * 144)
    .outputs(item('appliedenergistics2:molecular_assembler'))
    .duration(200)
    .EUt(480)
    .buildAndRegister()

// Light Detecting Fixture
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:light_detector'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('appliedenergistics2:light_detector'))
    .input(ore('gemChargedCertusQuartz'), metaitem('stickIron'))
    .register()

// Illuminated Panel
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 180))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 180))
    .shape([
        [null, metaitem('plateGlowstone'), null],
        [metaitem('plateSteel'), metaitem('plateRedAlloy'), metaitem('cover.screen')],
        [null, metaitem('plateGlowstone'), null],
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        metaitem('plateGlowstone'),
        metaitem('plateSteel'),
        metaitem('plateRedAlloy'),
        metaitem('cover.screen')
    )
    .outputs(item('appliedenergistics2:part', 180))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 380))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 380))
    .shape([
        [metaitem('stickSteel'), ore('craftingToolScrewdriver'), metaitem('stickSteel')],
        [item('appliedenergistics2:part', 180), ore('circuitHv'), metaitem('plateSteel')],
        [metaitem('stickSteel'), metaitem('screwSteel'), metaitem('stickSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 380))
    .shape([
        [metaitem('stickSteel'), metaitem('screwSteel'), metaitem('stickSteel')],
        [item('appliedenergistics2:part', 180), ore('circuitHv'), metaitem('plateSteel')],
        [metaitem('stickSteel'), ore('craftingToolScrewdriver'), metaitem('stickSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:part', 180),
        ore('circuitHv'),
        metaitem('screwSteel'),
        metaitem('plateSteel'),
        metaitem('stickSteel') * 2
    )
    .outputs(item('appliedenergistics2:part', 380))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Fluid Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 520))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 520))
    .shape([
        [metaitem('stickStainlessSteel'), ore('craftingToolScrewdriver'), metaitem('stickStainlessSteel')],
        [item('appliedenergistics2:part', 180), ore('circuitHv'), metaitem('plateStainlessSteel')],
        [metaitem('stickStainlessSteel'), metaitem('screwStainlessSteel'), metaitem('stickStainlessSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 520))
    .shape([
        [metaitem('stickStainlessSteel'), metaitem('screwStainlessSteel'), metaitem('stickStainlessSteel')],
        [item('appliedenergistics2:part', 180), ore('circuitHv'), metaitem('plateStainlessSteel')],
        [metaitem('stickStainlessSteel'), ore('craftingToolScrewdriver'), metaitem('stickStainlessSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:part', 180),
        ore('circuitHv'),
        metaitem('screwStainlessSteel'),
        metaitem('plateStainlessSteel'),
        metaitem('stickStainlessSteel') * 2
    )
    .outputs(item('appliedenergistics2:part', 520))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Crafting Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 360))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 360))
    .shape([
        [ore('craftingToolScrewdriver'), item('appliedenergistics2:part', 380), ore('craftingToolSoftHammer')],
        [metaitem('screwSteel'), metaitem('workbench'), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 22), metaitem('plateSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 360))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 380), ore('craftingToolScrewdriver')],
        [metaitem('screwSteel'), metaitem('workbench'), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 22), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 22),
        item('appliedenergistics2:part', 380),
        metaitem('workbench'),
        metaitem('screwSteel'),
        metaitem('plateSteel')
    )
    .outputs(item('appliedenergistics2:part', 360))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Interface Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 480))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 480))
    .shape([
        [ore('craftingToolScrewdriver'), item('appliedenergistics2:part', 380), ore('craftingToolSoftHammer')],
        [metaitem('screwSteel'), ore('craftInterfaceItem'), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 23), metaitem('plateSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 480))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 380), ore('craftingToolScrewdriver')],
        [metaitem('screwSteel'), ore('craftInterfaceItem'), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 23), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 23),
        item('appliedenergistics2:part', 380),
        ore('craftInterfaceItem'),
        metaitem('screwSteel'),
        metaitem('plateSteel')
    )
    .outputs(item('appliedenergistics2:part', 480))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Configuration Interface Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 521))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 521))
    .shape([
        [ore('craftingToolScrewdriver'), item('appliedenergistics2:part', 380), ore('craftingToolSoftHammer')],
        [metaitem('screwSteel'), ore('craftInterfaceItem'), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('gtexpert:meta_item_1', 1), metaitem('plateSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 521))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 380), ore('craftingToolScrewdriver')],
        [metaitem('screwSteel'), ore('craftInterfaceItem'), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('gtexpert:meta_item_1', 1), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('gtexpert:meta_item_1', 1),
        item('appliedenergistics2:part', 380),
        ore('craftInterfaceItem'),
        metaitem('screwSteel'),
        metaitem('plateSteel')
    )
    .outputs(item('appliedenergistics2:part', 521))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Configuration Fluid Interface Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 522))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 522))
    .shape([
        [ore('craftingToolScrewdriver'), item('appliedenergistics2:part', 380), ore('craftingToolSoftHammer')],
        [metaitem('screwStainlessSteel'), ore('craftInterfaceFluid'), metaitem('screwStainlessSteel')],
        [metaitem('plateStainlessSteel'), item('gtexpert:meta_item_1', 1), metaitem('plateStainlessSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 522))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 380), ore('craftingToolScrewdriver')],
        [metaitem('screwStainlessSteel'), ore('craftInterfaceFluid'), metaitem('screwStainlessSteel')],
        [metaitem('plateStainlessSteel'), item('gtexpert:meta_item_1', 1), metaitem('plateStainlessSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('gtexpert:meta_item_1', 1),
        item('appliedenergistics2:part', 380),
        ore('craftInterfaceFluid'),
        metaitem('screwStainlessSteel'),
        metaitem('plateStainlessSteel')
    )
    .outputs(item('appliedenergistics2:part', 522))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Pattern Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 340))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 340))
    .shape([
        [ore('craftingToolScrewdriver'), item('appliedenergistics2:part', 380), ore('craftingToolSoftHammer')],
        [metaitem('screwSteel'), item('appliedenergistics2:material', 52), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 23), metaitem('plateSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 340))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 380), ore('craftingToolScrewdriver')],
        [metaitem('screwSteel'), item('appliedenergistics2:material', 52), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 23), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 23),
        item('appliedenergistics2:part', 380),
        item('appliedenergistics2:material', 52),
        metaitem('screwSteel'),
        metaitem('plateSteel')
    )
    .outputs(item('appliedenergistics2:part', 340))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Extended Processing Pattern Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 341))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 341))
    .shape([
        [ore('craftingToolScrewdriver'), item('appliedenergistics2:part', 340), ore('craftingToolSoftHammer')],
        [metaitem('screwSteel'), item('appliedenergistics2:material', 52), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 24), metaitem('plateSteel')],
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 341))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 340), ore('craftingToolScrewdriver')],
        [metaitem('screwSteel'), item('appliedenergistics2:material', 52), metaitem('screwSteel')],
        [metaitem('plateSteel'), item('appliedenergistics2:material', 24), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        item('appliedenergistics2:part', 340),
        item('appliedenergistics2:material', 52),
        metaitem('screwSteel'),
        metaitem('plateSteel')
    )
    .outputs(item('appliedenergistics2:part', 341))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// P2P Tunnel
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 460))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 460))
    .shape([
        [item('appliedenergistics2:material', 24), metaitem('plateAluminium'), item('appliedenergistics2:material', 24)],
        [metaitem('plateAluminium'), item('appliedenergistics2:part', 180), metaitem('plateAluminium')],
        [ore('crystalPureFluix'), ore('crystalPureFluix'), ore('crystalPureFluix')],
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        item('appliedenergistics2:part', 180),
        ore('crystalPureFluix') * 2,
        metaitem('plateAluminium') * 2
    )
    .outputs(item('appliedenergistics2:part', 460))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Wireless Access Point
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:wireless_access_point'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:wireless_access_point'))
    .shape([
        [null, item('appliedenergistics2:material', 41), null],
        [null, item('appliedenergistics2:material', 23), null],
        [null, ore('craftGlassCable'), null],
    ])
    .register()

// ME Level Emitter
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 280))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 280))
    .shape([
        [null, metaitem('plateSteel'), null],
        [ore('craftGlassCable'), item('minecraft:redstone_torch'), ore('craftGlassCable')],
        [null, metaitem('plateSteel'), null],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('minecraft:redstone_torch'),
        ore('craftGlassCable'),
        metaitem('plateSteel')
    )
    .outputs(item('appliedenergistics2:part', 280))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Fluid Level Emitter
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 281))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 281))
    .shape([
        [null, metaitem('plateStainlessSteel'), null],
        [ore('craftGlassCable'), item('minecraft:redstone_torch'), ore('craftGlassCable')],
        [null, metaitem('plateStainlessSteel'), null],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        item('minecraft:redstone_torch'),
        ore('craftGlassCable'),
        metaitem('plateStainlessSteel')
    )
    .outputs(item('appliedenergistics2:part', 281))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Storage Bus
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 220))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 220))
    .shape([
        [metaitem('plateSteel'), ore('craftingToolSoftHammer'), metaitem('plateSteel')],
        [metaitem('conveyor.module.hv'), ore('craftInterfaceItem'), metaitem('conveyor.module.hv')],
        [metaitem('plateSteel'), metaitem('item_filter'), metaitem('plateSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('conveyor.module.hv'),
        metaitem('item_filter'),
        ore('craftInterfaceItem'),
        metaitem('plateSteel') * 2
    )
    .outputs(item('appliedenergistics2:part', 220))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Fluid Storage Bus
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 221))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 221))
    .shape([
        [metaitem('plateStainlessSteel'), ore('craftingToolSoftHammer'), metaitem('plateStainlessSteel')],
        [metaitem('electric.pump.hv'), ore('craftInterfaceFluid'), metaitem('electric.pump.hv')],
        [metaitem('plateStainlessSteel'), metaitem('fluid_filter'), metaitem('plateStainlessSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('electric.pump.hv'),
        metaitem('fluid_filter'),
        ore('craftInterfaceFluid'),
        metaitem('plateStainlessSteel') * 2
    )
    .outputs(item('appliedenergistics2:part', 221))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME OreDict Storage Bus
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 222))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 222))
    .shape([
        [metaitem('plateTitanium'), ore('craftingToolSoftHammer'), metaitem('plateTitanium')],
        [metaitem('conveyor.module.hv'), ore('craftInterfaceItem'), metaitem('conveyor.module.hv')],
        [metaitem('plateTitanium'), metaitem('ore_dictionary_filter'), metaitem('plateTitanium')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('conveyor.module.hv'),
        metaitem('ore_dictionary_filter'),
        ore('craftInterfaceItem'),
        metaitem('plateTitanium') * 2
    )
    .outputs(item('appliedenergistics2:part', 222))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Toggle Bus
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 80))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('appliedenergistics2:part', 80))
    .input(item('appliedenergistics2:part', 100))
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 80))
    .shape([
        [null, metaitem('plateRedAlloy'), null],
        [ore('craftGlassCable'), item('minecraft:lever'), ore('craftGlassCable')],
        [null, metaitem('plateRedAlloy'), null],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('minecraft:lever'),
        ore('craftGlassCable'),
        metaitem('plateRedAlloy')
    )
    .outputs(item('appliedenergistics2:part', 80))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Inverted Toggle Bus
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 100))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('appliedenergistics2:part', 100))
    .input(item('appliedenergistics2:part', 80))
    .register()

// ME Import Bus
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 240))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('appliedenergistics2:part', 240))
    .input(item('appliedenergistics2:part', 260))
    .register()

// ME Fluid Import Bus
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 241))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('appliedenergistics2:part', 241))
    .input(item('appliedenergistics2:part', 261))
    .register()

// ME Export Bus
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 260))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('appliedenergistics2:part', 260))
    .input(item('appliedenergistics2:part', 240))
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 260))
    .shape([
        [ore('craftingToolScrewdriver'), metaitem('plateTitanium'), ore('craftingToolSoftHammer')],
        [item('appliedenergistics2:material', 44), metaitem('item_filter'), item('appliedenergistics2:material', 43)],
        [metaitem('screwSteel'), metaitem('conveyor.module.hv'), metaitem('screwSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        item('appliedenergistics2:material', 44),
        item('appliedenergistics2:material', 43),
        metaitem('item_filter'),
        metaitem('plateTitanium'),
        metaitem('screwSteel') * 2,
        metaitem('conveyor.module.hv')
    )
    .outputs(item('appliedenergistics2:part', 260))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Fluid Export Bus
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 261))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('appliedenergistics2:part', 261))
    .input(item('appliedenergistics2:part', 241))
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 261))
    .shape([
        [ore('craftingToolScrewdriver'), metaitem('plateTitanium'), ore('craftingToolSoftHammer')],
        [item('appliedenergistics2:material', 44), metaitem('fluid_filter'), item('appliedenergistics2:material', 43)],
        [metaitem('screwStainlessSteel'), metaitem('electric.pump.hv'), metaitem('screwStainlessSteel')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(3)
    .inputs(
        item('appliedenergistics2:material', 44),
        item('appliedenergistics2:material', 43),
        metaitem('fluid_filter'),
        metaitem('plateTitanium'),
        metaitem('screwStainlessSteel') * 2,
        metaitem('electric.pump.hv')
    )
    .outputs(item('appliedenergistics2:part', 261))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()
