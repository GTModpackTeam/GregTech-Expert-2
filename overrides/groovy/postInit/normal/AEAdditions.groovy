import net.minecraftforge.fml.common.Loader
import gregtech.api.recipes.RecipeMap
import net.minecraftforge.fml.common.registry.ForgeRegistries
import net.minecraft.item.ItemStack

def assembler = RecipeMap.getByName("assembler")

if (Loader.isModLoaded('aeadditions')) {
    ForgeRegistries.ITEMS.valuesCollection
        .findAll { it.registryName?.namespace == 'aeadditions' }
        .each { regItem ->
            def stack = new ItemStack(regItem, 1, 0)
            if (stack.displayName.contains('ME Fluid Pattern')) {
                mods.jei.ingredient.hide(stack)
            }
        }
}


////////////////////////////////////////
// Items
////////////////////////////////////////
// Fluid Pattern
mods.minecraft.crafting.removeByOutput(item('aeadditions:pattern.fluid'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('aeadditions:pattern.fluid'))
    .shape([
        [mi('screwStainlessSteel'), mi('plateStainlessSteel'), ore('craftingToolHardHammer')],
        [mi('plateStainlessSteel'), item('appliedenergistics2:quartz_glass'), mi('plateStainlessSteel')],
        [ore('craftingToolScrewdriver'), mi('plateStainlessSteel'), mi('screwStainlessSteel')]
    ])
    .register()

// Wireless Universal Terminal
mods.jei.ingredient.hide(item('aeadditions:terminal.universal.wireless'))

// Wireless Fluid Terminal
mods.minecraft.crafting.removeByOutput(item('aeadditions:terminal.fluid.wireless'))
mods.jei.ingredient.hide(item('aeadditions:terminal.fluid.wireless'))

// 256k Storage Component
mods.minecraft.crafting.removeByOutput(item('aeadditions:storage.component'))
assembler.recipeBuilder()
    .inputs(
        ore('circuitZpm') * 4,
        mi('plateNaquadahAlloy', 4),
        mi('dustCertusQuartz', 16),
        item('appliedenergistics2:material', 24)
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('aeadditions:storage.component'))
    .duration(200)
    .EUt(122880)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        ore('circuitZpm') * 4,
        item('appliedenergistics2:material', 38) * 4
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('aeadditions:storage.component'))
    .duration(400)
    .EUt(122880)
    .buildAndRegister()

// 1024k Storage Component
mods.minecraft.crafting.removeByOutput(item('aeadditions:storage.component', 1))
assembler.recipeBuilder()
    .inputs(
        ore('circuitZpm') * 4,
        mi('plateAmericium', 4),
        mi('dustCertusQuartz', 16),
        item('appliedenergistics2:material', 24)
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('aeadditions:storage.component', 1))
    .duration(200)
    .EUt(122880)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        ore('circuitZpm') * 4,
        item('aeadditions:storage.component') * 4
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('aeadditions:storage.component', 1))
    .duration(400)
    .EUt(122880)
    .buildAndRegister()

// 4096k Storage Component
mods.minecraft.crafting.removeByOutput(item('aeadditions:storage.component', 2))
assembler.recipeBuilder()
    .inputs(
        ore('circuitUv') * 4,
        mi('plateDarmstadtium', 4),
        mi('dustCertusQuartz', 32),
        item('appliedenergistics2:material', 23)
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('aeadditions:storage.component', 2))
    .duration(200)
    .EUt(491520)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 23),
        ore('circuitUv') * 4,
        item('aeadditions:storage.component', 1) * 4
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('aeadditions:storage.component', 2))
    .duration(400)
    .EUt(491520)
    .buildAndRegister()

// 16384k Storage Component
mods.minecraft.crafting.removeByOutput(item('aeadditions:storage.component', 3))
assembler.recipeBuilder()
    .inputs(
        ore('circuitUv') * 4,
        mi('plateNeutronium', 4),
        mi('dustCertusQuartz', 32),
        item('appliedenergistics2:material', 23)
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('aeadditions:storage.component', 3))
    .duration(200)
    .EUt(491520)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 23),
        ore('circuitUv') * 4,
        item('aeadditions:storage.component', 2) * 4
    )
    .fluidInputs(fluid('steel') * 144)
    .outputs(item('aeadditions:storage.component', 3))
    .duration(400)
    .EUt(491520)
    .buildAndRegister()

// 256k Fluid Component
mods.minecraft.crafting.removeByOutput(item('aeadditions:storage.component', 4))
assembler.recipeBuilder()
    .inputs(
        ore('circuitZpm') * 4,
        mi('plateNaquadahAlloy', 4),
        mi('dustNetherQuartz', 16),
        item('appliedenergistics2:material', 24)
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('aeadditions:storage.component', 4))
    .duration(200)
    .EUt(122880)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        ore('circuitZpm') * 4,
        item('appliedenergistics2:material', 57) * 4
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('aeadditions:storage.component', 4))
    .duration(400)
    .EUt(122880)
    .buildAndRegister()

// 1024k Fluid Component
mods.minecraft.crafting.removeByOutput(item('aeadditions:storage.component', 5))
assembler.recipeBuilder()
    .inputs(
        ore('circuitZpm') * 4,
        mi('plateAmericium', 4),
        mi('dustNetherQuartz', 16),
        item('appliedenergistics2:material', 24)
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('aeadditions:storage.component', 5))
    .duration(200)
    .EUt(122880)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 24),
        ore('circuitZpm') * 4,
        item('aeadditions:storage.component', 4) * 4
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('aeadditions:storage.component', 5))
    .duration(400)
    .EUt(122880)
    .buildAndRegister()

