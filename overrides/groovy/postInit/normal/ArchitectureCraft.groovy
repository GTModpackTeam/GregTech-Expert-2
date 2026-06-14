////////////////////////////////////////
// Items
////////////////////////////////////////
// Circular Saw Blade
mods.minecraft.crafting.removeByOutput(item('architecturecraft:sawblade'))

// Large Pulley
mods.minecraft.crafting.removeByOutput(item('architecturecraft:largepulley'))

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
        [mi('plateDoubleIron'), mi('plateIron'), mi('plateIron')],
        [ore('craftingToolFile'), item('minecraft:stick'), ore('craftingToolHardHammer')],
        [null, item('minecraft:stick'), null]
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
        [mi('plateDoubleIron'), mi('toolHeadBuzzSawIron'), mi('plateDoubleIron')],
        [ore('fenceWood'), mi('gearWood'), ore('fenceWood')],
        [ore('fenceWood'), item('minecraft:wooden_pressure_plate'), ore('fenceWood')]
    ])
    .register()
