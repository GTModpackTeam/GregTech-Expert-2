#packmode normal
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
    [null, <ore:gtce.tool.hard.hammers>, null],
    [<metaitem:stickWood>, <metaitem:stickStone>, <metaitem:stickStone>],
    [<metaitem:stickWood>, <minecraft:flint>, <minecraft:flint>]
]);

# Iron Saw
recipes.remove(<microblockcbe:saw_iron>);
recipes.addShaped(<microblockcbe:saw_iron>, [
    [null, <ore:gtce.tool.hard.hammers>, null],
    [<metaitem:stickWood>, <metaitem:stickStone>, <metaitem:stickStone>],
    [<metaitem:stickWood>, <metaitem:plateIron>, <metaitem:plateIron>]
]);

# Diamond Saw
recipes.remove(<microblockcbe:saw_diamond>);
recipes.addShaped(<microblockcbe:saw_diamond>, [
    [null, <ore:gtce.tool.hard.hammers>, null],
    [<metaitem:stickWood>, <metaitem:stickStone>, <metaitem:stickStone>],
    [<metaitem:stickWood>, <metaitem:plateDiamond>, <metaitem:plateDiamond>]
]);
