#packmode normal
# Imports
import mods.jei.JEI;
import mods.zenutils.I18n;



########################################
# Blocks
########################################
# Mega Torch
JEI.removeAndHide(<torchmaster:mega_torch>);

# Unlit Mega Torch
recipes.addShaped(<torchmaster:mega_torch:1>, [
    [<ore:dustCoal> | <ore:dustCharcoal>, <ore:dustCoal> | <ore:dustCharcoal>, <ore:dustCoal> | <ore:dustCharcoal>],
    [<ore:foilGold>, <gregtech:planks:1>, <ore:foilGold>],
    [<ore:foilGold>, <gregtech:planks:1>, <ore:foilGold>]
]);
<torchmaster:mega_torch:1>.addTooltip(format.green(I18n.format("modpack.tooltip.megaTorch.line1")));
<torchmaster:mega_torch:1>.addTooltip(format.red(I18n.format("modpack.tooltip.megaTorch.line2")));
