#packmode normal
# Imports



########################################
# Blocks
########################################
# Creative Energy Cell
large_crafttable.recipeBuilder()
    .circuit(0)
    .inputs([
        <gregtech:meta_item_1:751> * 4,
        <gregtech:fusion_casing:4> * 28,
        <gregtech:machine:994> * 5,
        <ore:circuitInfinite> * 20,
        <appliedenergistics2:dense_energy_cell> * 16,
        <ore:plateDenseNeutronium> * 8,
        <gregtech:meta_item_1:340>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 16000)
    .outputs([<appliedenergistics2:creative_energy_cell>])
    .duration(1200)
    .EUt(122880)
    .buildAndRegister();
