#packmode normal
# Imports



########################################
# Items
########################################
# GTE ME Storage Fake Component
assembly_line.recipeBuilder()
    .inputs([<ore:screwNeutronium> * 4])
    .inputs([<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}) * 4])
    .inputs([<gregtech:machine:1344> * 20])
    .inputs([<appliedenergistics2:creative_energy_cell> * 4])
    .inputs([<extracells:storage.component:3> * 5])
    .inputs([<extracells:storage.component:10> * 4])
    .fluidInputs(<liquid:soldering_alloy> * 18432)
    .fluidInputs(<liquid:neutronium> * 51840)
    .outputs([<contenttweaker:creativecomponent>])
    .duration(1200)
    .EUt(122880)
    .buildAndRegister();
