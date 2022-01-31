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
// <gregtech:machine:1650>.addTooltip(
//     format.red("Waiting for Gregicality to be supported by GTCEu!!")
// );
// <gregtech:machine:1668>.addTooltip(
//     format.red("Waiting for Gregicality to be supported by GTCEu!!")
// );
// <gregtech:machine:1669>.addTooltip(
//     format.red("Waiting for Gregicality to be supported by GTCEu!!")
// );


# Infinite GT Energy Unit Emitter
TableCrafting.addShaped(0, <gregtech:machine:1650>, [
    [<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}), <ore:blockUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}), <ore:wireGtHexUraniumRhodiumDinaquadide>, <enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}), <ore:blockUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})], 
    [<ore:blockUraniumRhodiumDinaquadide>, <ore:batteryInfinite>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <ore:batteryInfinite>, <ore:blockUraniumRhodiumDinaquadide>], 
    [<ore:blockUraniumRhodiumDinaquadide>, <appliedenergistics2:creative_energy_cell>, <ore:batteryInfinite>, <appliedenergistics2:creative_energy_cell>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <appliedenergistics2:creative_energy_cell>, <ore:batteryInfinite>, <appliedenergistics2:creative_energy_cell>, <ore:blockUraniumRhodiumDinaquadide>], 
    [<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}), <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <ore:batteryInfinite>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:batteryInfinite>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})], 
    [<ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:batteryInfinite>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:wireGtHexUraniumRhodiumDinaquadide>], 
    [<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}), <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <ore:batteryInfinite>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:batteryInfinite>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})], 
    [<ore:blockUraniumRhodiumDinaquadide>, <appliedenergistics2:creative_energy_cell>, <ore:batteryInfinite>, <appliedenergistics2:creative_energy_cell>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <appliedenergistics2:creative_energy_cell>, <ore:batteryInfinite>, <appliedenergistics2:creative_energy_cell>, <ore:blockUraniumRhodiumDinaquadide>], 
    [<ore:blockUraniumRhodiumDinaquadide>, <ore:batteryInfinite>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <appliedenergistics2:creative_energy_cell>, <appliedenergistics2:creative_energy_cell>, <ore:batteryInfinite>, <ore:blockUraniumRhodiumDinaquadide>], 
    [<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}), <ore:blockUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}), <ore:wireGtHexUraniumRhodiumDinaquadide>, <enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}), <ore:blockUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})]
]);
