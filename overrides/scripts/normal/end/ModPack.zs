#packmode normal
# Imports



########################################
# Items
########################################
# GTE ME Storage Fake Component
large_crafttable.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:screwNeutronium> * 4,
        <ore:plateDenseNeutronium> * 40,
        <enderio:block_cap_bank>.withEmptyTag() * 4,
        <gregtech:machine:1344> * 20,
        <appliedenergistics2:creative_energy_cell> * 4,
        <extracells:storage.component:3> * 5,
        <extracells:storage.component:10> * 4
    ])
    .fluidInputs(<liquid:soldering_alloy> * 16000)
    .outputs([<contenttweaker:creativecomponent>])
    .duration(1200)
    .EUt(122880)
    .buildAndRegister();
