#packmode normal
# Imports
import mods.jei.JEI;
/* 
    TODO
    # Infinite GT Energy Unit Emitter
    <gregtech:machine:1650>

    # Creative Quantum Chest -> Creative Storage Cell??
    <gregtech:machine:1668>

    # Creative Quantum Tank
    <gregtech:machine:1669>
*/



########################################
# Blocks
########################################
<gregtech:machine:1668>.addTooltip(
    format.red("in progress")
);
<gregtech:machine:1669>.addTooltip(
    format.red("in progress")
);

# Infinite GT Energy Unit Emitter
assembly_line.recipeBuilder()
    .inputs([<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})])
    .inputs([<gregtech:meta_item_1:753> * 2])
    .inputs([<contenttweaker:creativecomponent> * 2])
    .inputs([<appliedenergistics2:creative_energy_cell>])
    .inputs([<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})])
    .inputs([<gregtech:meta_item_1:753> * 2])
    .inputs([<contenttweaker:creativecomponent> * 2])
    .inputs([<appliedenergistics2:creative_energy_cell>])
    .inputs([<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})])
    .inputs([<gregtech:meta_item_1:753> * 2])
    .inputs([<contenttweaker:creativecomponent> * 2])
    .inputs([<appliedenergistics2:creative_energy_cell>])
    .inputs([<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})])
    .inputs([<gregtech:meta_item_1:753> * 2])
    .inputs([<contenttweaker:creativecomponent> * 2])
    .inputs([<appliedenergistics2:creative_energy_cell>])
    //.inputs([<gregtech:meta_item_1:1000>])
    .fluidInputs(<liquid:soldering_alloy> * 16000)
    .fluidInputs(<liquid:uranium_rhodium_dinaquadide> * 15552)
    .outputs(<gregtech:machine:1650>)
    .duration(72000)
    .EUt(122880)
    .buildAndRegister();
