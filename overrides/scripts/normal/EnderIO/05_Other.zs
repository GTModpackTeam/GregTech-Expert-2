# Imports
import mods.jei.JEI;



# Zombie Vial
vial_extractor.recipeBuilder()
    .inputs([
        <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:zombie"}) |
        <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:husk"}) |
        <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:zombie_villager"})
    ])
    .outputs([
        <minecraft:skull:2> * 10,
        <minecraft:rotten_flesh> * 10,
        <enderio:item_soul_vial>
    ])
    .chancedOutput(<minecraft:iron_ingot>, 100, 0)
    .fluidOutputs([<liquid:xpjuice> * 1000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

# Pigman Vial
vial_extractor.recipeBuilder()
    .inputs([<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:zombie_pigman"})])
    .outputs([
        <minecraft:rotten_flesh> * 10,
        <enderio:item_soul_vial>
    ])
    .chancedOutput(<minecraft:gold_ingot>, 250, 250)
    .fluidOutputs([<liquid:xpjuice> * 1000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

# Skeleton Vial
vial_extractor.recipeBuilder()
    .inputs([<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:skeleton"})])
    .outputs([
        <minecraft:skull> * 10,
        <minecraft:bone> * 10,
        <enderio:item_soul_vial>
    ])
    .fluidOutputs([<liquid:xpjuice> * 1000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

# Wither Skeleton Vial
vial_extractor.recipeBuilder()
    .inputs([<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:wither_skeleton"})])
    .outputs([
        <minecraft:skull:1> * 5,
        <minecraft:bone> * 5,
        <enderio:item_soul_vial>
    ])
    .chancedOutput(<minecraft:coal>, 250, 250)
    .fluidOutputs([<liquid:xpjuice> * 1000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

# Enderman Vial
vial_extractor.recipeBuilder()
    .inputs([<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:enderman"})])
    .outputs([
        <enderio:block_enderman_skull> * 10,
        <minecraft:ender_pearl> * 10,
        <enderio:item_soul_vial>
    ])
    .fluidOutputs([<liquid:xpjuice> * 1000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

# Creeper Vial
vial_extractor.recipeBuilder()
    .inputs([<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:creeper"})])
    .outputs([
        <minecraft:skull:4> * 10,
        <minecraft:gunpowder> * 10,
        <enderio:item_soul_vial>
    ])
    .fluidOutputs([<liquid:xpjuice> * 1000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

# Slime Vial
vial_extractor.recipeBuilder()
    .inputs([
        <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:slime"}) |
        <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:magma_cube"})
    ])
    .outputs([
        <minecraft:slime_ball> * 10,
        <enderio:item_soul_vial>
    ])
    .fluidOutputs([<liquid:xpjuice> * 2000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

# Blaze Vial
vial_extractor.recipeBuilder()
    .inputs([<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:blaze"})])
    .outputs([
        <minecraft:blaze_rod> * 10,
        <enderio:item_soul_vial>
    ])
    .fluidOutputs([<liquid:xpjuice> * 1000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

# Spider Vial
vial_extractor.recipeBuilder()
    .inputs([<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:spider"})])
    .outputs([
        <minecraft:spider_eye> * 10,
        <minecraft:string> * 10,
        <enderio:item_soul_vial>
    ])
    .fluidOutputs([<liquid:xpjuice> * 1000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();
