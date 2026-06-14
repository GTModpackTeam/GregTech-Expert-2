////////////////////////////////////////
// Items
////////////////////////////////////////
// Food Journal
mods.minecraft.crafting.removeByOutput(item('solcarrot:food_book'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('solcarrot:food_book'))
    .input(item('minecraft:book'), item('minecraft:carrot'))
    .register()
