#packmode normal



########################################
# Blocks
########################################
# Chunk Loader
recipes.remove(<chickenchunks:chunk_loader>);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:enchanting_table>,
        <metaitem:world_accelerator.hv>,
    ])
    .outputs([<chickenchunks:chunk_loader>])
    .duration(1000)
    .EUt(480)
    .buildAndRegister();

# Spot Loader
recipes.remove(<chickenchunks:chunk_loader:1>);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:carpet:14>,
        <minecraft:bookshelf>,
        <ore:plateObsidian>,
        <ore:gemDiamond>,
        <metaitem:sensor.mv> * 2,
        <metaitem:field.generator.mv> * 2
    ])
    .outputs([<chickenchunks:chunk_loader:1>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();
