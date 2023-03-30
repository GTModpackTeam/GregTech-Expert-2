# Imports
import mods.jei.JEI;
import mods.zenutils.I18n;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;



########################################
# Items
########################################
# Tiny Pile of Ashes (Bookshelf Override)
arc_furnace.findRecipe(30, [<minecraft:bookshelf:0>], [<liquid:oxygen> * 21]).remove();
arc_furnace.recipeBuilder()
    .inputs([<ore:bookshelf>])
    .fluidInputs([<liquid:oxygen> * 21])
    .outputs([<metaitem:dustTinyAsh> * 16])
    .duration(1)
    .EUt(30)
    .buildAndRegister();

# Chad & Wood Pulp (Bookshelf Override)
macerator.findRecipe(2, [<minecraft:bookshelf:0>], null).remove();
macerator.recipeBuilder()
    .inputs([<ore:bookshelf>])
    .outputs([
        <metaitem:dustPaper> * 9,
        <metaitem:dustWood> * 6
    ])
    .duration(196)
    .EUt(2)
    .buildAndRegister();



########################################
# Blocks
########################################
# Enchanting Table (Override)
recipes.remove(<minecraft:enchanting_table>);
recipes.addShaped(<minecraft:enchanting_table>, [
    [<minecraft:diamond>, <minecraft:carpet:14>, <minecraft:diamond>],
    [<metaitem:plateObsidian>, <ore:bookshelf>, <metaitem:plateObsidian>],
    [<minecraft:diamond>, <metaitem:plateObsidian>, <minecraft:diamond>]
]);

# Crafting Station
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:plankWood> * 4,
        <ore:chestWood> * 2,
        <ore:slabWood>,
        <minecraft:crafting_table>
    ])
    .outputs([<metaitem:workbench>])
    .duration(100)
    .EUt(16)
    .buildAndRegister();
