# Imoprts
import mods.jei.JEI;
import mods.enderio.AlloySmelter; // 1
import mods.enderio.CombustionGen; // no
import mods.enderio.Enchanter; // no
import mods.enderio.SagMill; // 2
import mods.enderio.SliceNSplice; // 3
import mods.enderio.SoulBinder; // 4
import mods.enderio.Vat; // 5
import mods.enderio.Tank; // no



########################################
# Liquids
########################################
# Nutrient Distillation
mixer.recipeBuilder().
    inputs([
        <minecraft:porkchop> * 4 |
        <minecraft:beef> * 4 |
        <minecraft:chicken> * 4 |
        <minecraft:rabbit> * 4 |
        <minecraft:mutton> * 4 |
        <minecraft:rotten_flesh> * 8,
        <minecraft:fermented_spider_eye> * 2
    ]).
    fluidInputs([<liquid:water> * 4000]).
    fluidOutputs([<liquid:nutrient_distillation> * 1000]).
    duration(400).
    EUt(480).
    buildAndRegister();

# Dew of Void
mixer.recipeBuilder().
    inputs([
        <ore:itemVibrantPowder> * 2,
        <ore:itemEnderCrystalPowder> * 2
    ]).
    fluidInputs([<liquid:nutrient_distillation> * 4000]).
    fluidOutputs([<liquid:ender_distillation> * 1000]).
    duration(400).
    EUt(480).
    buildAndRegister();

# Dew of Void
mixer.recipeBuilder().
    inputs([
        <ore:itemPulsatingPowder> * 2,
        <ore:itemPrecientPowder> * 2
    ]).
    fluidInputs([<liquid:ender_distillation> * 1000]).
    fluidOutputs([<liquid:vapor_of_levity> * 1000]).
    duration(100).
    EUt(480).
    buildAndRegister();

# Hootch
mixer.recipeBuilder().
    inputs([
        <minecraft:wheat_seeds> * 4 |
        <minecraft:dye:3> * 4 |
        <minecraft:beetroot_seeds> * 4 |
        <minecraft:pumpkin_seeds> * 2 |
        <minecraft:melon_seeds> * 2 |
        <minecraft:poisonous_potato>,
        <ore:dustSugar>
    ]).
    fluidInputs([<liquid:water> * 2000]).
    fluidOutputs([<liquid:hootch> * 500]).
    duration(200).
    EUt(480).
    buildAndRegister();

# Fire Water
mixer.recipeBuilder().
    inputs([<minecraft:redstone> * 2]).
    fluidInputs([<liquid:blaze> * 1000]).
    fluidOutputs([<liquid:fire_water> * 1000]).
    duration(100).
    EUt(480).
    buildAndRegister();

# Sunshine
mixer.recipeBuilder().
    inputs([
        <ore:dustGlowstone> * 2,
        <minecraft:double_plant>
    ]).
    fluidInputs([<liquid:fire_water> * 250]).
    fluidOutputs([<liquid:liquid_sunshine> * 250]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Cloud Seed
mixer.recipeBuilder().
    inputs([<ore:dustSilver> * 2]).
    fluidInputs([<liquid:water> * 3550]).
    fluidOutputs([<liquid:cloud_seed> * 3550]).
    duration(300).
    EUt(480).
    buildAndRegister();

# Concentrated Cloud
mixer.recipeBuilder().
    inputs([
        <ore:dustElectrum> * 2,
        <minecraft:snow>
    ]).
    fluidInputs([<liquid:cloud_seed> * 3500]).
    fluidOutputs([<liquid:cloud_seed_concentrated> * 1750]).
    duration(300).
    EUt(480).
    buildAndRegister();
