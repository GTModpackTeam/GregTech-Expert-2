package post.main

mods.jei.category.hideCategory('threng.agg')
mods.jei.category.hideCategory('threng.purify')
mods.jei.category.hideCategory('threng.etch')
mods.jei.category.hideCategory('threng.energize')

////////////////////////////////////////
// Items
////////////////////////////////////////
// Fluix Steel Ingot
mods.minecraft.furnace.removeByOutput(item('threng:material'))
mods.gregtech.electricFurnace.streamRecipes().filter { recipe ->
    recipe.outputs.any { out -> out.isItemEqual(item('threng:material')) }
}.removeAll()
mods.jei.ingredient.hide(item('threng:material'))

// Carbonic Fluix Complex
mods.minecraft.crafting.removeByOutput(item('threng:material', 1))
mods.jei.ingredient.hide(item('threng:material', 1))

// Fluix-Plated Iron Ingot
mods.jei.ingredient.hide(item('threng:material', 2))

// Coal Dust
mods.minecraft.ore_dict.remove('dustCoal', item('threng:material', 3))
mods.jei.ingredient.hide(item('threng:material', 3))

// Fluix Logic Unit
mods.minecraft.crafting.removeByOutput(item('threng:material', 4))
mods.jei.ingredient.hide(item('threng:material', 4))

// Resonating Crystal
mods.jei.ingredient.hide(item('threng:material', 5))

// Massively Parallel Processor
mods.jei.ingredient.hide(item('threng:material', 6))

// Speculation Cores
mods.jei.ingredient.hide(item('threng:material', 7))
mods.minecraft.crafting.removeByOutput(item('threng:material', 8))
mods.jei.ingredient.hide(item('threng:material', 8))
mods.minecraft.crafting.removeByOutput(item('threng:material', 9))
mods.jei.ingredient.hide(item('threng:material', 9))
mods.minecraft.crafting.removeByOutput(item('threng:material', 10))
mods.jei.ingredient.hide(item('threng:material', 10))
mods.minecraft.crafting.removeByOutput(item('threng:material', 11))
mods.jei.ingredient.hide(item('threng:material', 11))
mods.minecraft.crafting.removeByOutput(item('threng:material', 12))
mods.jei.ingredient.hide(item('threng:material', 12))
mods.minecraft.crafting.removeByOutput(item('threng:material', 13))
mods.jei.ingredient.hide(item('threng:material', 13))

// Speculation Processor
mods.jei.ingredient.hide(item('threng:material', 14))

////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Fluix Aggregator
mods.minecraft.crafting.removeByOutput(item('threng:machine'))
mods.jei.ingredient.hide(item('threng:machine'))

// Pulse Centrifuge
mods.minecraft.crafting.removeByOutput(item('threng:machine', 1))
mods.jei.ingredient.hide(item('threng:machine', 1))

// ME Circuit Etcher
mods.jei.ingredient.hide(item('threng:machine', 2))

// Preemptive Assembly Unit
mods.minecraft.crafting.removeByOutput(item('threng:machine', 3))
mods.minecraft.crafting.shapedBuilder()
    .output(item('threng:machine', 3))
    .shape([
        [metaitem('plateFluixAlloy'), ore('craftInterfaceItem'), metaitem('plateFluixAlloy')],
        [
            item('appliedenergistics2:crafting_accelerator'),
            item('gtexpert:meta_item_1', 1),
            item('appliedenergistics2:crafting_accelerator'),
        ],
        [metaitem('plateFluixAlloy'), item('appliedenergistics2:material', 24), metaitem('plateFluixAlloy')],
    ])
    .register()

// Item Level Maintainer
mods.minecraft.crafting.removeByOutput(item('threng:machine', 4))
mods.minecraft.crafting.shapedBuilder()
    .output(item('threng:machine', 4))
    .shape([
        [metaitem('plateFluixAlloy'), item('appliedenergistics2:part', 280), metaitem('plateFluixAlloy')],
        [item('appliedenergistics2:material', 22), item('gtexpert:meta_item_1', 1), item('appliedenergistics2:material', 22)],
        [metaitem('plateFluixAlloy'), item('appliedenergistics2:material', 53), metaitem('plateFluixAlloy')],
    ])
    .register()

// Crystal Energizer
mods.minecraft.crafting.removeByOutput(item('threng:machine', 5))
mods.jei.ingredient.hide(item('threng:machine', 5))

// Mass Assembler Frame
mods.minecraft.crafting.removeByOutput(item('threng:big_assembler'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('threng:big_assembler') * 4)
    .shape([
        [metaitem('plateFluixAlloy'), item('appliedenergistics2:smooth_sky_stone_block'), metaitem('plateFluixAlloy')],
        [
            item('appliedenergistics2:smooth_sky_stone_block'),
            item('gregtech:machine', 1647),
            item('appliedenergistics2:smooth_sky_stone_block'),
        ],
        [metaitem('plateFluixAlloy'), item('appliedenergistics2:smooth_sky_stone_block'), metaitem('plateFluixAlloy')],
    ])
    .register()

// Mass Assembler Controller
mods.minecraft.crafting.removeByOutput(item('threng:big_assembler', 2))
mods.minecraft.crafting.shapedBuilder()
    .output(item('threng:big_assembler', 2))
    .shape([
        [item('threng:big_assembler'), item('appliedenergistics2:molecular_assembler'), item('threng:big_assembler')],
        [ore('craftGlassCable'), item('gtexpert:meta_item_1', 1), ore('craftGlassCable')],
        [item('threng:big_assembler'), ore('craftInterfaceItem'), item('threng:big_assembler')],
    ])
    .register()

// Pattern Provider
mods.minecraft.crafting.removeByOutput(item('threng:big_assembler', 3))
mods.minecraft.crafting.shapedBuilder()
    .output(item('threng:big_assembler', 3))
    .shape([
        [item('threng:big_assembler'), item('appliedenergistics2:material', 35), item('threng:big_assembler')],
        [ore('craftGlassCable'), item('appliedenergistics2:material', 24), ore('craftGlassCable')],
        [item('threng:big_assembler'), ore('craftInterfaceItem'), item('threng:big_assembler')],
    ])
    .register()

// Crafting Co-Processor
mods.minecraft.crafting.removeByOutput(item('threng:big_assembler', 4))
mods.minecraft.crafting.shapedBuilder()
    .output(item('threng:big_assembler', 4))
    .shape([
        [item('threng:big_assembler'), item('appliedenergistics2:molecular_assembler'), item('threng:big_assembler')],
        [ore('craftGlassCable'), item('appliedenergistics2:material', 24), ore('craftGlassCable')],
        [item('threng:big_assembler'), item('appliedenergistics2:crafting_accelerator'), item('threng:big_assembler')],
    ])
    .register()

// Crafting Co-Processor (Storage I/O)
mods.minecraft.crafting.removeByOutput(item('threng:big_assembler', 5))
mods.minecraft.crafting.shapedBuilder()
    .output(item('threng:big_assembler', 5))
    .shape([
        [item('threng:big_assembler'), metaitem('robot.arm.hv'), item('threng:big_assembler')],
        [ore('craftGlassCable'), item('appliedenergistics2:io_port'), ore('craftGlassCable')],
        [item('threng:big_assembler'), item('appliedenergistics2:chest'), item('threng:big_assembler')],
    ])
    .register()
