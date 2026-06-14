import net.minecraftforge.fml.common.Loader
import gregtech.api.recipes.RecipeMap
import net.minecraftforge.fml.common.registry.ForgeRegistries
import net.minecraft.item.ItemStack

def assembler = RecipeMap.getByName("assembler")
def alloy_smelter = RecipeMap.getByName("alloy_smelter")
def cutter = RecipeMap.getByName("cutter")

mods.jei.category.hideCategory('appliedenergistics2.grinder')
mods.jei.category.hideCategory('appliedenergistics2.inscriber')

if (Loader.isModLoaded('appliedenergistics2')) {
    ForgeRegistries.ITEMS.valuesCollection
        .findAll { it.registryName?.namespace == 'appliedenergistics2' }
        .each { regItem ->
            def stack = new ItemStack(regItem, 1, 0)
            if (stack.displayName.contains('Cable Facade')) {
                mods.jei.ingredient.hide(stack)
            }
            if (stack.displayName.contains('Paint Ball')) {
                mods.minecraft.crafting.removeByOutput(stack)
                mods.jei.ingredient.hide(stack)
            }
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
        [mi('plateGlass'), mi('plateRedAlloy'), mi('plateGlass')],
        [mi('plateRedAlloy'), ore('crystalCertusQuartz'), mi('plateRedAlloy')],
        [mi('plateAluminium'), mi('plateAluminium'), mi('plateAluminium')]
    ])
    .register()

// Blank Pattern
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 52))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 52))
    .shape([
        [item('appliedenergistics2:quartz_glass'), mi('plateGlowstone'), item('appliedenergistics2:quartz_glass')],
        [mi('plateGlowstone'), ore('crystalCertusQuartz'), mi('plateGlowstone')],
        [mi('plateAluminium'), mi('plateAluminium'), mi('plateAluminium')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 52) * 2)
    .shape([
        [item('appliedenergistics2:quartz_glass'), mi('plateGlowstone'), item('appliedenergistics2:quartz_glass')],
        [mi('plateGlowstone'), ore('crystalPureCertusQuartz'), mi('plateGlowstone')],
        [mi('plateAluminium'), mi('plateAluminium'), mi('plateAluminium')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('appliedenergistics2:quartz_glass'),
        mi('plateGlowstone', 2),
        mi('plateAluminium', 2),
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
        mi('plateWroughtIron', 4),
        mi('dustCertusQuartz', 4),
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
        mi('plateTitanium', 4),
        mi('dustCertusQuartz', 4),
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
        mi('plateTungstenSteel', 4),
        mi('dustCertusQuartz', 8),
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
        mi('plateRhodiumPlatedPalladium', 4),
        mi('dustCertusQuartz', 8),
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
        mi('plateWroughtIron', 4),
        mi('dustNetherQuartz', 4),
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
        mi('plateTitanium', 4),
        mi('dustNetherQuartz', 4),
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
        mi('plateTungstenSteel', 4),
        mi('dustNetherQuartz', 8),
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
        mi('plateRhodiumPlatedPalladium', 4),
        mi('dustNetherQuartz', 8),
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
        mi('plateTitanium', 4),
        mi('dustCertusQuartz', 32),
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
        mi('plateTungstenSteel', 4),
        mi('dustCertusQuartz', 32),
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
        mi('plateRhodiumPlatedPalladium', 4),
        mi('dustCertusQuartz', 32),
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
        [mi('stickSteel'), null, null]
    ])
    .register()

// Charged Staff
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:charged_staff'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:charged_staff'))
    .shape([
        [null, item('appliedenergistics2:material', 1), item('appliedenergistics2:material', 1)],
        [null, item('appliedenergistics2:energy_cell'), item('appliedenergistics2:material', 1)],
        [mi('stickSteel'), null, null]
    ])
    .register()

// Matter Cannon
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:matter_cannon'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:matter_cannon'))
    .shape([
        [mi('plateSteel'), mi('plateSteel'), item('appliedenergistics2:material', 43)],
        [item('appliedenergistics2:material', 36), item('appliedenergistics2:dense_energy_cell'), null],
        [mi('plateSteel'), null, null]
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
        [item('appliedenergistics2:material', 41), item('appliedenergistics2:part', 380), item('appliedenergistics2:material', 41)],
        [item('appliedenergistics2:material', 24), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 24)],
        [mi('plateNetherQuartz'), item('appliedenergistics2:dense_energy_cell'), mi('plateNetherQuartz')]
    ])
    .register()

