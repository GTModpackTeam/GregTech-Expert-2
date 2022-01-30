#packmode normal
# Imoprts
import mods.jei.JEI;
import mods.enderio.AlloySmelter; // 1
import mods.enderio.CombustionGen; // no
import mods.enderio.Enchanter; // no
import mods.enderio.SagMill; // 2
import mods.enderio.SliceNSplice; // 3
import mods.enderio.SoulBinder; // 4
import mods.enderio.Vat; // 5
import mods.enderio.Tank; // no



# Item Conduit
recipes.addShaped(<enderio:item_item_conduit> * 4, [
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:nuggetPulsatingIron>, <ore:nuggetPulsatingIron>, <ore:nuggetPulsatingIron>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);

# Fluid Conduit
recipes.addShaped(<enderio:item_liquid_conduit> * 4, [
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);

# Pressurized Fluid Conduit
recipes.addShaped(<enderio:item_liquid_conduit:1> * 2, [
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:blockGlassHardened>, <enderio:item_liquid_conduit>, <ore:blockGlassHardened>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);

# Ender Fluid Conduit
recipes.addShaped(<enderio:item_liquid_conduit:2>, [
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:ingotVibrantAlloy>, <enderio:item_liquid_conduit:1>, <ore:ingotVibrantAlloy>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);

# Power Conduit
JEI.removeAndHide(<enderio:item_power_conduit:*>);

# Redstone Conduit
recipes.addShaped(<enderio:item_redstone_conduit>, [
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:ingotRedstoneAlloy>, <ore:ingotRedstoneAlloy>, <ore:ingotRedstoneAlloy>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);

# ME Conduit
recipes.addShaped(<enderio:item_me_conduit> * 4, [
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:crystalFluix>, <ore:ae2.cable.glass>, <ore:crystalFluix>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
recipes.addShaped(<enderio:item_me_conduit> * 4, [
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:crystalPureFluix>, <ore:ae2.cable.glass>, <ore:crystalPureFluix>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);

# Dense ME Conduit
recipes.addShaped(<enderio:item_me_conduit:1>, [
    [<ore:itemConduitBinder>, <enderio:item_me_conduit>, <ore:itemConduitBinder>],
    [<enderio:item_me_conduit>, <ore:itemConduitBinder>, <enderio:item_me_conduit>],
    [<ore:itemConduitBinder>, <enderio:item_me_conduit>, <ore:itemConduitBinder>]
]);

# OC Conduit
recipes.addShaped(<enderio:item_opencomputers_conduit>, [
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<opencomputers:material:28>, <opencomputers:material:28>, <opencomputers:material:28>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);

# Endergy Conduit
JEI.removeAndHide(<enderio:item_endergy_conduit:*>);
