# Imoprts
import mods.jei.JEI;



########################################
# Items
########################################
# Flux
recipes.remove(<fluxnetworks:flux>);
mods.jei.JEI.hide(<fluxnetworks:flux>);

# Flux Core
recipes.remove(<fluxnetworks:fluxcore>);
recipes.addShaped(<fluxnetworks:fluxcore> * 4, [ 
    [<enderio:item_material:20>, <ore:blockObsidian>, <enderio:item_material:20>],
    [<ore:blockObsidian>, <minecraft:ender_eye>, <ore:blockObsidian>],
    [<enderio:item_material:20>, <ore:blockObsidian>, <enderio:item_material:20>]
]);

# Flux Block
recipes.remove(<fluxnetworks:fluxblock>);
recipes.addShaped(<fluxnetworks:fluxblock>, [ 
    [<enderio:item_material:20>, <fluxnetworks:fluxcore>, <enderio:item_material:20>],
    [<fluxnetworks:fluxcore>, <enderio:item_material:20>, <fluxnetworks:fluxcore>],
    [<enderio:item_material:20>, <fluxnetworks:fluxcore>, <enderio:item_material:20>]
]);

# Flux Configurator
recipes.remove(<fluxnetworks:fluxconfigurator>);
recipes.addShaped(<fluxnetworks:fluxconfigurator>, [ 
    [null, <enderio:item_material:20>, <minecraft:ender_pearl>],
    [null, <ore:blockObsidian>, <enderio:item_material:20>],
    [<ore:blockObsidian>, null, null]
]);

# Flux Controller
recipes.remove(<fluxnetworks:fluxcontroller>);
recipes.addShaped(<fluxnetworks:fluxcontroller>, [ 
    [<fluxnetworks:fluxblock>, <fluxnetworks:fluxcore>, <fluxnetworks:fluxblock>],
    [<enderio:item_material:20>, null, <enderio:item_material:20>],
    [<fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>]
]);