// Wireless Crafting Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:wireless_crafting_terminal'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:wireless_crafting_terminal'))
    .shape([
        [item('appliedenergistics2:material', 41), item('appliedenergistics2:part', 360), item('appliedenergistics2:material', 41)],
        [item('appliedenergistics2:material', 24), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 24)],
        [mi('plateNetherQuartz'), item('appliedenergistics2:dense_energy_cell'), mi('plateNetherQuartz')]
    ])
    .register()

// Wireless Fluid Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:wireless_fluid_terminal'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:wireless_fluid_terminal'))
    .shape([
        [item('appliedenergistics2:material', 41), item('appliedenergistics2:part', 520), item('appliedenergistics2:material', 41)],
        [item('appliedenergistics2:material', 24), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 24)],
        [mi('plateNetherQuartz'), item('appliedenergistics2:dense_energy_cell'), mi('plateNetherQuartz')]
    ])
    .register()

// Wireless Pattern Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:wireless_pattern_terminal'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:wireless_pattern_terminal'))
    .shape([
        [item('appliedenergistics2:material', 41), item('appliedenergistics2:part', 340), item('appliedenergistics2:material', 41)],
        [item('appliedenergistics2:material', 24), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 24)],
        [mi('plateNetherQuartz'), item('appliedenergistics2:dense_energy_cell'), mi('plateNetherQuartz')]
    ])
    .register()

// Wireless Interface Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:wireless_interface_terminal'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:wireless_interface_terminal'))
    .shape([
        [item('appliedenergistics2:material', 41), item('appliedenergistics2:part', 480), item('appliedenergistics2:material', 41)],
        [item('appliedenergistics2:material', 24), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 24)],
        [mi('plateNetherQuartz'), item('appliedenergistics2:dense_energy_cell'), mi('plateNetherQuartz')]
    ])
    .register()

// Biometric Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:biometric_card'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:biometric_card'))
    .shape([
        [item('appliedenergistics2:material', 22), mi('plateIron'), mi('plateIron')],
        [mi('plateGold'), mi('plateRedAlloy'), mi('plateGold')],
        [null, null, null]
    ])
    .register()

// Memory Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:memory_card'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:memory_card'))
    .shape([
        [item('appliedenergistics2:material', 23), mi('plateIron'), mi('plateIron')],
        [mi('plateGold'), mi('plateRedAlloy'), mi('plateGold')],
        [null, null, null]
    ])
    .register()

// Basic Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 25))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 25))
    .shape([
        [mi('plateGold'), mi('plateAluminium'), null],
        [mi('plateRedAlloy'), item('appliedenergistics2:material', 23), mi('plateAluminium')],
        [mi('plateGold'), mi('plateAluminium'), null]
    ])
    .register()

// Capacity Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 27))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 27))
    .shape([
        [item('appliedenergistics2:material', 25), item('appliedenergistics2:material', 35), null],
        [item('appliedenergistics2:material', 35), ore('gemCertusQuartz'), null],
        [null, null, null]
    ])
    .register()

// Crafting Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 53))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 53))
    .shape([
        [item('appliedenergistics2:material', 25), item('appliedenergistics2:material', 35), null],
        [item('appliedenergistics2:material', 35), item('minecraft:crafting_table'), null],
        [null, null, null]
    ])
    .register()

// Redstone Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 26))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 26))
    .shape([
        [item('appliedenergistics2:material', 25), item('minecraft:redstone_torch'), null],
        [item('minecraft:redstone_torch'), item('appliedenergistics2:material', 23), null],
        [null, null, null]
    ])
    .register()

// Advanced Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 28))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 28))
    .shape([
        [mi('platePlatinum'), mi('plateAluminium'), null],
        [mi('plateRedAlloy'), item('appliedenergistics2:material', 23), mi('plateAluminium')],
        [mi('platePlatinum'), mi('plateAluminium'), null]
    ])
    .register()

// Fuzzy Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 29))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 29))
    .shape([
        [item('appliedenergistics2:material', 28), item('appliedenergistics2:material', 24), null],
        [item('appliedenergistics2:material', 22), item('appliedenergistics2:material', 23), null],
        [null, null, null]
    ])
    .register()

// Inverter Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 31))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 31))
    .shape([
        [item('appliedenergistics2:material', 28), mi('cover.activity.detector'), null],
        [mi('cover.activity.detector'), item('appliedenergistics2:material', 23), null],
        [null, null, null]
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
    .input(item('appliedenergistics2:material', 28), ore('craftInterfaceItem'), ore('craftInterfaceFluid'), item('appliedenergistics2:material', 23))
    .register()

// Acceleration Card
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 30))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 30))
    .shape([
        [item('appliedenergistics2:material', 28), item('appliedenergistics2:material', 24), null],
        [item('appliedenergistics2:material', 22), ore('craftFluix'), null],
        [null, null, null]
    ])
    .register()

