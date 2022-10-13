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

# Fluid Packet Decoder
recipes.remove(<ae2fc:fluid_packet_decoder>);
recipes.addShaped(<ae2fc:fluid_packet_decoder>, [
    [<metaitem:plateStainlessSteel>, <metaitem:electric.piston.hv>, <metaitem:plateStainlessSteel>],
    [<ore:ae2.cable.glass>, <ore:ae2.interface.fluid>, <ore:ae2.cable.glass>],
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
packer.recipeBuilder()
    .inputs([
        <ore:ae2.interface.item>,
        <ore:ae2.interface.fluid>
    ])
    .outputs([<ae2fc:dual_interface>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<ae2fc:dual_interface>])
    .outputs([
        <appliedenergistics2:interface>,
        <appliedenergistics2:fluid_interface>
    ])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Fluid Pattrern Terminal
recipes.remove(<ae2fc:part_fluid_pattern_terminal>);
recipes.addShaped(<ae2fc:part_fluid_pattern_terminal>, [
    [<ore:gtce.tool.screwdrivers>, <appliedenergistics2:part:380>, <ore:gtce.tool.soft.hammers>],
    [<metaitem:screwStainlessSteel>, <appliedenergistics2:material:52>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:22>, <metaitem:plateStainlessSteel>]
]);
recipes.addShaped(<ae2fc:part_fluid_pattern_terminal>, [
    [<ore:gtce.tool.soft.hammers>, <appliedenergistics2:part:380>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:screwStainlessSteel>, <appliedenergistics2:material:52>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:22>, <metaitem:plateStainlessSteel>]
]);

# Extended Processing Fluid Pattrern Terminal
recipes.remove(<ae2fc:part_fluid_pattern_ex_terminal>);
recipes.addShaped(<ae2fc:part_fluid_pattern_ex_terminal>, [
    [<ore:gtce.tool.screwdrivers>, <ae2fc:part_fluid_pattern_terminal>, <ore:gtce.tool.soft.hammers>],
    [<metaitem:screwStainlessSteel>, <appliedenergistics2:material:52>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:24>, <metaitem:plateStainlessSteel>]
]);
recipes.addShaped(<ae2fc:part_fluid_pattern_ex_terminal>, [
    [<ore:gtce.tool.soft.hammers>, <ae2fc:part_fluid_pattern_terminal>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:screwStainlessSteel>, <appliedenergistics2:material:52>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:24>, <metaitem:plateStainlessSteel>]
]);

# Level Maintainer
recipes.remove(<ae2fc:fluid_level_maintainer>);
recipes.addShaped(<ae2fc:fluid_level_maintainer>, [
    [<threng:material>, <appliedenergistics2:part:281>, <threng:material>],
    [<appliedenergistics2:material:22>, <metaitem:matrix_core>, <appliedenergistics2:material:22>],
    [<threng:material>, <appliedenergistics2:material:53>, <threng:material>]
]);
