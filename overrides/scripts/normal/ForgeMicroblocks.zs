#packmode normal
# Imoprts
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
    [<ore:stickWood>, <ore:stickStone>, <ore:stickStone>],
    [<ore:stickWood>, <minecraft:flint>, <minecraft:flint>]
]);

# Iron Saw
recipes.remove(<microblockcbe:saw_iron>);
recipes.addShaped(<microblockcbe:saw_iron>, [
    [null, <ore:gtce.tool.hard.hammers>, null],
    [<ore:stickWood>, <ore:stickStone>, <ore:stickStone>],
    [<ore:stickWood>, <ore:plateIron>, <ore:plateIron>]
]);

# Diamond Saw
recipes.remove(<microblockcbe:saw_diamond>);
recipes.addShaped(<microblockcbe:saw_diamond>, [
    [null, <ore:gtce.tool.hard.hammers>, null],
    [<ore:stickWood>, <ore:stickStone>, <ore:stickStone>],
    [<ore:stickWood>, <ore:plateDiamond>, <ore:plateDiamond>]
]);
