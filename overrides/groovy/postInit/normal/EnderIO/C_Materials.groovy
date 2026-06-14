import gregtech.api.recipes.RecipeMap

def alloy_smelter = RecipeMap.getByName("alloy_smelter")
def assembler = RecipeMap.getByName("assembler")
def electric_blast_furnace = RecipeMap.getByName("electric_blast_furnace")
def macerator = RecipeMap.getByName("macerator")
def mixer = RecipeMap.getByName("mixer")
def compressor = RecipeMap.getByName("compressor")
def rock_breaker = RecipeMap.getByName("rock_breaker")


////////////////////////////////////////
// Items
////////////////////////////////////////
// Simple Machine Parts
mods.jei.ingredient.hide(item('enderio:item_material', 69))

// Machine Parts
mods.jei.ingredient.hide(item('enderio:item_material', 2))

// Enhanced Machine Parts
mods.jei.ingredient.hide(item('enderio:item_material', 68))

// Simple Machine Chassis
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_material'))
    .shape([
        [ore('barsIron'), mi('plateIron'), ore('barsIron')],
        [mi('plateIron'), item('enderio:item_material', 20), mi('plateIron')],
        [ore('barsIron'), mi('plateIron'), ore('barsIron')]
    ])
    .register()

// Industrial Machine Chassis
alloy_smelter.recipeBuilder()
    .inputs(
        ore('itemSimpleMachineChassi'),
        ore('dyeMachine')
    )
    .outputs(item('enderio:item_material', 1))
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Soul Machine Chassis
alloy_smelter.recipeBuilder()
    .inputs(
        ore('itemSimpleMachineChassi'),
        ore('dyeSoulMachine')
    )
    .outputs(item('enderio:item_material', 53))
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Enhanced Machine Chassis
alloy_smelter.recipeBuilder()
    .inputs(
        ore('itemEndSteelMachineChassi'),
        ore('dyeEnhancedMachine')
    )
    .outputs(item('enderio:item_material', 54))
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Soulless Machine Chassis
assembler.recipeBuilder()
    .inputs(
        item('enderio:block_industrial_insulation') * 6,
        ore('skullGuardianDiode') * 2,
        ore('itemSoulMachineChassi')
    )
    .outputs(item('enderio:item_material', 55))
    .duration(50)
    .EUt(480)
    .buildAndRegister()

// End Steel Chassis
assembler.recipeBuilder()
    .inputs(
        item('enderio:block_end_iron_bars') * 4,
        mi('plateEndSteel', 4),
        ore('skullEnderResonator')
    )
    .outputs(item('enderio:item_material', 66))
    .duration(50)
    .EUt(480)
    .buildAndRegister()

// Photovoltaic Plate
mods.jei.ingredient.hide(item('enderio:item_material', 3))

// Conduit Binder
electric_blast_furnace.recipeBuilder()
    .inputs(
        mi('dustClay', 3),
        mi('dustAndesite'),
        mi('dustDiorite')
    )
    .property('temperature', 1700)
    .outputs(item('enderio:item_material', 4))
    .duration(20)
    .EUt(480)
    .buildAndRegister()

// Silicon
mods.jei.ingredient.hide(item('enderio:item_material', 5))
// <ore:itemSilicon>.remove(<enderio:item_material:5>);

// Glider Wing
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_material', 6))
    .shape([
        [null, null, mi('stickDarkSteel')],
        [null, mi('stickDarkSteel'), item('minecraft:leather')],
        [mi('stickDarkSteel'), item('minecraft:leather'), item('minecraft:leather')]
    ])
    .register()

// Glider Wings
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_material', 7))
    .shape([
        [mi('screwDarkSteel'), mi('stickDarkSteel'), mi('screwDarkSteel')],
        [mi('ringDarkSteel'), mi('stickLongDarkSteel'), mi('ringDarkSteel')],
        [item('enderio:item_material', 6), mi('stickLongDarkSteel'), item('enderio:item_material', 6)]
    ])
    .register()

