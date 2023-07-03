# Imports
import mods.jei.JEI;

JEI.hideCategory("threng.agg");
JEI.hideCategory("threng.purify");
JEI.hideCategory("threng.etch");
JEI.hideCategory("threng.energize");



########################################
# Items
########################################
# Fluix Steel Ingot
furnace.remove(<threng:material>);
JEI.hide(<threng:material>);

# Carbonic Fluix Complex
JEI.removeAndHide(<threng:material:1>);

# Fluix-Plated Iron Ingot
JEI.hide(<threng:material:2>);

# Coal Dust
<ore:dustCoal>.remove(<threng:material:3>);
JEI.hide(<threng:material:3>);

# Fluix Logic Unit
JEI.removeAndHide(<threng:material:4>);

# Resonating Crystal
JEI.hide(<threng:material:5>);

# Massively Parallel Processor
JEI.hide(<threng:material:6>);

# Speculation Cores
JEI.hide(<threng:material:7>);
JEI.removeAndHide(<threng:material:8>);
JEI.removeAndHide(<threng:material:9>);
JEI.removeAndHide(<threng:material:10>);
JEI.removeAndHide(<threng:material:11>);
JEI.removeAndHide(<threng:material:12>);
JEI.removeAndHide(<threng:material:13>);

# Speculation Processor
JEI.hide(<threng:material:14>);



########################################
# Blocks
########################################
# Fluix Aggregator
JEI.removeAndHide(<threng:machine>);

# Pulse Centrifuge
JEI.removeAndHide(<threng:machine:1>);

# ME Circuit Etcher
JEI.removeAndHide(<threng:machine:2>);

# Preemptive Assembly Unit
recipes.remove(<threng:machine:3>);
recipes.addShaped(<threng:machine:3>, [
    [<metaitem:plateFluixAlloy>, <ore:craftInterfaceItem>, <metaitem:plateFluixAlloy>],
    [<appliedenergistics2:crafting_accelerator>, <metaitem:matrix_core>, <appliedenergistics2:crafting_accelerator>],
    [<metaitem:plateFluixAlloy>, <appliedenergistics2:material:24>, <metaitem:plateFluixAlloy>]
]);

# Item Level Maintainer
recipes.remove(<threng:machine:4>);
recipes.addShaped(<threng:machine:4>, [
    [<metaitem:plateFluixAlloy>, <appliedenergistics2:part:280>, <metaitem:plateFluixAlloy>],
    [<appliedenergistics2:material:22>, <metaitem:matrix_core>, <appliedenergistics2:material:22>],
    [<metaitem:plateFluixAlloy>, <appliedenergistics2:material:53>, <metaitem:plateFluixAlloy>]
]);

# Crystal Energizer
JEI.removeAndHide(<threng:machine:5>);

# Mass Assembler Frame
recipes.remove(<threng:big_assembler>);
recipes.addShaped(<threng:big_assembler> * 4, [
    [<metaitem:plateFluixAlloy>, <appliedenergistics2:smooth_sky_stone_block>, <metaitem:plateFluixAlloy>],
    [<appliedenergistics2:smooth_sky_stone_block>, <gregtech:machine:1647>, <appliedenergistics2:smooth_sky_stone_block>],
    [<metaitem:plateFluixAlloy>, <appliedenergistics2:smooth_sky_stone_block>, <metaitem:plateFluixAlloy>]
]);

# Mass Assembler Controller
recipes.remove(<threng:big_assembler:2>);
recipes.addShaped(<threng:big_assembler:2>, [
    [<threng:big_assembler>, <appliedenergistics2:molecular_assembler>, <threng:big_assembler>],
    [<ore:craftGlassCable>, <metaitem:matrix_core>, <ore:craftGlassCable>],
    [<threng:big_assembler>, <ore:craftInterfaceItem>, <threng:big_assembler>]
]);

# Pattern Provider
recipes.remove(<threng:big_assembler:3>);
recipes.addShaped(<threng:big_assembler:3>, [
    [<threng:big_assembler>, <appliedenergistics2:material:35>, <threng:big_assembler>],
    [<ore:craftGlassCable>, <appliedenergistics2:material:24>, <ore:craftGlassCable>],
    [<threng:big_assembler>, <ore:craftInterfaceItem>, <threng:big_assembler>]
]);

# Crafting Co-Processor
recipes.remove(<threng:big_assembler:4>);
recipes.addShaped(<threng:big_assembler:4>, [
    [<threng:big_assembler>, <appliedenergistics2:molecular_assembler>, <threng:big_assembler>],
    [<ore:craftGlassCable>, <appliedenergistics2:material:24>, <ore:craftGlassCable>],
    [<threng:big_assembler>, <appliedenergistics2:crafting_accelerator>, <threng:big_assembler>]
]);

# Crafting Co-Processor
recipes.remove(<threng:big_assembler:5>);
recipes.addShaped(<threng:big_assembler:5>, [
    [<threng:big_assembler>, <metaitem:robot.arm.hv>, <threng:big_assembler>],
    [<ore:craftGlassCable>, <appliedenergistics2:io_port>, <ore:craftGlassCable>],
    [<threng:big_assembler>, <appliedenergistics2:chest>, <threng:big_assembler>]
]);
