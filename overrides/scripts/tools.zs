# Imports
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.zenutils.I18n;



########################################
# Minecraft
########################################
var minecraft as IItemStack[] = [
    <minecraft:wooden_sword>,
    <minecraft:wooden_shovel>,
    <minecraft:wooden_pickaxe>,
    <minecraft:stone_sword>,
    <minecraft:stone_shovel>,
    <minecraft:stone_pickaxe>,
    <minecraft:iron_sword>,
    <minecraft:iron_shovel>,
    <minecraft:iron_pickaxe>,
    <minecraft:golden_sword>,
    <minecraft:golden_shovel>,
    <minecraft:golden_pickaxe>,
    <minecraft:diamond_sword>,
    <minecraft:diamond_shovel>,
    <minecraft:diamond_pickaxe>
];
for tool in minecraft {
    tool.maxDamage = 1;
    tool.addTooltip(format.red(I18n.format("modpack.minecraft.tools.tooltip.1")));
    JEI.addDescription(tool, I18n.format("modpack.minecraft.tools.tooltip.1"));
}



########################################
# AppliedenErgistics
########################################
var ae2 as IItemStack[] = [
    <appliedenergistics2:certus_quartz_sword>,
    <appliedenergistics2:certus_quartz_spade>,
    <appliedenergistics2:certus_quartz_pickaxe>,
    <appliedenergistics2:nether_quartz_sword>,
    <appliedenergistics2:nether_quartz_spade>,
    <appliedenergistics2:nether_quartz_pickaxe>
];
for tool in ae2 {
    JEI.removeAndHide(tool);
}
