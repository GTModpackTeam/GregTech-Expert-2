#packmode normal
# Imports



########################################
# Blocks
########################################
# Creative Energy Cell
assembly_line.recipeBuilder()
    .inputs([<metaitem:energy.cluster> * 4])
    .inputs([<gregtech:fusion_casing:4> * 28])
    .inputs([<gregtech:machine:994> * 5])
    .inputs([<ore:circuitInfinite> * 20])
    .inputs([<appliedenergistics2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0}) * 16])
    .inputs([<metaitem:cover.solar.panel.uv>])
    .fluidInputs(<liquid:soldering_alloy> * 18432)
    .fluidInputs(<liquid:neutronium> * 10368)
    .fluidInputs(<liquid:fluix> * 4608)
    .outputs([<appliedenergistics2:creative_energy_cell>])
    .duration(1200)
    .EUt(491520)
    .buildAndRegister();
