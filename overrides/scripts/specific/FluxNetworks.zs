#modloaded fluxnetworks
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
    [null, <appliedenergistics2:material:45>, <metaitem:quantumeye>],
    [null, <metaitem:stickDarkSteel>, <appliedenergistics2:material:45>],
    [<metaitem:stickDarkSteel>, null, null]
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
        <metaitem:emitter.ev> * 2,
        <metaitem:sensor.ev> * 2,
        <metaitem:cover.digital.wireless>,
        <appliedenergistics2:smooth_sky_stone_block>
    ])
    .outputs([<fluxnetworks:fluxplug>])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();

# Flux Point
recipes.remove(<fluxnetworks:fluxpoint>);
assembler.recipeBuilder()
    .circuit(6)
    .inputs([
        <metaitem:emitter.ev> * 2,
        <metaitem:sensor.ev> * 2,
        <metaitem:cover.digital.wireless>,
        <appliedenergistics2:smooth_sky_stone_block>
    ])
    .outputs([<fluxnetworks:fluxpoint>])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();

# Flux Controller
recipes.remove(<fluxnetworks:fluxcontroller>);
assembler.recipeBuilder()
    .circuit(8)
    .inputs([
        <metaitem:emitter.ev> * 2,
        <metaitem:sensor.ev> * 2,
        <metaitem:cover.digital.wireless> * 4,
        <gregtech:transparent_casing:2> * 4,
        <appliedenergistics2:smooth_sky_stone_block>
    ])
    .outputs([<fluxnetworks:fluxcontroller>])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();

# Flux Storage
JEI.removeAndHide(<fluxnetworks:fluxstorage>);

# Herculean Flux Storage
JEI.removeAndHide(<fluxnetworks:herculeanfluxstorage>);

# Gargantuan Flux Storage
JEI.removeAndHide(<fluxnetworks:gargantuanfluxstorage>);
