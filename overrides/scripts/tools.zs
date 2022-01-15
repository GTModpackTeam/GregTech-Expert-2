# Imoprts
import crafttweaker.item.IItemStack;
import mods.jei.JEI;



########################################
# Minecraft
########################################
var minecraft as IItemStack[] = [
    <minecraft:wooden_sword>,
    <minecraft:wooden_shovel>,
    <minecraft:wooden_pickaxe>,
    <minecraft:wooden_axe>,
    <minecraft:wooden_hoe>,
    <minecraft:stone_sword>,
    <minecraft:stone_shovel>,
    <minecraft:stone_pickaxe>,
    <minecraft:stone_axe>,
    <minecraft:stone_hoe>,
    <minecraft:iron_sword>,
    <minecraft:iron_shovel>,
    <minecraft:iron_pickaxe>,
    <minecraft:iron_axe>,
    <minecraft:iron_hoe>,
    <minecraft:golden_sword>,
    <minecraft:golden_shovel>,
    <minecraft:golden_pickaxe>,
    <minecraft:golden_axe>,
    <minecraft:golden_hoe>,
    <minecraft:diamond_sword>,
    <minecraft:diamond_shovel>,
    <minecraft:diamond_pickaxe>,
    <minecraft:diamond_axe>,
    <minecraft:diamond_hoe>
];
for tool in minecraft {
    tool.maxDamage = 1;
}



########################################
# AppliedenErgistics
########################################
var ae2 as IItemStack[] = [
    <appliedenergistics2:certus_quartz_sword>,
    <appliedenergistics2:certus_quartz_spade>,
    <appliedenergistics2:certus_quartz_pickaxe>,
    <appliedenergistics2:certus_quartz_axe>,
    <appliedenergistics2:certus_quartz_hoe>,
    <appliedenergistics2:nether_quartz_sword>,
    <appliedenergistics2:nether_quartz_spade>,
    <appliedenergistics2:nether_quartz_pickaxe>,
    <appliedenergistics2:nether_quartz_axe>,
    <appliedenergistics2:nether_quartz_hoe>,
];
for tool in ae2 {
    JEI.removeAndHide(tool);
}