// Nutritious Stick
mods.jei.ingredient.hide(item('enderio:item_material', 8))

// Wooden Gear
mods.jei.ingredient.hide(item('enderio:item_material', 9))
mods.minecraft.ore_dict.remove('gearWood', item('enderio:item_material', 9))

// Stone Gear
mods.jei.ingredient.hide(item('enderio:item_material', 10))
mods.minecraft.ore_dict.remove('gearStone', item('enderio:item_material', 10))

// Infinity Bimetal Gear
mods.jei.ingredient.hide(item('enderio:item_material', 11))

// Energized Bimetal Gear
mods.jei.ingredient.hide(item('enderio:item_material', 12))

// Vibrant Bimetal Gear
mods.jei.ingredient.hide(item('enderio:item_material', 13))

// Dark Bimetal Gear
mods.jei.ingredient.hide(item('enderio:item_material', 73))

// Flour
mods.jei.ingredient.hide(item('enderio:item_material', 21))
mods.minecraft.ore_dict.remove('dustWheat', item('enderio:item_material', 21))

// Conduit Binder Composite
mods.jei.ingredient.hide(item('enderio:item_material', 22))

// Coal Powder
mods.jei.ingredient.hide(item('enderio:item_material', 23))
mods.minecraft.ore_dict.remove('dustCoal', item('enderio:item_material', 23))

// Iron Powder
mods.jei.ingredient.hide(item('enderio:item_material', 24))
mods.minecraft.ore_dict.remove('dustIron', item('enderio:item_material', 24))

// Gold Powder
mods.jei.ingredient.hide(item('enderio:item_material', 25))
mods.minecraft.ore_dict.remove('dustGold', item('enderio:item_material', 25))

// Copper Powder
mods.jei.ingredient.hide(item('enderio:item_material', 26))
mods.minecraft.ore_dict.remove('dustCopper', item('enderio:item_material', 26))

// Tin Powder
mods.jei.ingredient.hide(item('enderio:item_material', 27))
mods.minecraft.ore_dict.remove('dustTin', item('enderio:item_material', 27))

// Ender Pearl Powder
mods.jei.ingredient.hide(item('enderio:item_material', 28))
// <metaitem:nuggetEnderpearl>.remove(<enderio:item_material:28>);

// Obsidian Powder
mods.jei.ingredient.hide(item('enderio:item_material', 29))
mods.minecraft.ore_dict.remove('dustObsidian', item('enderio:item_material', 29))

// Cobalt Powder
mods.jei.ingredient.hide(item('enderio:item_material', 31))
mods.minecraft.ore_dict.remove('dustCobalt', item('enderio:item_material', 31))

// Lapis Powder
mods.jei.ingredient.hide(item('enderio:item_material', 32))
mods.minecraft.ore_dict.remove('dustLapis', item('enderio:item_material', 32))

// Quartz Powder
mods.jei.ingredient.hide(item('enderio:item_material', 33))
mods.minecraft.ore_dict.remove('dustNetherQuartz', item('enderio:item_material', 33))

// Confusing Powder
mods.jei.ingredient.hide(item('enderio:item_material', 61))

// Soul Powder
mods.jei.ingredient.hide(item('enderio:item_material', 74))

// Glowstone Dust
mods.jei.ingredient.hide(item('enderio:item_material', 76))

// Grains of Prescience
macerator.recipeBuilder()
    .inputs(ore('itemPrecientCrystal'))
    .outputs(item('enderio:item_material', 34))
    .duration(20)
    .EUt(2)
    .buildAndRegister()
mixer.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        ore('itemVibrantPowder'),
        mi('dustPlatinum')
    )
    .outputs(item('enderio:item_material', 34) * 2)
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Grains of Vibrant
macerator.recipeBuilder()
    .inputs(ore('itemVibrantCrystal'))
    .outputs(item('enderio:item_material', 35))
    .duration(20)
    .EUt(2)
    .buildAndRegister()
