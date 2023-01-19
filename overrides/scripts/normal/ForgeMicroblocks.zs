# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Stone Rod
JEI.removeAndHide(<microblockcbe:stone_rod>);
<ore:rodStone>.remove(<microblockcbe:stone_rod>);

# Stone Saw
recipes.remove(<microblockcbe:saw_stone>);
recipes.addShaped(<microblockcbe:saw_stone>, [
    [null, <ore:gtce.tool.hammer>, null],
    [<minecraft:stick>, <metaitem:stickStone>, <metaitem:stickStone>],
    [<minecraft:stick>, <minecraft:flint>, <minecraft:flint>]
]);

# Iron Saw
recipes.remove(<microblockcbe:saw_iron>);
recipes.addShaped(<microblockcbe:saw_iron>, [
    [null, <ore:gtce.tool.hammer>, null],
    [<minecraft:stick>, <metaitem:stickStone>, <metaitem:stickStone>],
    [<minecraft:stick>, <metaitem:plateIron>, <metaitem:plateIron>]
]);

# Diamond Saw
recipes.remove(<microblockcbe:saw_diamond>);
recipes.addShaped(<microblockcbe:saw_diamond>, [
    [null, <ore:gtce.tool.hammer>, null],
    [<minecraft:stick>, <metaitem:stickStone>, <metaitem:stickStone>],
    [<minecraft:stick>, <metaitem:plateDiamond>, <metaitem:plateDiamond>]
]);
