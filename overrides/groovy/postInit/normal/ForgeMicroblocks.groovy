// ########################################
// Items
// ########################################
// Stone Rod
mods.minecraft.crafting.removeByOutput(item('microblockcbe:stone_rod'))
mods.jei.ingredient.hide(item('microblockcbe:stone_rod'))
mods.minecraft.ore_dict.remove('rodStone', item('microblockcbe:stone_rod'))

// Stone Saw
mods.minecraft.crafting.removeByOutput(item('microblockcbe:saw_stone'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('microblockcbe:saw_stone'))
    .shape([
        [null, ore('craftingToolHardHammer'), null],
        [item('minecraft:stick'), mi('stickStone'), mi('stickStone')],
        [item('minecraft:stick'), item('minecraft:flint'), item('minecraft:flint')]
    ])
    .register()

// Iron Saw
mods.minecraft.crafting.removeByOutput(item('microblockcbe:saw_iron'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('microblockcbe:saw_iron'))
    .shape([
        [null, ore('craftingToolHardHammer'), null],
        [item('minecraft:stick'), mi('stickStone'), mi('stickStone')],
        [item('minecraft:stick'), mi('plateIron'), mi('plateIron')]
    ])
    .register()

// Diamond Saw
mods.minecraft.crafting.removeByOutput(item('microblockcbe:saw_diamond'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('microblockcbe:saw_diamond'))
    .shape([
        [null, ore('craftingToolHardHammer'), null],
        [item('minecraft:stick'), mi('stickStone'), mi('stickStone')],
        [item('minecraft:stick'), mi('plateDiamond'), mi('plateDiamond')]
    ])
    .register()
