# Imoprts
import mods.jei.JEI;
import mods.avaritia.ExtremeCrafting;



########################################
# Items
########################################
# Neutronium Pile
JEI.removeAndHide(<avaritia:resource:2>);

# Neutronium Nugget
JEI.removeAndHide(<avaritia:resource:3>);
<ore:nuggetCosmicNeutronium>.remove(<avaritia:resource:3>);

# Neutronium Ingot
JEI.removeAndHide(<avaritia:resource:4>);
<ore:ingotCosmicNeutronium>.remove(<avaritia:resource:4>);

# Infinity Ingot
ExtremeCrafting.remove(<avaritia:resource:6>);
ExtremeCrafting.addShaped("Infinity Ingot", <avaritia:resource:6>, [
    [<gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>],
    [<gregtech:meta_ingot:127>, <avaritia:resource:1>, <avaritia:resource:5>, <avaritia:resource:5>, <avaritia:resource:1>, <avaritia:resource:5>, <avaritia:resource:5>, <avaritia:resource:1>, <gregtech:meta_ingot:127>],
    [<gregtech:meta_ingot:127>, <avaritia:resource:5>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:5>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:5>, <gregtech:meta_ingot:127>],
    [<gregtech:meta_ingot:127>, <avaritia:resource:1>, <avaritia:resource:5>, <avaritia:resource:5>, <avaritia:resource:1>, <avaritia:resource:5>, <avaritia:resource:5>, <avaritia:resource:1>, <gregtech:meta_ingot:127>],
    [<gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>, <gregtech:meta_ingot:127>],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null]
]);

# Infinity Catalyst
ExtremeCrafting.remove(<avaritia:resource:5>);
ExtremeCrafting.addShaped("Infinity Catalyst", <avaritia:resource:5>, [
    [<avaritia:resource:0>, <avaritia:resource:1>, <avaritia:resource:7>, <avaritia:endest_pearl>, <avaritia:ultimate_stew>, <avaritia:cosmic_meatballs>, <avaritia:singularity:0>, <avaritia:singularity:1>, <avaritia:singularity:2>],
    [<avaritia:singularity:3>, <avaritia:singularity:4>, <avaritia:singularity:5>, <avaritia:singularity:6>, <avaritia:singularity:7>, <avaritia:singularity:8>, <avaritia:singularity:9>, <avaritia:singularity:10>, <avaritia:singularity:11>],
    [<gregtech:meta_nugget:127>, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null]
]);

# Diamond Lattice
recipes.remove(<avaritia:resource>);
assembler.recipeBuilder().
    inputs([
        <minecraft:diamond> * 5,
        <gregtech:meta_item_1:206>
    ]).
    fluidInputs([<liquid:distilled_water> * 200]).
    outputs([<avaritia:resource>]).
    duration(100).
    EUt(7680).
    buildAndRegister();

# Crystal Matrix Ingot
recipes.remove(<avaritia:resource:1>);
electric_blast_furnace.recipeBuilder().
    inputs([
        <avaritia:resource> * 4,
        <minecraft:nether_star> * 2
    ]).
    outputs([<avaritia:resource:1>]).
    property("temperature", 2000).
    duration(100).
    EUt(480).
    buildAndRegister();

# Ultimate Stew
ExtremeCrafting.remove(<avaritia:ultimate_stew>);
ExtremeCrafting.addShaped("Ultimate Stew", <avaritia:ultimate_stew>, [
    [<minecraft:wheat>, <minecraft:carrot>, <minecraft:potato>, <minecraft:apple>, <minecraft:melon>, <minecraft:pumpkin>, <minecraft:cactus>, <minecraft:red_mushroom>, <minecraft:brown_mushroom>],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null]
]);

# Endest Pearl
ExtremeCrafting.remove(<avaritia:endest_pearl>);
ExtremeCrafting.addShaped("Endest Pearl", <avaritia:endest_pearl>, [
    [null, null, null, <minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>, null, null, null],
    [null, <minecraft:end_stone>, <minecraft:end_stone>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:end_stone>, <minecraft:end_stone>, null],
    [null, <minecraft:end_stone>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:end_stone>, null],
    [<minecraft:end_stone>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <gregtech:meta_ingot:127>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:end_stone>],
    [<minecraft:end_stone>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <gregtech:meta_ingot:127>, <minecraft:nether_star>, <gregtech:meta_ingot:127>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:end_stone>],
    [<minecraft:end_stone>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <gregtech:meta_ingot:127>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:end_stone>],
    [null, <minecraft:end_stone>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:end_stone>, null],
    [null, <minecraft:end_stone>, <minecraft:end_stone>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:end_stone>, <minecraft:end_stone>, null],
    [null, null, null, <minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>, null, null, null]
]);

# Cosmic Meatballs
ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);
ExtremeCrafting.addShaped("Cosmic Meatballs", <avaritia:cosmic_meatballs>, [
    [<gregtech:meta_dust_tiny:127>, <gregtech:meta_dust:1616>, <gregtech:meta_dust:1616>, <minecraft:beef>, <minecraft:beef>, <minecraft:porkchop>, <minecraft:porkchop>, <minecraft:chicken>, <minecraft:chicken>],
    [<minecraft:rabbit>, <minecraft:rabbit>, <minecraft:mutton>, <minecraft:mutton>, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null]
]);



########################################
# Blocks
########################################
# Compressed Chest
recipes.remove(<avaritiaddons:avaritiaddons_chest>);
compressor.recipeBuilder().
    inputs([<ore:chestWood> * 9]).
    outputs([<avaritiaddons:avaritiaddons_chest>]).
    duration(200).
    EUt(7680).
    buildAndRegister();

# Compressed Chest
recipes.remove(<avaritiaddons:avaritiaddons_chest:1>);
assembler.recipeBuilder().
    inputs([
        <avaritia:resource:6> * 3,
        <avaritia:resource:5> * 4,
        <ore:blockNeutronium>,
        <avaritiaddons:avaritiaddons_chest>,
    ]).
    outputs([<avaritiaddons:avaritiaddons_chest:1>]).
    duration(200).
    EUt(122880).
    buildAndRegister();

# Neutron Collector
ExtremeCrafting.remove(<avaritia:neutron_collector>);
JEI.hide(<avaritia:neutron_collector>);

# Neutronium Compressor
// ExtremeCrafting.remove(<avaritia:neutronium_compressor>);
// JEI.hide(<avaritia:neutronium_compressor>);

# Neutronium Block
JEI.removeAndHide(<avaritia:block_resource>);
<ore:blockCosmicNeutronium>.remove(<avaritia:block_resource>);

# Compressed Crafting Table
recipes.remove(<avaritia:compressed_crafting_table>);
compressor.recipeBuilder().
    inputs([<minecraft:crafting_table> * 9]).
    outputs([<avaritia:compressed_crafting_table>]).
    duration(150).
    EUt(480).
    buildAndRegister();

# Double Compressed Crafting Table
recipes.remove(<avaritia:double_compressed_crafting_table>);
compressor.recipeBuilder().
    inputs([<avaritia:compressed_crafting_table> * 9]).
    outputs([<avaritia:double_compressed_crafting_table>]).
    duration(150).
    EUt(480).
    buildAndRegister();

# Extreme Crafting Table
recipes.remove(<avaritia:extreme_crafting_table>);
assembler.recipeBuilder().
    inputs([
        <avaritia:double_compressed_crafting_table> * 9,
        <avaritia:resource:1>
    ]).
    outputs([<avaritia:extreme_crafting_table>]).
    duration(200).
    EUt(7680).
    buildAndRegister();
