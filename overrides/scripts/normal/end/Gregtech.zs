#packmode normal
# Imoprts
import mods.jei.JEI;
import mods.extendedcrafting.TableCrafting;
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
// TableCrafting.addShaped(0, <gregtech:machine:1650>, [
//     [<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}), <ore:blockUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <contenttweaker:creativecomponent>, <ore:blockUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})], 
//     [<ore:blockUraniumRhodiumDinaquadide>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <gregtech:meta_item_1:753>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <ore:blockUraniumRhodiumDinaquadide>], 
//     [<ore:blockUraniumRhodiumDinaquadide>, <appliedenergistics2:creative_energy_cell>, <contenttweaker:creativecomponent>, <appliedenergistics2:creative_energy_cell>, <gregtech:meta_item_1:753>, <appliedenergistics2:creative_energy_cell>, <contenttweaker:creativecomponent>, <appliedenergistics2:creative_energy_cell>, <ore:blockUraniumRhodiumDinaquadide>], 
//     [<ore:blockUraniumRhodiumDinaquadide>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <gregtech:meta_item_1:753>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <ore:blockUraniumRhodiumDinaquadide>], 
//     [<contenttweaker:creativecomponent>, <gregtech:meta_item_1:753>, <gregtech:meta_item_1:753>, <gregtech:meta_item_1:753>, <gregtech:meta_item_1:1000>, <gregtech:meta_item_1:753>, <gregtech:meta_item_1:753>, <gregtech:meta_item_1:753>, <contenttweaker:creativecomponent>], 
//     [<ore:blockUraniumRhodiumDinaquadide>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <gregtech:meta_item_1:753>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <ore:blockUraniumRhodiumDinaquadide>], 
//     [<ore:blockUraniumRhodiumDinaquadide>, <appliedenergistics2:creative_energy_cell>, <contenttweaker:creativecomponent>, <appliedenergistics2:creative_energy_cell>, <gregtech:meta_item_1:753>, <appliedenergistics2:creative_energy_cell>, <contenttweaker:creativecomponent>, <appliedenergistics2:creative_energy_cell>, <ore:blockUraniumRhodiumDinaquadide>], 
//     [<ore:blockUraniumRhodiumDinaquadide>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <gregtech:meta_item_1:753>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <ore:blockUraniumRhodiumDinaquadide>], 
//     [<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}), <ore:blockUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <contenttweaker:creativecomponent>, <ore:blockUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})]
// ]);

assembly_line.recipeBuilder()
    .inputs([<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})])
    .inputs([<gregtech:meta_item_1:753> * 4])
    .inputs([<contenttweaker:creativecomponent> * 2])
    .inputs([<appliedenergistics2:creative_energy_cell> * 8])
    .inputs([<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})])
    .inputs([<gregtech:meta_item_1:753> * 4])
    .inputs([<contenttweaker:creativecomponent> * 2])
    .inputs([<appliedenergistics2:creative_energy_cell> * 8])
    .inputs([<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})])
    .inputs([<gregtech:meta_item_1:753> * 4])
    .inputs([<contenttweaker:creativecomponent> * 2])
    .inputs([<appliedenergistics2:creative_energy_cell> * 8])
    .inputs([<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})])
    .inputs([<gregtech:meta_item_1:753> * 4])
    .inputs([<contenttweaker:creativecomponent> * 2])
    .inputs([<gregtech:meta_item_1:1000>])
    .fluidInputs(<liquid:soldering_alloy> * 16000)
    .fluidInputs(<liquid:uranium_rhodium_dinaquadide> * 15552)
    .outputs(<gregtech:machine:1650>)
    .duration(72000)
    .EUt(122880)
    .buildAndRegister();
