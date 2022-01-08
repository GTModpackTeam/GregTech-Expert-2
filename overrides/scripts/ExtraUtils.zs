########################################
# Items
########################################
# Watering Can
recipes.remove(<extrautils2:wateringcan>);
recipes.addShaped(<extrautils2:wateringcan>, [
    [<ore:plateDoubleSteel>, null, null],
    [<ore:plateDoubleSteel>, <minecraft:bowl>, <ore:plateDoubleSteel>],
    [null, <ore:plateDoubleSteel>, null]
]);

# Filter
recipes.remove(<extrautils2:filter>);
recipes.addShaped(<extrautils2:filter>, [
    [<ore:plankWood>, <ore:plateGlass>, <ore:plankWood>],
    [<ore:plateGlass>, <gregtech:meta_item_1:291>, <ore:plateGlass>],
    [<ore:plankWood>, <ore:plateGlass>, <ore:plankWood>]
]);



########################################
# Blocks
########################################
# Wood Spike
recipes.remove(<extrautils2:spike_wood>);
recipes.addShaped(<extrautils2:spike_wood> * 4, [
    [null, <minecraft:wooden_sword>, null],[<minecraft:wooden_sword>, <ore:plankWood>, <minecraft:wooden_sword>],
    [<ore:plankWood>, <ore:logWood>, <ore:plankWood>]
]);

# Stone Spike
recipes.remove(<extrautils2:spike_stone>);
recipes.addShaped(<extrautils2:spike_stone>, [
    [null, <minecraft:stone_sword>, null],
    [<minecraft:stone_sword>, <ore:plateStone>, <minecraft:stone_sword>],
    [<ore:plateStone>, <extrautils2:compressedcobblestone:1>, <ore:plateStone>]
]);

# Iron Spike
recipes.remove(<extrautils2:spike_iron>);
recipes.addShaped(<extrautils2:spike_iron> * 4, [
    [null, <minecraft:iron_sword>, null],
    [<minecraft:iron_sword>, <ore:plateIron>, <minecraft:iron_sword>],
    [<ore:plateIron>, <ore:blockIron>, <ore:plateIron>]
]);

# Gold Spike
recipes.remove(<extrautils2:spike_gold>);
recipes.addShaped(<extrautils2:spike_gold> * 4, [
    [null, <minecraft:golden_sword>, null],
    [<minecraft:golden_sword>, <ore:plateGold>, <minecraft:golden_sword>],
    [<ore:plateGold>, <ore:blockGold>, <ore:plateGold>]
]);

# Diamond Spike
recipes.remove(<extrautils2:spike_diamond>);
recipes.addShaped(<extrautils2:spike_diamond> * 4, [
    [null, <minecraft:diamond_sword>, null],
    [<minecraft:diamond_sword>, <ore:plateDiamond>, <minecraft:diamond_sword>],
    [<ore:plateDiamond>, <ore:blockDiamond>, <ore:plateDiamond>]
]);

# Angel Block
recipes.remove(<extrautils2:angelblock>);
recipes.addShaped(<extrautils2:angelblock>, [
    [<minecraft:feather>, null, <minecraft:feather>],
    [null, <enderio:block_reinforced_obsidian>, null],
    [<minecraft:feather>, null, <minecraft:feather>]
]);

# Transfer Pipe
recipes.remove(<extrautils2:pipe>);
recipes.addShaped(<extrautils2:pipe> * 8, [
    [<extrautils2:decorativesolid:3>, <ore:pipeNormalFluidPlastic>, <extrautils2:decorativesolid:3>],
    [<ore:pipeNormalItemElectrum>, <ore:pipeNormalItemElectrum>, <ore:pipeNormalItemElectrum>],
    [<extrautils2:decorativesolid:3>, <ore:pipeNormalFluidPlastic>, <extrautils2:decorativesolid:3>]
]);