mixer.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        mi('dustVibrantAlloy'),
        mi('dustEmerald')
    )
    .outputs(item('enderio:item_material', 35) * 2)
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Grains of Piezallity
macerator.recipeBuilder()
    .inputs(ore('itemPulsatingCrystal'))
    .outputs(item('enderio:item_material', 36))
    .duration(20)
    .EUt(2)
    .buildAndRegister()
mixer.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        mi('dustPulsatingIron'),
        mi('dustDiamond')
    )
    .outputs(item('enderio:item_material', 36) * 2)
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Grains of the End
macerator.recipeBuilder()
    .inputs(ore('itemEnderCrystal'))
    .outputs(item('enderio:item_material', 37))
    .duration(20)
    .EUt(2)
    .buildAndRegister()
mixer.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        ore('itemVibrantPowder'),
        mi('dustEndSteel')
    )
    .fluidInputs(fluid('xpjuice') * 8000)
    .outputs(item('enderio:item_material', 37) * 2)
    .duration(600)
    .EUt(480)
    .buildAndRegister()

// Photovoltaic Composite
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_material', 38))
    .shape([
        [mi('dustLapis'), mi('dustCoal'), null],
        [mi('dustSilicon'), null, null],
        [null, null, null]
    ])
    .register()

// Clippings and Trimmings
macerator.recipeBuilder()
    .inputs(ore('grass'))
    .outputs(item('enderio:item_material', 46))
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Twigs and Prunings
macerator.recipeBuilder()
    .inputs(item('minecraft:deadbush'))
    .outputs(item('enderio:item_material', 47))
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Organic Green Dye
alloy_smelter.recipeBuilder()
    .inputs(
        item('enderio:item_material', 46) * 6,
        item('minecraft:egg')
    )
    .outputs(item('enderio:item_material', 48))
    .duration(56)
    .EUt(480)
    .buildAndRegister()

// Organic Brown Dye
alloy_smelter.recipeBuilder()
    .inputs(
        item('enderio:item_material', 47) * 6,
        item('minecraft:egg')
    )
    .outputs(item('enderio:item_material', 49))
    .duration(56)
    .EUt(480)
    .buildAndRegister()

// Organic Black Dye
alloy_smelter.recipeBuilder()
    .inputs(
        mi('dustCoal', 3),
        item('minecraft:egg')
    )
    .outputs(item('enderio:item_material', 50))
    .duration(56)
    .EUt(480)
    .buildAndRegister()

// Industrial Dye Blend
mixer.recipeBuilder()
    .inputs(
        mi('dustNetherQuartz', 4),
        mi('dustLapis', 2),
        ore('dyeGreen') * 2,
        ore('dyeBlack')
    )
    .outputs(item('enderio:item_material', 51) * 9)
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Soul Attuned Dye Blend
mixer.recipeBuilder()
    .inputs(
        mi('dustNetherQuartz', 4),
        mi('dustSoularium', 2),
        ore('dyeBrown') * 2,
        ore('dyeBlack')
    )
    .outputs(item('enderio:item_material', 52) * 9)
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Enhanced Dye Blend
mixer.recipeBuilder()
    .inputs(
        ore('itemPulsatingPowder') * 4,
        mi('dustNetherQuartz', 4),
        ore('dyeBlack')
    )
    .outputs(item('enderio:item_material', 67) * 9)
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Wireless Energy Transmitter
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_material', 65))
    .shape([
        [item('minecraft:dye', 15), mi('plateElectricalSteel'), null],
        [null, item('minecraft:dye', 15), mi('plateElectricalSteel')],
        [item('minecraft:dye', 15), mi('plateElectricalSteel'), null]
    ])
    .register()

// Ender Fragment
mods.jei.ingredient.hide(item('enderio:item_material', 62))

// Withering Dust
mods.jei.ingredient.hide(item('enderio:item_material', 63))

