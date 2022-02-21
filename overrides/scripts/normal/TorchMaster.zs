#packmode normal
# Imports
import mods.jei.JEI;



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
<torchmaster:mega_torch:1>.addTooltip(format.red("Mega Torch range is 128 blocks."));
<torchmaster:mega_torch:1>.addTooltip(format.red("Available when ignited with flint."));
