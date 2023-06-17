# Imports
import crafttweaker.item.IItemStack;



########################################
# Blocks
########################################
# Bookshelfs
<ore:bookshelf>.add(<minecraft:bookshelf>);

## Oak
assembler.findRecipe(4, [<metaitem:plateWood> * 6, <minecraft:book:0> * 3], null).remove();
assembler.recipeBuilder()
    .inputs([
        <minecraft:planks:0> * 6,
        <minecraft:book> * 3
    ])
    .outputs([<chisel:bookshelf_oak>])
    .duration(100)
    .EUt(4)
    .buildAndRegister();

## Spruce
recipes.remove(<chisel:bookshelf_spruce>);
assembler.recipeBuilder()
    .inputs([
        <minecraft:planks:1> * 6,
        <minecraft:book> * 3
    ])
    .outputs([<chisel:bookshelf_spruce>])
    .duration(100)
    .EUt(4)
    .buildAndRegister();

## Birch
recipes.remove(<chisel:bookshelf_birch>);
assembler.recipeBuilder()
    .inputs([
        <minecraft:planks:2> * 6,
        <minecraft:book> * 3
    ])
    .outputs([<chisel:bookshelf_birch>])
    .duration(100)
    .EUt(4)
    .buildAndRegister();

## Jungle
recipes.remove(<chisel:bookshelf_jungle>);
assembler.recipeBuilder()
    .inputs([
        <minecraft:planks:3> * 6,
        <minecraft:book> * 3
    ])
    .outputs([<chisel:bookshelf_jungle>])
    .duration(100)
    .EUt(4)
    .buildAndRegister();

## Acacia
recipes.remove(<chisel:bookshelf_acacia>);
assembler.recipeBuilder()
    .inputs([
        <minecraft:planks:4> * 6,
        <minecraft:book> * 3
    ])
    .outputs([<chisel:bookshelf_acacia>])
    .duration(100)
    .EUt(4)
    .buildAndRegister();

## Dark Oak
recipes.remove(<chisel:bookshelf_darkoak>);
assembler.recipeBuilder()
    .inputs([
        <minecraft:planks:5> * 6,
        <minecraft:book> * 3
    ])
    .outputs([<chisel:bookshelf_darkoak>])
    .duration(100)
    .EUt(4)
    .buildAndRegister();
