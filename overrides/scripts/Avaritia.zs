# Imoprts
import mods.jei.JEI;



########################################
# Items
########################################
# Neutronium Pile
recipes.remove(<avaritia:resource:2>);
mods.jei.JEI.hide(<avaritia:resource:2>);

# Neutronium Nugget
recipes.remove(<avaritia:resource:3>);
mods.jei.JEI.hide(<avaritia:resource:3>);
<ore:nuggetCosmicNeutronium>.remove(<avaritia:resource:3>);

# Neutronium Ingot
recipes.remove(<avaritia:resource:4>);
mods.jei.JEI.hide(<avaritia:resource:4>);
<ore:ingotCosmicNeutronium>.remove(<avaritia:resource:4>);

# Diamond Lattice
recipes.remove(<avaritia:resource>);
assembler.recipeBuilder().
    inputs([
        <minecraft:diamond> * 5,
        <gregtech:meta_item_1:206>
    ]).
    fluidInputs([<liquid:distilled_water> * 200]).
    outputs([<avaritia:resource>]).
    duration(50).
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



########################################
# Blocks
########################################
# Neutron Collector
mods.avaritia.ExtremeCrafting.remove(<avaritia:neutron_collector>);
mods.jei.JEI.hide(<avaritia:neutron_collector>);

# Neutronium Compressor
mods.avaritia.ExtremeCrafting.remove(<avaritia:neutronium_compressor>);
mods.jei.JEI.hide(<avaritia:neutronium_compressor>);

# Neutronium Ingot
recipes.remove(<avaritia:block_resource>);
mods.jei.JEI.hide(<avaritia:block_resource>);
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
