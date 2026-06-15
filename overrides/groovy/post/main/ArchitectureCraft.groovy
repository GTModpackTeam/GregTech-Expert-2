package post.main

////////////////////////////////////////
// Items
////////////////////////////////////////
// Chisel
mods.minecraft.crafting.removeByOutput(item('architecturecraft:chisel'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('architecturecraft:chisel'))
    .input(item('chisel:chisel_iron'))
    .register()

// Hammer
mods.minecraft.crafting.removeByOutput(item('architecturecraft:hammer'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('architecturecraft:hammer'))
    .shape([
        [metaitem('plateDoubleIron'), metaitem('plateIron'), metaitem('plateIron')],
        [ore('craftingToolFile'), item('minecraft:stick'), ore('craftingToolHardHammer')],
        [null, item('minecraft:stick'), null],
    ])
    .register()

////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Sawbench
mods.minecraft.crafting.removeByOutput(item('architecturecraft:sawbench'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('architecturecraft:sawbench'))
    .shape([
        [metaitem('plateDoubleIron'), metaitem('toolHeadBuzzSawIron'), metaitem('plateDoubleIron')],
        [ore('fenceWood'), metaitem('gearWood'), ore('fenceWood')],
        [ore('fenceWood'), item('minecraft:wooden_pressure_plate'), ore('fenceWood')],
    ])
    .register()
