########################################
# Items
########################################
# Iron Chisel
recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron>, [
    [<ore:craftingToolFile>, <ore:plateIron>, <ore:plateIron>],
    [null, <ore:screwSteel>, <ore:plateIron>],
    [<ore:stickBronze>, null, <ore:craftingToolHardHammer>]
]);

# Diamond Chisel
recipes.remove(<chisel:chisel_diamond>);
recipes.addShaped(<chisel:chisel_diamond>, [
    [<ore:craftingToolFile>, <ore:plateDiamond>, <ore:plateDiamond>],
    [null, <chisel:chisel_iron>, <ore:plateDiamond>],
    [<ore:stickRoseGold>, null, <ore:craftingToolHardHammer>]
]);

# iChisel
recipes.remove(<chisel:chisel_hitech>);
recipes.addShaped(<chisel:chisel_hitech>, [
    [<ore:craftingToolFile>, <ore:plateDiamond>, <ore:plateDiamond>],
    [null, <chisel:chisel_diamond>, <ore:plateDiamond>],
    [<ore:stickStainlessSteel>, null, <ore:craftingToolHardHammer>]
]);



########################################
# Blocks
########################################
# Cobblestone 1x
var cobblestone_1x = <notenoughcompression:compresseditem_base_itemblock>.withTag({notenoughcompression_itemstack: {id: "minecraft:cobblestone", Count: 1 as byte, Damage: 0 as short}, notenoughcompression_time: 1});

# Auto Chisel
recipes.remove(<chisel:auto_chisel>);
recipes.addShaped(<chisel:auto_chisel>, [
    [<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
    [<ore:plateGlass>, <chisel:chisel_hitech>.noReturn(), <ore:plateGlass>],
    [<ore:plateIron>, cobblestone_1x, <ore:plateIron>]
]);

// TODO
# 鉱石辞書の削除
