# Imoprts
import mods.jei.JEI;



########################################
# Items
########################################
# Flux
JEI.removeAndHide(<fluxnetworks:flux>);

# Flux Core
JEI.removeAndHide(<fluxnetworks:fluxcore>);

# Flux Configurator
recipes.remove(<fluxnetworks:fluxconfigurator>);
recipes.addShaped(<fluxnetworks:fluxconfigurator>, [
    [null, <enderio:item_material:20>, <minecraft:ender_pearl>],
    [null, <ore:blockObsidian>, <enderio:item_material:20>],
    [<ore:blockObsidian>, null, null]
]);



########################################
# Blocks
########################################
# Flux Block
JEI.removeAndHide(<fluxnetworks:fluxblock>);

# Flux Plug
recipes.remove(<fluxnetworks:fluxplug>);
assembler.recipeBuilder().
    inputs([
        <enderio:block_infinity:2>,
        <ore:circuitElite> * 4,
        <gregtech:meta_item_1:461>.withTag({Configuration: 4})
    ]).
    outputs([<fluxnetworks:fluxplug>]).
    duration(2000).
    EUt(7680).
    buildAndRegister();

# Flux Point
recipes.remove(<fluxnetworks:fluxpoint>);
assembler.recipeBuilder().
    inputs([
        <enderio:block_infinity:2>,
        <ore:circuitElite> * 4,
        <gregtech:meta_item_1:461>.withTag({Configuration: 6})
    ]).
    outputs([<fluxnetworks:fluxpoint>]).
    duration(2000).
    EUt(7680).
    buildAndRegister();

# Flux Controller
recipes.remove(<fluxnetworks:fluxcontroller>);
assembler.recipeBuilder().
    inputs([
        <ore:circuitElite> * 4,
        <ore:plateGlass> * 4,
        <gregtech:machine:1340>,
        <enderio:block_cap_bank:3>
    ]).
    outputs([<fluxnetworks:fluxcontroller>]).
    duration(2000).
    EUt(7680).
    buildAndRegister();

# Flux Storage
recipes.remove(<fluxnetworks:fluxstorage>);
assembler.recipeBuilder().
    inputs([
        <ore:circuitElite> * 4,
        <ore:plateGlass> * 4,
        <gregtech:machine:1340>,
        <enderio:block_cap_bank:3>
    ]).
    outputs([<fluxnetworks:fluxstorage>]).
    duration(2000).
    EUt(7680).
    buildAndRegister();

# Herculean Flux Storage
recipes.remove(<fluxnetworks:herculeanfluxstorage>);
assembler.recipeBuilder().
    inputs([
        <ore:circuitMaster> * 4,
        <ore:plateGlass> * 4,
        <fluxnetworks:fluxstorage> * 6
    ]).
    outputs([<fluxnetworks:herculeanfluxstorage>]).
    duration(2000).
    EUt(30720).
    buildAndRegister();

# Gargantuan Flux Storage
recipes.remove(<fluxnetworks:gargantuanfluxstorage>);
assembler.recipeBuilder().
    inputs([
        <ore:circuitUltimate> * 4,
        <ore:plateGlass> * 4,
        <fluxnetworks:gargantuanfluxstorage> * 6
    ]).
    outputs([<fluxnetworks:gargantuanfluxstorage>]).
    duration(2000).
    EUt(122880).
    buildAndRegister();
