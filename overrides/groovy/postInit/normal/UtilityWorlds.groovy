import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName("assembler")


////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Mining Portal
mods.jei.ingredient.hide(item('utilityworlds:portal_mining'))

// Void Portal
mods.minecraft.crafting.shapelessBuilder()
    .output(item('utilityworlds:portal_void'))
    .input(item('utilityworlds:portal_void'))
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(mi('frameAluminium'), mi('plateRedstone'), mi('plateObsidian', 3))
    .outputs(item('utilityworlds:portal_void'))
    .duration(2000)
    .EUt(480)
    .buildAndRegister()

// Garden Portal
mods.minecraft.crafting.shapelessBuilder()
    .output(item('utilityworlds:portal_garden'))
    .input(item('utilityworlds:portal_garden'))
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(mi('frameTitanium'), mi('plateEmerald'), mi('plateObsidian', 3))
    .outputs(item('utilityworlds:portal_garden'))
    .duration(2000)
    .EUt(1920)
    .buildAndRegister()
