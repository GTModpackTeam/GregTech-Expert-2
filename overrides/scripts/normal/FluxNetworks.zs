#packmode normal
# Imports
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
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <appliedenergistics2:sky_stone_block>,
        <ore:circuitMaster> * 4,
    ])
    .outputs([<fluxnetworks:fluxplug>])
    .duration(2000)
    .EUt(30720)
    .buildAndRegister();

# Flux Point
recipes.remove(<fluxnetworks:fluxpoint>);
assembler.recipeBuilder()
    .circuit(6)
    .inputs([
        <appliedenergistics2:sky_stone_block>,
        <ore:circuitMaster> * 4,
    ])
    .outputs([<fluxnetworks:fluxpoint>])
    .duration(2000)
    .EUt(30720)
    .buildAndRegister();

# Flux Controller
recipes.remove(<fluxnetworks:fluxcontroller>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitMaster> * 4,
        <ore:plateGlass> * 4,
        <appliedenergistics2:sky_stone_block>
    ])
    .outputs([<fluxnetworks:fluxcontroller>])
    .duration(2000)
    .EUt(30720)
    .buildAndRegister();

# Flux Storage
JEI.removeAndHide(<fluxnetworks:fluxstorage>);

# Herculean Flux Storage
JEI.removeAndHide(<fluxnetworks:herculeanfluxstorage>);

# Gargantuan Flux Storage
JEI.removeAndHide(<fluxnetworks:gargantuanfluxstorage>);
