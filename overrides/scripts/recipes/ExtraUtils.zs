# Imoprts
import mods.jei.JEI;
import mods.extrautils2.Resonator;



########################################
# Items
########################################
# Filter
JEI.removeAndHide(<extrautils2:filter>);

# Filter Fluids
JEI.removeAndHide(<extrautils2:filterfluids>);

# Watering Can
recipes.remove(<extrautils2:wateringcan>);
recipes.addShaped(<extrautils2:wateringcan>, [
    [<ore:plateDoubleSteel>, null, null],
    [<ore:plateDoubleSteel>, <minecraft:bowl>, <ore:plateDoubleSteel>],
    [null, <ore:plateDoubleSteel>, null]
]);

# Upgrade Base
Resonator.remove(<extrautils2:ingredients:9>);

# Upgrade Mining
JEI.removeAndHide(<extrautils2:ingredients:8>);

# Upgrade Stack
JEI.removeAndHide(<extrautils2:ingredients:7>);

# Upgrade Speed
JEI.removeAndHide(<extrautils2:ingredients:6>);

# Upgrade Speed(Magical)
JEI.removeAndHide(<extrautils2:ingredients:15>);

# Upgrade Speed(Ultimate)
JEI.removeAndHide(<extrautils2:ingredients:15>);
JEI.removeAndHide(<extrautils2:ingredients:16>);

# Wood Sickle
<extrautils2:sickle_wood>.maxDamage = 12;

# Stone Sickle
<extrautils2:sickle_stone>.maxDamage = 48;

# Iron Sickle
<extrautils2:sickle_iron>.maxDamage = 256;
recipes.remove(<extrautils2:sickle_iron>);
recipes.addShaped(<extrautils2:sickle_iron>, [
    [null, <ore:plateIron>, <ore:plateIron>],
    [null, null, <ore:plateIron>],
    [<minecraft:stick>, <ore:plateIron>, <ore:plateIron>]
]);

# Gold Sickle
<extrautils2:sickle_gold>.maxDamage = 24;
recipes.remove(<extrautils2:sickle_gold>);
recipes.addShaped(<extrautils2:sickle_gold>, [
    [null, <ore:plateGold>, <ore:plateGold>],
    [null, null, <ore:plateGold>],
    [<minecraft:stick>, <ore:plateGold>, <ore:plateGold>]
]);

# Diamond Sickle
<extrautils2:sickle_diamond>.maxDamage = 768;
recipes.remove(<extrautils2:sickle_diamond>);
recipes.addShaped(<extrautils2:sickle_gold>, [
    [null, <ore:plateDiamond>, <ore:plateDiamond>],
    [null, null, <ore:plateDiamond>],
    [<minecraft:stick>, <ore:plateDiamond>, <ore:plateDiamond>]
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
    [<minecraft:feather>, <enderio:block_reinforced_obsidian>, <minecraft:feather>],
    [<enderio:block_reinforced_obsidian>, <extrautils2:angelring>, <enderio:block_reinforced_obsidian>],
    [<minecraft:feather>, <enderio:block_reinforced_obsidian>, <minecraft:feather>]
]);
