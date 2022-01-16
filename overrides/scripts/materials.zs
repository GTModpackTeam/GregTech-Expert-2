# Imoprts
import mods.jei.JEI;
import crafttweaker.item.IItemStack;



########################################
# EnderIO
########################################
# Nugget
var enderio_nugget as IItemStack[] = [
    <enderio:item_alloy_nugget>,
    <enderio:item_alloy_nugget:1>,
    <enderio:item_alloy_nugget:2>,
    <enderio:item_alloy_nugget:3>,
    <enderio:item_alloy_nugget:4>,
    <enderio:item_alloy_nugget:5>,
    <enderio:item_alloy_nugget:6>,
    <enderio:item_alloy_nugget:7>,
    <enderio:item_alloy_nugget:8>,
    <enderio:item_alloy_nugget:9>,
    <enderio:item_alloy_endergy_nugget>,
    <enderio:item_alloy_endergy_nugget:1>,
    <enderio:item_alloy_endergy_nugget:2>,
    <enderio:item_alloy_endergy_nugget:3>,
    <enderio:item_alloy_endergy_nugget:4>,
    <enderio:item_alloy_endergy_nugget:5>,
    <enderio:item_alloy_endergy_nugget:6>
];
for nugget in enderio_nugget {
    JEI.removeAndHide(nugget);
}

# Ingot
var enderio_ingot as IItemStack[] = [
    <enderio:item_alloy_ingot>,
    <enderio:item_alloy_ingot:1>,
    <enderio:item_alloy_ingot:2>,
    <enderio:item_alloy_ingot:3>,
    <enderio:item_alloy_ingot:4>,
    <enderio:item_alloy_ingot:5>,
    <enderio:item_alloy_ingot:6>,
    <enderio:item_alloy_ingot:7>,
    <enderio:item_alloy_ingot:8>,
    <enderio:item_alloy_ingot:9>,
    <enderio:item_alloy_endergy_ingot>,
    <enderio:item_alloy_endergy_ingot:1>,
    <enderio:item_alloy_endergy_ingot:2>,
    <enderio:item_alloy_endergy_ingot:3>,
    <enderio:item_alloy_endergy_ingot:4>,
    <enderio:item_alloy_endergy_ingot:5>,
    <enderio:item_alloy_endergy_ingot:6>
];
for ingot in enderio_ingot {
    JEI.removeAndHide(ingot);
}

# Block
var enderio_block as IItemStack[] = [
    <enderio:block_alloy>,
    <enderio:block_alloy:1>,
    <enderio:block_alloy:2>,
    <enderio:block_alloy:3>,
    <enderio:block_alloy:4>,
    <enderio:block_alloy:5>,
    <enderio:block_alloy:6>,
    <enderio:block_alloy:7>,
    <enderio:block_alloy:8>,
    <enderio:block_alloy:9>,
    <enderio:block_alloy_endergy>,
    <enderio:block_alloy_endergy:1>,
    <enderio:block_alloy_endergy:2>,
    <enderio:block_alloy_endergy:3>,
    <enderio:block_alloy_endergy:4>,
    <enderio:block_alloy_endergy:5>,
    <enderio:block_alloy_endergy:6>
];
for block in enderio_block {
    JEI.removeAndHide(block);
}


# Set Recipe
## Nugget
for i, nugget in enderio_nugget {
    alloy_smelter.recipeBuilder().
        inputs([enderio_ingot[i]]).
        notConsumable([<gregtech:meta_item_1:19>]).
        outputs([nugget * 9]).
        duration(56).
        EUt(7).
        buildAndRegister();
}

## Ingot
for i, ingot in enderio_ingot {
    alloy_smelter.recipeBuilder().
        inputs([enderio_nugget[i] * 9]).
        notConsumable([<gregtech:meta_item_1:16>]).
        outputs([ingot]).
        duration(56).
        EUt(7).
        buildAndRegister();
}

## Block
for i, block in enderio_block {
    alloy_smelter.recipeBuilder().
        inputs([enderio_ingot[i] * 9]).
        notConsumable([<gregtech:meta_item_1:18>]).
        outputs([block]).
        duration(5).
        EUt(2).
        buildAndRegister();
    compressor.recipeBuilder().
        inputs([enderio_ingot[i] * 9]).
        outputs([block]).
        duration(300).
        EUt(2).
        buildAndRegister();
}



########################################
# ExtendedCrafting
########################################
# Nugget
var erafting_nugget as IItemStack[] = [
    <extendedcrafting:material:140>,
    <extendedcrafting:material:25>,
    <extendedcrafting:material:33>
];
for nugget in erafting_nugget {
    JEI.removeAndHide(nugget);
}

# Ingot
var erafting_ingot as IItemStack[] = [
    <minecraft:nether_star>,
    <extendedcrafting:material:24>,
    <extendedcrafting:material:32>
];
for ingot in erafting_ingot {
    JEI.removeAndHide(ingot);
}

# Block
var erafting_block as IItemStack[] = [
    <extendedcrafting:storage:2>,
    <extendedcrafting:storage:3>,
    <extendedcrafting:storage:4>
];
for block in enderio_block {
    JEI.removeAndHide(block);
}


# Set Recipe
## Nugget
for i, nugget in erafting_nugget {
    alloy_smelter.recipeBuilder().
        inputs([erafting_ingot[i]]).
        notConsumable([<gregtech:meta_item_1:19>]).
        outputs([nugget * 9]).
        duration(56).
        EUt(7).
        buildAndRegister();
}

## Ingot
for i, ingot in erafting_ingot {
    alloy_smelter.recipeBuilder().
        inputs([erafting_nugget[i] * 9]).
        notConsumable([<gregtech:meta_item_1:16>]).
        outputs([ingot]).
        duration(56).
        EUt(7).
        buildAndRegister();
}

## Block
for i, block in erafting_block {
    alloy_smelter.recipeBuilder().
        inputs([erafting_ingot[i] * 9]).
        notConsumable([<gregtech:meta_item_1:18>]).
        outputs([block]).
        duration(5).
        EUt(2).
        buildAndRegister();
    compressor.recipeBuilder().
        inputs([erafting_ingot[i] * 9]).
        outputs([block]).
        duration(300).
        EUt(2).
        buildAndRegister();
}
