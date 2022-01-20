# Imoprts
import mods.jei.JEI;
import crafttweaker.item.IItemStack;

JEI.hideCategory("AlloySmelter");
JEI.hideCategory("EIOTank");
JEI.hideCategory("Enchanter");
JEI.hideCategory("LavaGenerator");
JEI.hideCategory("Painter");
JEI.hideCategory("SolarPanel");
JEI.hideCategory("EIOWC");

# JEI Hide
JEI.removeAndHide(<enderio:item_power_conduit:*>);
JEI.removeAndHide(<enderio:item_endergy_conduit:*>);



########################################
# Materials
########################################
# Ball
var balls as IItemStack[] = [
    <enderio:item_alloy_ball>,
    <enderio:item_alloy_ball:1>,
    <enderio:item_alloy_ball:2>,
    <enderio:item_alloy_ball:3>,
    <enderio:item_alloy_ball:4>,
    <enderio:item_alloy_ball:5>,
    <enderio:item_alloy_ball:6>,
    <enderio:item_alloy_ball:7>,
    <enderio:item_alloy_ball:8>,
    <enderio:item_alloy_ball:9>,
    <enderio:item_alloy_endergy_ball>,
    <enderio:item_alloy_endergy_ball:1>,
    <enderio:item_alloy_endergy_ball:2>,
    <enderio:item_alloy_endergy_ball:3>,
    <enderio:item_alloy_endergy_ball:4>,
    <enderio:item_alloy_endergy_ball:5>,
    <enderio:item_alloy_endergy_ball:6>
];

# Nugget
var nuggets as IItemStack[] = [
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

# Ingot
var ingots as IItemStack[] = [
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

# Block
var blocks as IItemStack[] = [
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


# Set Recipe
## Nugget
for i, nugget in nuggets {
    alloy_smelter.recipeBuilder().
        inputs([ingots[i]]).
        notConsumable([<gregtech:meta_item_1:19>]).
        outputs([nugget * 9]).
        duration(56).
        EUt(7).
        buildAndRegister();
}


## Ingot
for i, ingot in ingots {
    alloy_smelter.recipeBuilder().
        inputs([nuggets[i] * 9]).
        notConsumable([<gregtech:meta_item_1:16>]).
        outputs([ingot]).
        duration(56).
        EUt(7).
        buildAndRegister();
}
for i, block in blocks {
    alloy_smelter.recipeBuilder().
        inputs([block]).
        notConsumable([<gregtech:meta_item_1:16>]).
        outputs([ingots[i] * 9]).
        duration(56).
        EUt(7).
        buildAndRegister();
}

// ## Ball
// for i, ingot in ingots {
//     recipes.addShaped(balls[i] * 8, [
//         [null, ingot, null],
//         [ingot, ingot, ingot],
//         [null, ingot, null]
//     ]);
// }


## Block
for i, block in blocks {
    alloy_smelter.recipeBuilder().
        inputs([ingots[i] * 9]).
        notConsumable([<gregtech:meta_item_1:18>]).
        outputs([block]).
        duration(5).
        EUt(7).
        buildAndRegister();
    compressor.recipeBuilder().
        inputs([ingots[i] * 9]).
        outputs([block]).
        duration(300).
        EUt(7).
        buildAndRegister();
}
