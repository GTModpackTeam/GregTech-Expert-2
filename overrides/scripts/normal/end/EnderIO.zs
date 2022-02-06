#packmode normal
# Imports



########################################
# Blocks
########################################
# Creative Capacitor Bank
large_crafttable.recipeBuilder()
    .circuit(1)
    .inputs([
        <gregtech:meta_item_1:751> * 4,
        <gregtech:fusion_casing:4> * 28,
        <gregtech:machine:994> * 5,
        <ore:circuitInfinite> * 20,
        <enderio:block_cap_bank:3> * 16,
        <ore:plateDenseNeutronium> * 8,
        <gregtech:meta_item_1:340>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 16000)
    .outputs([<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})])
    .duration(1200)
    .EUt(122880)
    .buildAndRegister();
