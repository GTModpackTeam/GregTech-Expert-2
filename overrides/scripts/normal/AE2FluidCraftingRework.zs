# Imports
import mods.jei.JEI;



########################################
# Blocks
########################################
# Fluid Pattern Encoder
JEI.removeAndHide(<ae2fc:fluid_pattern_encoder>);

# Ingredient Buffer
JEI.removeAndHide(<ae2fc:ingredient_buffer>);

# Large Ingredient Buffer
JEI.removeAndHide(<ae2fc:large_ingredient_buffer>);

# ME Fluid Assembler
recipes.remove(<ae2fc:fluid_assembler>);
recipes.addShapeless(<ae2fc:fluid_assembler>, [<aeadditions:fluidcrafter>]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <metaitem:plateGlass> * 2,
        <ore:circuitHv> * 2,
        <metaitem:electric.pump.hv> * 2,
        <metaitem:fluid.regulator.hv> * 2,
        <metaitem:plateSteel> * 4
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<ae2fc:fluid_assembler>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Fluid Packet Decoder
recipes.remove(<ae2fc:fluid_packet_decoder>);
recipes.addShaped(<ae2fc:fluid_packet_decoder>, [
    [<metaitem:plateStainlessSteel>, <metaitem:electric.piston.hv>, <metaitem:plateStainlessSteel>],
    [<ore:craftGlassCable>, <ore:craftInterfaceFluid>, <ore:craftGlassCable>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:23>, <metaitem:plateStainlessSteel>]
]);

# Precision Burette
recipes.remove(<ae2fc:burette>);
recipes.addShaped(<ae2fc:burette>, [
    [<metaitem:plateStainlessSteel>, <metaitem:electric.piston.hv>, <metaitem:plateStainlessSteel>],
    [<appliedenergistics2:quartz_glass>, <minecraft:bucket>, <appliedenergistics2:quartz_glass>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:23>, <metaitem:plateStainlessSteel>]
]);

# Fluid Discretizer
recipes.remove(<ae2fc:fluid_discretizer>);
recipes.addShaped(<ae2fc:fluid_discretizer>, [
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:24>, <metaitem:plateStainlessSteel>],
    [<appliedenergistics2:part:220>, <appliedenergistics2:condenser>, <appliedenergistics2:part:221>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:24>, <metaitem:plateStainlessSteel>]
]);

# ME Dual Interface
recipes.removeByRecipeName("ae2fc:dual_interface");
recipes.addShaped(<ae2fc:dual_interface>, [
    [<metaitem:plateTitanium>, <metaitem:plateGlass>, <metaitem:plateTitanium>],
    [<gtexpert:meta_item_1:1>, <gregtech:machine_casing:3>, <gtexpert:meta_item_1:1>],
    [<metaitem:plateTitanium>, <metaitem:plateGlass>, <metaitem:plateTitanium>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <gregtech:machine_casing:3>,
        <gtexpert:meta_item_1:1>,
        <metaitem:plateGlass>,
        <metaitem:plateTitanium> * 2,
    ])
    .outputs([<ae2fc:dual_interface>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# Fluid Pattrern Terminal
recipes.remove(<ae2fc:part_fluid_pattern_terminal>);
recipes.addShaped(<ae2fc:part_fluid_pattern_terminal>, [
    [<ore:craftingToolScrewdriver>, <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>],
    [<metaitem:screwStainlessSteel>, <appliedenergistics2:material:52>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:23>, <metaitem:plateStainlessSteel>]
]);
recipes.addShaped(<ae2fc:part_fluid_pattern_terminal>, [
    [<ore:craftingToolSoftHammer>, <appliedenergistics2:part:380>, <ore:craftingToolScrewdriver>],
    [<metaitem:screwStainlessSteel>, <appliedenergistics2:material:52>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:23>, <metaitem:plateStainlessSteel>]
]);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <appliedenergistics2:part:380>,
        <appliedenergistics2:material:52>,
        <metaitem:screwStainlessSteel>,
        <metaitem:plateStainlessSteel>
    ])
    .outputs([<ae2fc:part_fluid_pattern_terminal>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# Extended Processing Fluid Pattern Terminal
recipes.remove(<ae2fc:part_fluid_pattern_ex_terminal>);
recipes.addShaped(<ae2fc:part_fluid_pattern_ex_terminal>, [
    [<ore:craftingToolScrewdriver>, <ae2fc:part_fluid_pattern_terminal>, <ore:craftingToolSoftHammer>],
    [<metaitem:screwStainlessSteel>, <appliedenergistics2:material:52>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:24>, <metaitem:plateStainlessSteel>]
]);
recipes.addShaped(<ae2fc:part_fluid_pattern_ex_terminal>, [
    [<ore:craftingToolSoftHammer>, <ae2fc:part_fluid_pattern_terminal>, <ore:craftingToolScrewdriver>],
    [<metaitem:screwStainlessSteel>, <appliedenergistics2:material:52>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:24>, <metaitem:plateStainlessSteel>]
]);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ae2fc:part_fluid_pattern_terminal>,
        <appliedenergistics2:material:52>,
        <metaitem:screwStainlessSteel>,
        <metaitem:plateStainlessSteel>
    ])
    .outputs([<ae2fc:part_fluid_pattern_ex_terminal>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# Fluid Level Maintainer
recipes.remove(<ae2fc:fluid_level_maintainer>);
recipes.addShaped(<ae2fc:fluid_level_maintainer>, [
    [<metaitem:plateFluixAlloy>, <appliedenergistics2:part:281>, <metaitem:plateFluixAlloy>],
    [<appliedenergistics2:material:22>, <gtexpert:meta_item_1:1>, <appliedenergistics2:material:22>],
    [<metaitem:plateFluixAlloy>, <appliedenergistics2:material:53>, <metaitem:plateFluixAlloy>]
]);



########################################
# Items
########################################
# Wireless Fluid Interface Terminal
recipes.remove(<ae2fc:wireless_fluid_pattern_terminal>);
recipes.addShaped(<ae2fc:wireless_fluid_pattern_terminal>, [
    [<appliedenergistics2:dense_energy_cell>, <ae2fc:part_fluid_pattern_terminal>, <appliedenergistics2:dense_energy_cell>],
    [<metaitem:sensor.iv>, <appliedenergistics2:part:480>, <metaitem:sensor.iv>],
    [<metaitem:stickOsmiridium>, <metaitem:emitter.iv>, <metaitem:stickOsmiridium>]
]);
