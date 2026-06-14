////////////////////////////////////////
// Items
////////////////////////////////////////
// Food Journal
mods.minecraft.crafting.removeByOutput(item('spiceoflife:bookfoodjournal'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('spiceoflife:bookfoodjournal'))
    .input(item('minecraft:book'), item('minecraft:wheat'))
    .register()

// Lunchbag
mods.minecraft.crafting.removeByOutput(item('spiceoflife:lunchbag'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('spiceoflife:lunchbag'))
    .shape([
        [item('minecraft:paper'), null, item('minecraft:paper')],
        [mi('rubber_drop'), item('minecraft:paper'), mi('rubber_drop')],
        [null, null, null]
    ])
    .register()

// Lunchbox
mods.minecraft.crafting.removeByOutput(item('spiceoflife:lunchbox'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('spiceoflife:lunchbox'))
    .shape([
        [mi('plateDoubleIron'), ore('craftingToolScrewdriver'), mi('plateDoubleIron')],
        [mi('screwIron'), mi('plateDoubleIron'), mi('screwIron')],
        [null, null, null]
    ])
    .register()
