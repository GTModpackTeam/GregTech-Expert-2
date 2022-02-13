#packmode normal
# Imports



########################################
# Blocks
########################################
# Creative Capacitor Bank
assembly_line.recipeBuilder()
    .circuit(2)
    .inputs([<gregtech:meta_item_1:751> * 4])
    .inputs([<gregtech:fusion_casing:4> * 28])
    .inputs([<gregtech:machine:994> * 5])
    .inputs([<ore:circuitInfinite> * 20])
    .inputs([<enderio:block_cap_bank:3> * 16])
    .inputs([<ore:plateDenseNeutronium> * 8])
    .inputs([<gregtech:meta_item_1:340>])
    .fluidInputs(<liquid:soldering_alloy> * 18432)
    .outputs([<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})])
    .duration(1200)
    .EUt(122880)
    .buildAndRegister();
