#packmode normal
# Imports



########################################
# Blocks
########################################
# Creative Energy Cell
assembly_line.recipeBuilder()
    .circuit(0)
    .inputs([<gregtech:meta_item_1:751> * 4])
    .inputs([<gregtech:fusion_casing:4> * 28])
    .inputs([<gregtech:machine:994> * 5])
    .inputs([<ore:circuitInfinite> * 20])
    .inputs([<appliedenergistics2:dense_energy_cell> * 16])
    .inputs([<ore:plateDenseNeutronium> * 8])
    .inputs([<gregtech:meta_item_1:340>])
    .fluidInputs(<liquid:soldering_alloy> * 16000)
    .outputs([<appliedenergistics2:creative_energy_cell>])
    .duration(1200)
    .EUt(122880)
    .buildAndRegister();
