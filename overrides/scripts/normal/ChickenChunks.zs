#packmode normal



########################################
# Blocks
########################################
# Chunk Loader
recipes.remove(<chickenchunks:chunk_loader>);
recipes.addShaped(<chickenchunks:chunk_loader>, [
    [<chickenchunks:chunk_loader:1>, <chickenchunks:chunk_loader:1>, <chickenchunks:chunk_loader:1>],
    [<chickenchunks:chunk_loader:1>, <chickenchunks:chunk_loader:1>, <chickenchunks:chunk_loader:1>],
    [<chickenchunks:chunk_loader:1>, <chickenchunks:chunk_loader:1>, <chickenchunks:chunk_loader:1>]
]);
assembler.recipeBuilder().
    inputs([
        <minecraft:enchanting_table>,
        <gregtech:machine:1392>,
    ]).
    circuit(4).
    outputs([<chickenchunks:chunk_loader>]).
    duration(1000).
    EUt(480).
    buildAndRegister();

# Spot Loader
recipes.remove(<chickenchunks:chunk_loader:1>);
recipes.addShapeless(<chickenchunks:chunk_loader:1> * 9, [<chickenchunks:chunk_loader>]);
