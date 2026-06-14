import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName("assembler")
def packer = RecipeMap.getByName("packer")

////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Chunk Loader
mods.minecraft.crafting.removeByOutput(item('chickenchunks:chunk_loader'))
packer.recipeBuilder()
    .inputs(item('chickenchunks:chunk_loader', 1) * 9)
    .outputs(item('chickenchunks:chunk_loader'))
    .duration(20)
    .EUt(30)
    .buildAndRegister()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        mi('frameSteel'),
        mi('stickLongGold', 2),
        mi('plateObsidian', 3)
    )
    .outputs(item('chickenchunks:chunk_loader'))
    .duration(100)
    .EUt(30)
    .buildAndRegister()

// Spot Loader
mods.minecraft.crafting.removeByOutput(item('chickenchunks:chunk_loader', 1))
packer.recipeBuilder()
    .inputs(item('chickenchunks:chunk_loader'))
    .outputs(item('chickenchunks:chunk_loader', 1) * 9)
    .duration(20)
    .EUt(30)
    .buildAndRegister()