// Remote Awareness Upgrade
mods.jei.ingredient.hide(item('enderio:item_material', 64))

// Cake Base
mods.jei.ingredient.hide(item('enderio:item_material', 70))

// Netherotta
mods.jei.ingredient.hide(item('enderio:item_material', 72))

// Infinity Rod
mods.jei.ingredient.hide(item('enderio:item_material', 71))

// Infinity Reagent
mods.jei.ingredient.hide(item('enderio:item_material', 75))

// Animal Token
mods.jei.ingredient.hide(item('enderio:item_material', 78))

// Monster Token
mods.jei.ingredient.hide(item('enderio:item_material', 79))

// Player Token
mods.jei.ingredient.hide(item('enderio:item_material', 80))

// Unfired Death Urn
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_material', 81))
    .shape([
        [ore('itemClay'), ore('itemPulsatingPowder'), ore('itemClay')],
        [ore('itemClay'), null, ore('itemClay')],
        [ore('itemClay'), ore('itemClay'), ore('itemClay')]
    ])
    .register()

// Death Urn
alloy_smelter.recipeBuilder()
    .inputs(
        item('minecraft:dye', 15) * 7,
        item('enderio:item_material', 81)
    )
    .outputs(item('enderio:block_death_pouch'))
    .duration(56)
    .EUt(480)
    .buildAndRegister()

// Infinity Dust
macerator.recipeBuilder()
    .inputs(item('enderio:item_material', 20))
    .outputs(item('enderio:block_infinity_fog'))
    .duration(500)
    .EUt(480)
    .buildAndRegister()

// Grains of Infinity
macerator.recipeBuilder()
    .inputs(item('enderio:block_infinity'))
    .outputs(item('enderio:item_material', 20) * 4)
    .duration(500)
    .EUt(480)
    .buildAndRegister()
macerator.recipeBuilder()
    .inputs(item('enderio:block_infinity', 1))
    .outputs(item('enderio:item_material', 20) * 16)
    .duration(500)
    .EUt(480)
    .buildAndRegister()
macerator.recipeBuilder()
    .inputs(item('enderio:block_infinity', 2))
    .outputs(item('enderio:item_material', 20) * 64)
    .duration(500)
    .EUt(480)
    .buildAndRegister()

// Infinity Dust Block
compressor.recipeBuilder()
    .inputs(item('enderio:item_material', 20) * 4)
    .outputs(item('enderio:block_infinity'))
    .duration(500)
    .EUt(480)
    .buildAndRegister()
rock_breaker.recipeBuilder()
    .notConsumable(item('enderio:block_infinity'))
    .outputs(item('enderio:block_infinity'))
    .duration(100)
    .EUt(480)
    .buildAndRegister()

// Compressed Infinity Dust Block
compressor.recipeBuilder()
    .inputs(item('enderio:block_infinity') * 4)
    .outputs(item('enderio:block_infinity', 1))
    .duration(500)
    .EUt(480)
    .buildAndRegister()

// Double Compressed Infinity Dust Block
compressor.recipeBuilder()
    .inputs(item('enderio:block_infinity', 1) * 4)
    .outputs(item('enderio:block_infinity', 2))
    .duration(500)
    .EUt(480)
    .buildAndRegister()

// Glowstone Nano-Particles
macerator.recipeBuilder()
    .inputs(ore('itemClayedGlowstone'))
    .outputs(item('enderio:block_holier_fog'))
    .duration(56)
    .EUt(480)
    .buildAndRegister()

// Glowstone Nano-Particles
mods.jei.ingredient.hide(item('enderio:block_holy_fog'))
mods.jei.ingredient.hide(item('enderio:block_holier_fog'))

// Owl Egg
mods.jei.ingredient.hide(item('enderio:item_owl_egg'))

// Grainy Capacitor
mods.jei.ingredient.hide(item('enderio:item_capacitor_grainy'))
