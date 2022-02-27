#packmode normal
# Imports
import mods.jei.JEI;
import mods.zenutils.I18n;



########################################
# Blocks
########################################
# Mega Torch
JEI.removeAndHide(<torchmaster:mega_torch>);
recipes.addShaped(<torchmaster:mega_torch>, [
    [<ore:dustCoal> | <ore:dustCharcoal>, <ore:dustCoal> | <ore:dustCharcoal>, <ore:dustCoal> | <ore:dustCharcoal>],
    [<ore:foilGold>, <gregtech:planks:1>, <ore:foilGold>],
    [<ore:foilGold>, <gregtech:planks:1>, <ore:foilGold>]
]);
<torchmaster:mega_torch>.addTooltip(format.green(I18n.format("torchmaster.mega_torch.tooltip.1")));

# Feral Flare Lantern
<torchmaster:feral_flare_lantern>.addTooltip(format.green(I18n.format("torchmaster.lantern.tooltip.1.line1")));
<torchmaster:feral_flare_lantern>.addTooltip(format.green(I18n.format("torchmaster.lantern.tooltip.1.line2")));
