////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Mega Torch
mods.minecraft.crafting.removeByOutput(item('torchmaster:mega_torch', 0))
mods.minecraft.crafting.shapedBuilder()
    .output(item('torchmaster:mega_torch', 0))
    .shape([
        [mi('dustCoal'), mi('dustCoal'), mi('dustCoal')],
        [ore('foilGold'), item('gregtech:planks', 1), ore('foilGold')],
        [ore('foilGold'), item('gregtech:planks', 1), ore('foilGold')]
    ])
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('torchmaster:mega_torch', 0))
    .shape([
        [mi('dustCharcoal'), mi('dustCharcoal'), mi('dustCharcoal')],
        [ore('foilGold'), item('gregtech:planks', 1), ore('foilGold')],
        [ore('foilGold'), item('gregtech:planks', 1), ore('foilGold')]
    ])
    .register()

// Unlit Mega Torch
mods.jei.ingredient.hide(item('torchmaster:mega_torch', 1))
