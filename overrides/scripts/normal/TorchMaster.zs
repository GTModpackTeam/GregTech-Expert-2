#packmode normal
# Imports
import mods.jei.JEI;
import mods.zenutils.I18n;



########################################
# Blocks
########################################
# Mega Torch
recipes.remove(<torchmaster:mega_torch:0>);
recipes.addShaped(<torchmaster:mega_torch:0>, [
    [<metaitem:dustCoal>, <metaitem:dustCoal>, <metaitem:dustCoal>],
    [<ore:foilGold>, <gregtech:planks:1>, <ore:foilGold>],
    [<ore:foilGold>, <gregtech:planks:1>, <ore:foilGold>]
]);
recipes.addShaped(<torchmaster:mega_torch:0>, [
    [<metaitem:dustCharcoal>, <metaitem:dustCharcoal>, <metaitem:dustCharcoal>],
    [<ore:foilGold>, <gregtech:planks:1>, <ore:foilGold>],
    [<ore:foilGold>, <gregtech:planks:1>, <ore:foilGold>]
]);
<torchmaster:mega_torch:0>.addTooltip(format.green(I18n.format("modpack.torchmaster.mega_torch.tooltip.1")));

# Unlit Mega Torch
JEI.hide(<torchmaster:mega_torch:1>);

# Feral Flare Lantern
<torchmaster:feral_flare_lantern>.addTooltip(format.green(I18n.format("modpack.torchmaster.lantern.tooltip.1")));
