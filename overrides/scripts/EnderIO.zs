# Imoprts
import mods.jei.JEI;



########################################
# Items
########################################



########################################
# Blocks
########################################
# Reinforced Obsidian
recipes.remove(<enderio:block_reinforced_obsidian>);
recipes.addShaped(<enderio:block_reinforced_obsidian>, [
    [<enderio:item_alloy_ingot:6>, <enderio:block_infinity>, <enderio:item_alloy_ingot:6>],
    [<enderio:block_infinity>, <minecraft:obsidian>, <enderio:block_infinity>],
    [<enderio:item_alloy_ingot:6>, <enderio:block_infinity>, <enderio:item_alloy_ingot:6>]
]);
