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
# Infinite GT Energy Unit Emitter
assembly_line.recipeBuilder()
    .inputs([<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}) * 4])
    .inputs([<appliedenergistics2:creative_energy_cell> * 4])
    .inputs([<metaitem:max.battery> * 8])
    .inputs([<contenttweaker:creativecomponent> * 8])
    .fluidInputs(<liquid:soldering_alloy> * 18432)
    .fluidInputs(<liquid:uranium_rhodium_dinaquadide> * 15552)
    .outputs(<gregtech:machine:1650>)
    .duration(6000)
    .EUt(491520)
    .buildAndRegister();

# Creative Quantum Tank
assembly_line.recipeBuilder()
    .inputs([<gregtech:machine:1650> * 2])
    .inputs([<gregtech:machine:1589> * 64])
    .inputs([<metaitem:quantumstar> * 64])
    .inputs([<metaitem:quantumstar> * 64])
    .inputs([<metaitem:electric.pump.uv> * 64])
    .inputs([<metaitem:electric.pump.uv> * 64])
    .inputs([<metaitem:fluid.regulator.uv> * 64])
    .inputs([<metaitem:fluid.regulator.uv> * 64])
    .inputs([<metaitem:emitter.uv> * 64])
    .inputs([<metaitem:emitter.uv> * 64])
    .inputs([<metaitem:circuit.wetware_mainframe> * 64])
    .inputs([<metaitem:nan.certificate>])
    .fluidInputs(<liquid:soldering_alloy> * 147456)
    .fluidInputs(<liquid:ruthenium_trinium_americium_neutronate> * 165888)
    .outputs([<gregtech:machine:1669>])
    .duration(6000)
    .EUt(491520)
    .buildAndRegister();

# Creative Quantum Chest
assembly_line.recipeBuilder()
    .inputs([<gregtech:machine:1650> * 8])
    .inputs([<gregtech:machine:1669> * 4])
    .inputs([<gregtech:machine:1574> * 64])
    .inputs([<metaitem:gravistar> * 64])
    .inputs([<metaitem:gravistar> * 64])
    .inputs([<metaitem:conveyor.module.uv> * 64])
    .inputs([<metaitem:conveyor.module.uv> * 64])
    .inputs([<metaitem:robot.arm.uv> * 64])
    .inputs([<metaitem:robot.arm.uv> * 64])
    .inputs([<metaitem:emitter.uv> * 64])
    .inputs([<metaitem:emitter.uv> * 64])
    .inputs([<metaitem:circuit.wetware_mainframe> * 64])
    .inputs([<metaitem:circuit.wetware_mainframe> * 64])
    .inputs([<metaitem:nan.certificate> * 4])
    .fluidInputs(<liquid:soldering_alloy> * 147456)
    .fluidInputs(<liquid:ruthenium_trinium_americium_neutronate> * 663552)
    .outputs([<gregtech:machine:1668>])
    .duration(6000)
    .EUt(491520)
    .buildAndRegister();
