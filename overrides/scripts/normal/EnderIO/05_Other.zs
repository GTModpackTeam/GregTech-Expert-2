# Imports
import mods.jei.JEI;



########################################
# Liquid
########################################
# Nutrient Distillation
mixer.recipeBuilder()
    .circuit(2)
    .inputs([
        <minecraft:porkchop> * 4 |
        <minecraft:beef> * 4 |
        <minecraft:chicken> * 4 |
        <minecraft:rabbit> * 4 |
        <minecraft:mutton> * 4 |
        <minecraft:rotten_flesh> * 8,
        <minecraft:fermented_spider_eye> * 2
    ])
    .fluidInputs([<liquid:water> * 1000])
    .fluidOutputs([<liquid:nutrient_distillation> * 1000])
    .duration(400)
    .EUt(480)
    .buildAndRegister();

# Dew of Void
mixer.recipeBuilder()
    .circuit(1)
    .inputs([<ore:itemVibrantPowder> * 2])
    .inputs([<ore:dustEndSteel> * 2])
    .fluidInputs([<liquid:nutrient_distillation> * 1000])
    .fluidOutputs([<liquid:ender_distillation> * 1000])
    .duration(400)
    .EUt(480)
    .buildAndRegister();
mixer.recipeBuilder()
    .circuit(1)
    .inputs([<ore:itemVibrantPowder> * 2])
    .fluidInputs([<liquid:end_steel> * 288])
    .fluidInputs([<liquid:nutrient_distillation> * 1000])
    .fluidOutputs([<liquid:ender_distillation> * 1000])
    .duration(400)
    .EUt(480)
    .buildAndRegister();

# Vapor of levity
mixer.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:itemPulsatingPowder> * 2,
        <ore:itemPrecientPowder> * 2
    ])
    .fluidInputs([<liquid:ender_distillation> * 1000])
    .fluidOutputs([<liquid:vapor_of_levity> * 1000])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Hootch
mixer.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:wheat_seeds> * 4 |
        <minecraft:dye:3> * 4 |
        <minecraft:beetroot_seeds> * 4 |
        <minecraft:pumpkin_seeds> * 2 |
        <minecraft:melon_seeds> * 2 |
        <minecraft:poisonous_potato>,
        <minecraft:sugar>
    ])
    .fluidInputs([<liquid:water> * 2000])
    .fluidOutputs([<liquid:hootch> * 500])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Fire Water
mixer.recipeBuilder()
    .circuit(1)
    .inputs([<minecraft:redstone> * 2])
    .fluidInputs([<liquid:blaze> * 1008])
    .fluidOutputs([<liquid:fire_water> * 1000])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Sunshine
mixer.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:glowstone_dust> * 2,
        <minecraft:double_plant>
    ])
    .fluidInputs([<liquid:fire_water> * 250])
    .fluidOutputs([<liquid:liquid_sunshine> * 250])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Cloud Seed
mixer.recipeBuilder()
    .circuit(1)
    .inputs([<metaitem:dustSilver> * 2])
    .fluidInputs([<liquid:water> * 3500])
    .fluidOutputs([<liquid:cloud_seed> * 3500])
    .duration(300)
    .EUt(480)
    .buildAndRegister();

# Concentrated Cloud
mixer.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:dustElectrum> * 2,
        <minecraft:snow>
    ])
    .fluidInputs([<liquid:cloud_seed> * 3500])
    .fluidOutputs([<liquid:cloud_seed_concentrated> * 1500])
    .duration(300)
    .EUt(480)
    .buildAndRegister();

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