// 4096k Fluid Component
mods.minecraft.crafting.removeByOutput(item('aeadditions:storage.component', 6))
assembler.recipeBuilder()
    .inputs(
        ore('circuitUv') * 4,
        mi('plateDarmstadtium', 4),
        mi('dustNetherQuartz', 32),
        item('appliedenergistics2:material', 23)
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('aeadditions:storage.component', 6))
    .duration(200)
    .EUt(491520)
    .buildAndRegister()
assembler.recipeBuilder()
    .inputs(
        item('appliedenergistics2:material', 23),
        ore('circuitUv') * 4,
        item('aeadditions:storage.component', 5) * 4
    )
    .fluidInputs(fluid('stainless_steel') * 144)
    .outputs(item('aeadditions:storage.component', 6))
    .duration(400)
    .EUt(491520)
    .buildAndRegister()


////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Certus Quartz Tank
mods.minecraft.crafting.removeByOutput(item('aeadditions:certustank'))
mods.jei.ingredient.hide(item('aeadditions:certustank'))

// Gas Interface
mods.minecraft.crafting.removeByOutput(item('aeadditions:gas_interface'))
mods.jei.ingredient.hide(item('aeadditions:gas_interface'))

// ME Drive Fixture
mods.minecraft.crafting.shapedBuilder()
    .output(item('aeadditions:part.base'))
    .shape([
        [ore('craftGlassCable'), item('appliedenergistics2:part', 120), ore('craftGlassCable')],
        [item('appliedenergistics2:part', 120), item('appliedenergistics2:drive'), item('appliedenergistics2:part', 120)],
        [ore('craftGlassCable'), item('appliedenergistics2:part', 120), ore('craftGlassCable')]
    ])
    .register()

// ME Energy Cell Fixture
mods.minecraft.crafting.removeByOutput(item('aeadditions:part.base', 1))
mods.minecraft.crafting.shapedBuilder()
    .output(item('aeadditions:part.base', 1))
    .shape([
        [ore('craftGlassCable'), item('appliedenergistics2:part', 120), ore('craftGlassCable')],
        [item('appliedenergistics2:part', 120), item('appliedenergistics2:energy_cell'), item('appliedenergistics2:part', 120)],
        [ore('craftGlassCable'), item('appliedenergistics2:part', 120), ore('craftGlassCable')]
    ])
    .register()

// Fluid Interface
mods.jei.ingredient.hide(item('aeadditions:part.base', 2))

// ME Ore Dictionary Export Bus
mods.minecraft.crafting.removeByOutput(item('aeadditions:part.base', 3))
mods.minecraft.crafting.shapedBuilder()
    .output(item('aeadditions:part.base', 3))
    .shape([
        [ore('craftingToolScrewdriver'), mi('plateTitanium'), ore('craftingToolSoftHammer')],
        [item('appliedenergistics2:material', 44), mi('ore_dictionary_filter'), item('appliedenergistics2:material', 43)],
        [mi('screwTitanium'), mi('robot.arm.hv'), mi('screwTitanium')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(4)
    .inputs(
        item('appliedenergistics2:material', 44),
        item('appliedenergistics2:material', 43),
        mi('ore_dictionary_filter'),
        mi('plateTitanium'),
        mi('screwTitanium', 2),
        mi('robot.arm.hv')
    )
    .outputs(item('aeadditions:part.base', 3))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Fluid Filler
mods.minecraft.crafting.removeByOutput(item('aeadditions:fluidfiller'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('aeadditions:fluidfiller'))
    .input(item('appliedenergistics2:part', 520), ore('craftAssemblerFluid'))
    .register()

// ME Fluid Assembler
mods.minecraft.crafting.removeByOutput(item('aeadditions:fluidcrafter'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('aeadditions:fluidcrafter'))
    .input(item('ae2fc:fluid_assembler'))
    .register()
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        mi('plateGlass', 2),
        ore('circuitHv') * 2,
        mi('electric.pump.hv', 2),
        mi('fluid.regulator.hv', 2),
        mi('plateSteel', 4)
    )
    .fluidInputs(fluid('plastic') * 144)
    .outputs(item('aeadditions:fluidcrafter'))
    .duration(200)
    .EUt(480)
    .buildAndRegister()

// Fluid Vibration Chamber
mods.minecraft.crafting.removeByOutput(item('aeadditions:vibrantchamberfluid'))
assembler.recipeBuilder()
    .inputs(
        ore('circuitHv') * 2,
        ore('cableGtSingleGold') * 2,
        mi('electric.pump.hv', 2),
        mi('wireGtDoubleKanthal', 4),
        mi('plateStainlessSteel', 7)
    )
    .outputs(item('aeadditions:vibrantchamberfluid'))
    .duration(200)
    .EUt(480)
    .buildAndRegister()

// Obsidian ME Drive
mods.minecraft.crafting.removeByOutput(item('aeadditions:hardmedrive'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('aeadditions:hardmedrive'))
    .shape([
        [item('enderio:block_reinforced_obsidian'), ore('craftDenseCoveredCable'), item('enderio:block_reinforced_obsidian')],
        [item('enderio:block_reinforced_obsidian'), item('appliedenergistics2:drive'), item('enderio:block_reinforced_obsidian')],
        [item('enderio:block_reinforced_obsidian'), item('minecraft:obsidian'), item('enderio:block_reinforced_obsidian')]
    ])
    .register()