// Quantum Link Card
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 59))
    .shape([
        [item('appliedenergistics2:material', 42), mi('cover.digital.wireless'), item('appliedenergistics2:material', 42)],
        [item('appliedenergistics2:material', 47), item('appliedenergistics2:material', 28), item('appliedenergistics2:material', 47)],
        [item('appliedenergistics2:material', 42), mi('sensor.ev'), item('appliedenergistics2:material', 42)]
    ])
    .register()

// Magnet Card
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 60))
    .shape([
        [mi('plateRedstone'), item('appliedenergistics2:part', 300), mi('plateLapis')],
        [mi('stickNeodymiumMagnetic'), item('appliedenergistics2:material', 28), mi('stickNeodymiumMagnetic')],
        [mi('stickNeodymiumMagnetic'), null, mi('stickNeodymiumMagnetic')]
    ])
    .register()

// Wireless Receiver
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 41))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 41))
    .shape([
        [ore('craftGlassCable'), item('appliedenergistics2:material', 9), ore('craftGlassCable')],
        [mi('sensor.ev'), mi('stickTitanium'), mi('sensor.ev')],
        [mi('plateCertusQuartz'), ore('circuitEv'), mi('plateCertusQuartz')]
    ])
    .register()

// Wireless Boosting
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:material', 42))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:material', 42))
    .shape([
        [mi('dustFluix'), ore('crystalCertusQuartz'), mi('plateEnderPearl')],
        [mi('plateTitanium'), mi('plateTitanium'), mi('plateTitanium')],
        [null, null, null]
    ])
    .register()

