# Imports



########################################
# Blocks
########################################
# Chunk Loader
recipes.remove(<chickenchunks:chunk_loader>);
packer.recipeBuilder()
    .inputs([<chickenchunks:chunk_loader:1> * 9])
    .outputs([<chickenchunks:chunk_loader>])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:frameSteel>,
        <metaitem:stickLongGold> * 2,
        <metaitem:plateObsidian> * 3
    ])
    .outputs([<chickenchunks:chunk_loader>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Spot Loader
recipes.remove(<chickenchunks:chunk_loader:1>);
packer.recipeBuilder()
    .inputs([<chickenchunks:chunk_loader>])
    .outputs([<chickenchunks:chunk_loader:1> * 9])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
