########################################
# Items
########################################
# Iron Chisel
recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron>, [
    [<ore:gtce.tool.files>, <ore:plateIron>, <ore:plateIron>],
    [null, <ore:screwSteel>, <ore:plateIron>],
    [<ore:stickBronze>, null, <ore:gtce.tool.hard.hammers>]
]);

# Diamond Chisel
recipes.remove(<chisel:chisel_diamond>);
recipes.addShaped(<chisel:chisel_diamond>, [
    [<ore:gtce.tool.files>, <ore:plateDiamond>, <ore:plateDiamond>],
    [null, <chisel:chisel_iron>, <ore:plateDiamond>],
    [<ore:stickRoseGold>, null, <ore:gtce.tool.hard.hammers>]
]);

# iChisel
recipes.remove(<chisel:chisel_hitech>);
recipes.addShaped(<chisel:chisel_hitech>, [
    [<ore:gtce.tool.files>, <ore:plateDiamond>, <ore:plateDiamond>],
    [null, <chisel:chisel_diamond>, <ore:plateDiamond>],
    [<ore:stickStainlessSteel>, null, <ore:gtce.tool.hard.hammers>]
]);



########################################
# Blocks
########################################
# Auto Chisel
recipes.remove(<chisel:auto_chisel>);
recipes.addShaped(<chisel:auto_chisel>, [
    [<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
    [<ore:plateGlass>, <chisel:chisel_hitech>, <ore:plateGlass>],
    [<ore:plateIron>, <ore:compressed1xDustBedrock>, <ore:plateIron>]
]);