// Annihilation Plane
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 300))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 300))
    .shape([
        [ore('craftingToolScrewdriver'), mi('dustFluix'), ore('craftingToolSoftHammer')],
        [mi('screwSteel'), mi('dustFluix'), mi('screwSteel')],
        [mi('plateSteel'), item('appliedenergistics2:material', 44), mi('plateSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 300))
    .shape([
        [ore('craftingToolSoftHammer'), mi('dustFluix'), ore('craftingToolScrewdriver')],
        [mi('screwSteel'), mi('dustFluix'), mi('screwSteel')],
        [mi('plateSteel'), item('appliedenergistics2:material', 44), mi('plateSteel')]
    ])
    .register()

// Fluid Annihilation Plane
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 302))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 302))
    .shape([
        [ore('craftingToolScrewdriver'), mi('dustLapis'), ore('craftingToolSoftHammer')],
        [mi('screwStainlessSteel'), mi('dustLapis'), mi('screwSteel')],
        [mi('plateStainlessSteel'), item('appliedenergistics2:material', 44), mi('plateStainlessSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 302))
    .shape([
        [ore('craftingToolSoftHammer'), ore('gemLapis'), ore('craftingToolScrewdriver')],
        [mi('screwStainlessSteel'), ore('gemLapis'), mi('screwStainlessSteel')],
        [mi('plateStainlessSteel'), item('appliedenergistics2:material', 44), mi('plateStainlessSteel')]
    ])
    .register()

// Formation Plane
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 320))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 320))
    .shape([
        [ore('craftingToolScrewdriver'), mi('dustFluix'), ore('craftingToolSoftHammer')],
        [mi('screwSteel'), mi('dustFluix'), mi('screwSteel')],
        [mi('plateSteel'), item('appliedenergistics2:material', 43), mi('plateSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 320))
    .shape([
        [ore('craftingToolSoftHammer'), mi('dustFluix'), ore('craftingToolScrewdriver')],
        [mi('screwSteel'), mi('dustFluix'), mi('screwSteel')],
        [mi('plateSteel'), item('appliedenergistics2:material', 43), mi('plateSteel')]
    ])
    .register()

// Fluid Formation Plane
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 321))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 302))
    .shape([
        [ore('craftingToolScrewdriver'), mi('dustLapis'), ore('craftingToolSoftHammer')],
        [mi('screwStainlessSteel'), mi('dustLapis'), mi('screwSteel')],
        [mi('plateStainlessSteel'), item('appliedenergistics2:material', 43), mi('plateStainlessSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 302))
    .shape([
        [ore('craftingToolSoftHammer'), ore('gemLapis'), ore('craftingToolScrewdriver')],
        [mi('screwStainlessSteel'), ore('gemLapis'), mi('screwStainlessSteel')],
        [mi('plateStainlessSteel'), item('appliedenergistics2:material', 43), mi('plateStainlessSteel')]
    ])
    .register()

// Certus Quartz Crystal
mods.jei.ingredient.hide(item('appliedenergistics2:material'))


////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Cable Anchor
def anchorIngots_x4 = [
    item('minecraft:iron_ingot'),
    mi('ingotCopper'),
    mi('ingotAnnealedCopper'),
    mi('ingotTin'),
    mi('ingotLead'),
    mi('ingotNickel'),
    mi('ingotSilver'),
    mi('ingotSteel')
]
def anchorIngots_x6 = [
    mi('ingotBronze'),
    mi('ingotBrass'),
    mi('ingotInvar'),
    mi('ingotDarkSteel')
]
def anchorIngots_x8 = [
    mi('ingotStainlessSteel'),
    mi('ingotTitanium')
]
anchorIngots_x4.each { anchorIngot_x4 ->
    mods.minecraft.crafting.shapelessBuilder()
        .output(item('appliedenergistics2:part', 120) * 4)
        .input(anchorIngot_x4, ore('craftingToolKnife'))
        .register()
    cutter.recipeBuilder()
        .inputs(anchorIngot_x4)
        .fluidInputs(fluid('lubricant') * 1)
        .outputs(item('appliedenergistics2:part', 120) * 8)
        .duration(80)
        .EUt(480)
        .buildAndRegister()
    cutter.recipeBuilder()
        .inputs(anchorIngot_x4)
        .fluidInputs(fluid('distilled_water') * 3)
        .outputs(item('appliedenergistics2:part', 120) * 8)
        .duration(160)
        .EUt(480)
        .buildAndRegister()
    cutter.recipeBuilder()
        .inputs(anchorIngot_x4)
        .fluidInputs(fluid('water') * 4)
        .outputs(item('appliedenergistics2:part', 120) * 8)
        .duration(200)
        .EUt(480)
        .buildAndRegister()
}
anchorIngots_x6.each { anchorIngot_x6 ->
    mods.minecraft.crafting.shapelessBuilder()
        .output(item('appliedenergistics2:part', 120) * 6)
        .input(anchorIngot_x6, ore('craftingToolKnife'))
        .register()
    cutter.recipeBuilder()
        .inputs(anchorIngot_x6)
        .fluidInputs(fluid('lubricant') * 1)
        .outputs(item('appliedenergistics2:part', 120) * 12)
        .duration(80)
        .EUt(480)
        .buildAndRegister()
    cutter.recipeBuilder()
        .inputs(anchorIngot_x6)
        .fluidInputs(fluid('distilled_water') * 3)
        .outputs(item('appliedenergistics2:part', 120) * 12)
        .duration(160)
        .EUt(480)
        .buildAndRegister()
    cutter.recipeBuilder()
        .inputs(anchorIngot_x6)
        .fluidInputs(fluid('water') * 4)
        .outputs(item('appliedenergistics2:part', 120) * 12)
        .duration(200)
        .EUt(480)
        .buildAndRegister()
}
anchorIngots_x8.each { anchorIngot_x8 ->
    mods.minecraft.crafting.shapelessBuilder()
        .output(item('appliedenergistics2:part', 120) * 8)
        .input(anchorIngot_x8, ore('craftingToolKnife'))
        .register()
    cutter.recipeBuilder()
        .inputs(anchorIngot_x8)
        .fluidInputs(fluid('lubricant') * 1)
        .outputs(item('appliedenergistics2:part', 120) * 16)
        .duration(80)
        .EUt(480)
        .buildAndRegister()
    cutter.recipeBuilder()
        .inputs(anchorIngot_x8)
        .fluidInputs(fluid('distilled_water') * 3)
        .outputs(item('appliedenergistics2:part', 120) * 16)
        .duration(160)
        .EUt(480)
        .buildAndRegister()
    cutter.recipeBuilder()
        .inputs(anchorIngot_x8)
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
        mi('plateBlackSteel', 4),
        item('appliedenergistics2:fluix_block')
    )
    .fluidInputs(fluid('plastic') * 144)
    .outputs(item('appliedenergistics2:controller'))
    .duration(200)
    .EUt(480)
    .buildAndRegister()

// Quartz Glass
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:quartz_glass'))
alloy_smelter.recipeBuilder()
    .inputs(
        ore('blockGlass'),
        mi('dustCertusQuartz')
    )
    .outputs(item('appliedenergistics2:quartz_glass'))
    .duration(20)
    .EUt(480)
    .buildAndRegister()
alloy_smelter.recipeBuilder()
    .inputs(
        ore('blockGlass'),
        mi('dustQuartzite')
    )
    .outputs(item('appliedenergistics2:quartz_glass'))
    .duration(20)
    .EUt(480)
    .buildAndRegister()

// Vibrant Quartz Glass
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:quartz_vibrant_glass'))
alloy_smelter.recipeBuilder()
    .inputs(
        item('appliedenergistics2:quartz_glass'),
        item('minecraft:glowstone_dust') * 8
    )
    .outputs(item('appliedenergistics2:quartz_vibrant_glass'))
    .duration(20)
    .EUt(480)
    .buildAndRegister()
alloy_smelter.recipeBuilder()
    .inputs(
        item('minecraft:glowstone'),
        mi('dustAluminium', 8)
    )
    .outputs(item('appliedenergistics2:quartz_vibrant_glass'))
    .duration(20)
    .EUt(480)
    .buildAndRegister()

// Quartz Fixture
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:quartz_fixture'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('appliedenergistics2:quartz_fixture'))
    .input(ore('gemCertusQuartz'), mi('stickAluminium'))
    .register()

// Charger
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:charger'))
mods.jei.ingredient.hide(item('appliedenergistics2:charger'))

// Security Terminal
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:security_station'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:security_station'))
    .shape([
        [mi('plateSteel'), ore('chestWood'), mi('plateSteel')],
        [ore('craftGlassCable'), item('appliedenergistics2:material', 35), ore('craftGlassCable')],
        [mi('plateSteel'), item('appliedenergistics2:material', 22), mi('plateSteel')]
    ])
    .register()

// Quantum Ring
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:quantum_ring'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:quantum_ring'))
    .shape([
        [mi('plateTitanium'), item('appliedenergistics2:material', 22), mi('plateTitanium')],
        [item('gtexpert:meta_item_1', 1), mi('emitter.ev'), ore('craftGlassCable')],
        [mi('plateTitanium'), item('appliedenergistics2:material', 22), mi('plateTitanium')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('appliedenergistics2:material', 22),
        ore('craftGlassCable'),
        item('gtexpert:meta_item_1', 1),
        mi('emitter.ev'),
        mi('plateTitanium', 2)
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
        [mi('plateGlass'), ore('pearlFluix'), mi('plateGlass')],
        [ore('pearlFluix'), mi('field.generator.ev'), ore('pearlFluix')],
        [mi('plateGlass'), ore('pearlFluix'), mi('plateGlass')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        mi('field.generator.ev'),
        ore('pearlFluix') * 2,
        mi('plateGlass', 2)
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
        [mi('plateGlass'), ore('craftGlassCable'), mi('plateGlass')],
        [mi('dustFluix'), ore('crystalFluix'), mi('dustFluix')],
        [mi('plateGlass'), ore('craftGlassCable'), mi('plateGlass')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        mi('plateGlass', 2),
        ore('craftGlassCable') * 2,
        mi('dustFluix'),
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
        [mi('plateGlass'), mi('plateGlass'), mi('plateGlass')],
        [ore('craftGlassCable'), item('appliedenergistics2:drive'), ore('craftGlassCable')],
        [mi('plateSteel'), item('appliedenergistics2:material', 24), mi('plateSteel')]
    ])
    .register()

// ME Spatial IO Port
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:spatial_io_port'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:spatial_io_port'))
    .shape([
        [mi('plateGlass'), mi('plateGlass'), mi('plateGlass')],
        [ore('craftGlassCable'), item('appliedenergistics2:drive'), ore('craftGlassCable')],
        [mi('plateSteel'), item('gtexpert:meta_item_1', 1), mi('plateSteel')]
    ])
    .register()

// ME Chest
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:chest'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:chest'))
    .shape([
        [mi('plateSteel'), item('appliedenergistics2:part', 380), mi('plateSteel')],
        [ore('craftGlassCable'), ore('chestWood'), ore('craftGlassCable')],
        [mi('plateSteel'), item('appliedenergistics2:material', 22), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('appliedenergistics2:part', 380),
        item('appliedenergistics2:material', 22),
        ore('chestWood'),
        ore('craftGlassCable'),
        mi('plateSteel', 2)
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
        [mi('plateBlackSteel'), item('gtexpert:meta_item_1', 1), mi('plateBlackSteel')],
        [ore('craftGlassCable'), item('appliedenergistics2:chest'), ore('craftGlassCable')],
        [mi('plateBlackSteel'), item('appliedenergistics2:material', 24), mi('plateBlackSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('appliedenergistics2:material', 24),
        item('gtexpert:meta_item_1', 1),
        item('appliedenergistics2:chest'),
        ore('craftGlassCable'),
        mi('plateBlackSteel', 2)
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
        [mi('plateSteel'), mi('plateGlass'), mi('plateSteel')],
        [item('gtexpert:meta_item_1', 1), item('gregtech:machine_casing', 3), item('gtexpert:meta_item_1', 1)],
        [mi('plateSteel'), mi('plateGlass'), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('gregtech:machine_casing', 3),
        item('gtexpert:meta_item_1', 1),
        mi('plateGlass'),
        mi('plateSteel', 2)
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
        [mi('plateStainlessSteel'), mi('plateGlass'), mi('plateStainlessSteel')],
        [item('gtexpert:meta_item_1', 1), item('gregtech:machine_casing', 3), item('gtexpert:meta_item_1', 1)],
        [mi('plateStainlessSteel'), mi('plateGlass'), mi('plateStainlessSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        item('gregtech:machine_casing', 3),
        item('gtexpert:meta_item_1', 1),
        mi('plateGlass'),
        mi('plateStainlessSteel', 2)
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
        [ore('wool'), mi('cover.screen'), ore('wool')],
        [mi('plateAluminium'), item('appliedenergistics2:material', 23), mi('plateAluminium')],
        [mi('plateAluminium'), mi('plateAluminium'), mi('plateAluminium')]
    ])
    .register()

// Matter Condenser
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:condenser'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:condenser'))
    .shape([
        [mi('plateSteel'), mi('electric.piston.hv'), mi('plateSteel')],
        [mi('electric.piston.hv'), mi('hull.hv'), mi('electric.piston.hv')],
        [mi('plateSteel'), mi('electric.piston.hv'), mi('plateSteel')]
    ])
    .register()

// Energy Acceptor
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:energy_acceptor'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:energy_acceptor'))
    .shape([
        [mi('plateSteel'), mi('plateGlass'), mi('plateSteel')],
        [mi('plateGlass'), ore('crystalFluix'), mi('plateGlass')],
        [mi('plateSteel'), mi('plateGlass'), mi('plateSteel')]
    ])
    .register()

// Vibration Chamber
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:vibration_chamber'))
assembler.recipeBuilder()
    .inputs(
        ore('circuitHv') * 2,
        ore('cableGtSingleGold') * 2,
        mi('wireGtDoubleKanthal', 4),
        mi('plateSteel', 7)
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
        [mi('plateFluix'), ore('circuitHv'), mi('plateFluix')],
        [ore('craftCoveredCable'), ore('batteryHv'), ore('craftCoveredCable')],
        [mi('plateFluix'), ore('cableGtOctalAluminium'), mi('plateFluix')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        mi('plateFluix', 2),
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
        [item('appliedenergistics2:energy_cell'), mi('battery_buffer.ev.16'), item('appliedenergistics2:energy_cell')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('appliedenergistics2:energy_cell') * 2,
        mi('battery_buffer.ev.16'),
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
        [mi('plateSteel'), item('appliedenergistics2:material', 22), mi('plateSteel')],
        [ore('circuitHv'), item('appliedenergistics2:material', 24), ore('circuitHv')],
        [mi('plateSteel'), item('appliedenergistics2:material', 23), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('appliedenergistics2:material', 22),
        item('appliedenergistics2:material', 24),
        item('appliedenergistics2:material', 23),
        ore('circuitHv'),
        mi('plateSteel', 2)
    )
    .outputs(item('appliedenergistics2:crafting_unit'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Molecular Assembler
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:molecular_assembler'))
assembler.recipeBuilder()
    .inputs(
        mi('plateGlass', 2),
        ore('circuitHv') * 2,
        mi('conveyor.module.hv', 2),
        mi('robot.arm.hv', 2),
        mi('plateSteel', 4)
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
    .input(ore('gemChargedCertusQuartz'), mi('stickIron'))
    .register()

// Illuminated Panel
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 180))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 180))
    .shape([
        [null, mi('plateGlowstone'), null],
        [mi('plateSteel'), mi('plateRedAlloy'), mi('cover.screen')],
        [null, mi('plateGlowstone'), null]
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        mi('plateGlowstone'),
        mi('plateSteel'),
        mi('plateRedAlloy'),
        mi('cover.screen')
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
        [mi('stickSteel'), ore('craftingToolScrewdriver'), mi('stickSteel')],
        [item('appliedenergistics2:part', 180), ore('circuitHv'), mi('plateSteel')],
        [mi('stickSteel'), mi('screwSteel'), mi('stickSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 380))
    .shape([
        [mi('stickSteel'), mi('screwSteel'), mi('stickSteel')],
        [item('appliedenergistics2:part', 180), ore('circuitHv'), mi('plateSteel')],
        [mi('stickSteel'), ore('craftingToolScrewdriver'), mi('stickSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:part', 180),
        ore('circuitHv'),
        mi('screwSteel'),
        mi('plateSteel'),
        mi('stickSteel', 2)
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
        [mi('stickStainlessSteel'), ore('craftingToolScrewdriver'), mi('stickStainlessSteel')],
        [item('appliedenergistics2:part', 180), ore('circuitHv'), mi('plateStainlessSteel')],
        [mi('stickStainlessSteel'), mi('screwStainlessSteel'), mi('stickStainlessSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 520))
    .shape([
        [mi('stickStainlessSteel'), mi('screwStainlessSteel'), mi('stickStainlessSteel')],
        [item('appliedenergistics2:part', 180), ore('circuitHv'), mi('plateStainlessSteel')],
        [mi('stickStainlessSteel'), ore('craftingToolScrewdriver'), mi('stickStainlessSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:part', 180),
        ore('circuitHv'),
        mi('screwStainlessSteel'),
        mi('plateStainlessSteel'),
        mi('stickStainlessSteel', 2)
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
        [mi('screwSteel'), mi('workbench'), mi('screwSteel')],
        [mi('plateSteel'), item('appliedenergistics2:material', 22), mi('plateSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 360))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 380), ore('craftingToolScrewdriver')],
        [mi('screwSteel'), mi('workbench'), mi('screwSteel')],
        [mi('plateSteel'), item('appliedenergistics2:material', 22), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 22),
        item('appliedenergistics2:part', 380),
        mi('workbench'),
        mi('screwSteel'),
        mi('plateSteel')
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
        [mi('screwSteel'), ore('craftInterfaceItem'), mi('screwSteel')],
        [mi('plateSteel'), item('appliedenergistics2:material', 23), mi('plateSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 480))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 380), ore('craftingToolScrewdriver')],
        [mi('screwSteel'), ore('craftInterfaceItem'), mi('screwSteel')],
        [mi('plateSteel'), item('appliedenergistics2:material', 23), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 23),
        item('appliedenergistics2:part', 380),
        ore('craftInterfaceItem'),
        mi('screwSteel'),
        mi('plateSteel')
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
        [mi('screwSteel'), ore('craftInterfaceItem'), mi('screwSteel')],
        [mi('plateSteel'), item('gtexpert:meta_item_1', 1), mi('plateSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 521))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 380), ore('craftingToolScrewdriver')],
        [mi('screwSteel'), ore('craftInterfaceItem'), mi('screwSteel')],
        [mi('plateSteel'), item('gtexpert:meta_item_1', 1), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('gtexpert:meta_item_1', 1),
        item('appliedenergistics2:part', 380),
        ore('craftInterfaceItem'),
        mi('screwSteel'),
        mi('plateSteel')
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
        [mi('screwStainlessSteel'), ore('craftInterfaceFluid'), mi('screwStainlessSteel')],
        [mi('plateStainlessSteel'), item('gtexpert:meta_item_1', 1), mi('plateStainlessSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 522))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 380), ore('craftingToolScrewdriver')],
        [mi('screwStainlessSteel'), ore('craftInterfaceFluid'), mi('screwStainlessSteel')],
        [mi('plateStainlessSteel'), item('gtexpert:meta_item_1', 1), mi('plateStainlessSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('gtexpert:meta_item_1', 1),
        item('appliedenergistics2:part', 380),
        ore('craftInterfaceFluid'),
        mi('screwStainlessSteel'),
        mi('plateStainlessSteel')
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
        [mi('screwSteel'), item('appliedenergistics2:material', 52), mi('screwSteel')],
        [mi('plateSteel'), item('appliedenergistics2:material', 23), mi('plateSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 340))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 380), ore('craftingToolScrewdriver')],
        [mi('screwSteel'), item('appliedenergistics2:material', 52), mi('screwSteel')],
        [mi('plateSteel'), item('appliedenergistics2:material', 23), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 23),
        item('appliedenergistics2:part', 380),
        item('appliedenergistics2:material', 52),
        mi('screwSteel'),
        mi('plateSteel')
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
        [mi('screwSteel'), item('appliedenergistics2:material', 52), mi('screwSteel')],
        [mi('plateSteel'), item('appliedenergistics2:material', 24), mi('plateSteel')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 341))
    .shape([
        [ore('craftingToolSoftHammer'), item('appliedenergistics2:part', 340), ore('craftingToolScrewdriver')],
        [mi('screwSteel'), item('appliedenergistics2:material', 52), mi('screwSteel')],
        [mi('plateSteel'), item('appliedenergistics2:material', 24), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        item('appliedenergistics2:part', 340),
        item('appliedenergistics2:material', 52),
        mi('screwSteel'),
        mi('plateSteel')
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
        [item('appliedenergistics2:material', 24), mi('plateAluminium'), item('appliedenergistics2:material', 24)],
        [mi('plateAluminium'), item('appliedenergistics2:part', 180), mi('plateAluminium')],
        [ore('crystalPureFluix'), ore('crystalPureFluix'), ore('crystalPureFluix')]
    ])
    .register()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        item('appliedenergistics2:part', 180),
        ore('crystalPureFluix') * 2,
        mi('plateAluminium', 2)
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
        [null, ore('craftGlassCable'), null]
    ])
    .register()

// ME Level Emitter
mods.minecraft.crafting.removeByOutput(item('appliedenergistics2:part', 280))
mods.minecraft.crafting.shapedBuilder()
    .output(item('appliedenergistics2:part', 280))
    .shape([
        [null, mi('plateSteel'), null],
        [ore('craftGlassCable'), item('minecraft:redstone_torch'), ore('craftGlassCable')],
        [null, mi('plateSteel'), null]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('minecraft:redstone_torch'),
        ore('craftGlassCable'),
        mi('plateSteel')
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
        [null, mi('plateStainlessSteel'), null],
        [ore('craftGlassCable'), item('minecraft:redstone_torch'), ore('craftGlassCable')],
        [null, mi('plateStainlessSteel'), null]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        item('minecraft:redstone_torch'),
        ore('craftGlassCable'),
        mi('plateStainlessSteel')
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
        [mi('plateSteel'), ore('craftingToolSoftHammer'), mi('plateSteel')],
        [mi('conveyor.module.hv'), ore('craftInterfaceItem'), mi('conveyor.module.hv')],
        [mi('plateSteel'), mi('item_filter'), mi('plateSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        mi('conveyor.module.hv'),
        mi('item_filter'),
        ore('craftInterfaceItem'),
        mi('plateSteel', 2)
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
        [mi('plateStainlessSteel'), ore('craftingToolSoftHammer'), mi('plateStainlessSteel')],
        [mi('electric.pump.hv'), ore('craftInterfaceFluid'), mi('electric.pump.hv')],
        [mi('plateStainlessSteel'), mi('fluid_filter'), mi('plateStainlessSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        mi('electric.pump.hv'),
        mi('fluid_filter'),
        ore('craftInterfaceFluid'),
        mi('plateStainlessSteel', 2)
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
        [mi('plateTitanium'), ore('craftingToolSoftHammer'), mi('plateTitanium')],
        [mi('conveyor.module.hv'), ore('craftInterfaceItem'), mi('conveyor.module.hv')],
        [mi('plateTitanium'), mi('ore_dictionary_filter'), mi('plateTitanium')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        mi('conveyor.module.hv'),
        mi('ore_dictionary_filter'),
        ore('craftInterfaceItem'),
        mi('plateTitanium', 2)
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
        [null, mi('plateRedAlloy'), null],
        [ore('craftGlassCable'), item('minecraft:lever'), ore('craftGlassCable')],
        [null, mi('plateRedAlloy'), null]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        item('minecraft:lever'),
        ore('craftGlassCable'),
        mi('plateRedAlloy')
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
        [ore('craftingToolScrewdriver'), mi('plateTitanium'), ore('craftingToolSoftHammer')],
        [item('appliedenergistics2:material', 44), mi('item_filter'), item('appliedenergistics2:material', 43)],
        [mi('screwSteel'), mi('conveyor.module.hv'), mi('screwSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        item('appliedenergistics2:material', 44),
        item('appliedenergistics2:material', 43),
        mi('item_filter'),
        mi('plateTitanium'),
        mi('screwSteel', 2),
        mi('conveyor.module.hv')
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
        [ore('craftingToolScrewdriver'), mi('plateTitanium'), ore('craftingToolSoftHammer')],
        [item('appliedenergistics2:material', 44), mi('fluid_filter'), item('appliedenergistics2:material', 43)],
        [mi('screwStainlessSteel'), mi('electric.pump.hv'), mi('screwStainlessSteel')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(3)
    .inputs(
        item('appliedenergistics2:material', 44),
        item('appliedenergistics2:material', 43),
        mi('fluid_filter'),
        mi('plateTitanium'),
        mi('screwStainlessSteel', 2),
        mi('electric.pump.hv')
    )
    .outputs(item('appliedenergistics2:part', 261))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()
