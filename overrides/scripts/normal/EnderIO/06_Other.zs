#packmode normal
# Imports
import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
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
mixer.recipeBuilder()
    .inputs([
        <minecraft:porkchop> * 4 |
        <minecraft:beef> * 4 |
        <minecraft:chicken> * 4 |
        <minecraft:rabbit> * 4 |
        <minecraft:mutton> * 4 |
        <minecraft:rotten_flesh> * 8,
        <minecraft:fermented_spider_eye> * 2
    ])
    .fluidInputs([<liquid:water> * 4000])
    .fluidOutputs([<liquid:nutrient_distillation> * 1000])
    .duration(400)
    .EUt(480)
    .buildAndRegister();

# Dew of Void
mixer.recipeBuilder()
    .inputs([
        <ore:itemVibrantPowder> * 2,
        <ore:itemEnderCrystalPowder> * 2
    ])
    .fluidInputs([<liquid:nutrient_distillation> * 4000])
    .fluidOutputs([<liquid:ender_distillation> * 1000])
    .duration(400)
    .EUt(480)
    .buildAndRegister();

# Vapor of levity
mixer.recipeBuilder()
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
    .inputs([
        <minecraft:wheat_seeds> * 4 |
        <minecraft:dye:3> * 4 |
        <minecraft:beetroot_seeds> * 4 |
        <minecraft:pumpkin_seeds> * 2 |
        <minecraft:melon_seeds> * 2 |
        <minecraft:poisonous_potato>,
        <ore:dustSugar>
    ])
    .fluidInputs([<liquid:water> * 2000])
    .fluidOutputs([<liquid:hootch> * 500])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Fire Water
mixer.recipeBuilder()
    .inputs([<minecraft:redstone> * 2])
    .fluidInputs([<liquid:blaze> * 1000])
    .fluidOutputs([<liquid:fire_water> * 1000])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Sunshine
mixer.recipeBuilder()
    .inputs([
        <ore:dustGlowstone> * 2,
        <minecraft:double_plant>
    ])
    .fluidInputs([<liquid:fire_water> * 250])
    .fluidOutputs([<liquid:liquid_sunshine> * 250])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Cloud Seed
mixer.recipeBuilder()
    .inputs([<ore:dustSilver> * 2])
    .fluidInputs([<liquid:water> * 3550])
    .fluidOutputs([<liquid:cloud_seed> * 3550])
    .duration(300)
    .EUt(480)
    .buildAndRegister();

# Concentrated Cloud
mixer.recipeBuilder()
    .inputs([
        <ore:dustElectrum> * 2,
        <minecraft:snow>
    ])
    .fluidInputs([<liquid:cloud_seed> * 3500])
    .fluidOutputs([<liquid:cloud_seed_concentrated> * 1750])
    .duration(300)
    .EUt(480)
    .buildAndRegister();

# Enchantments
val baseXP as int = 250;
## Protection Lv1 <---> Lv4
for i in 1 to 5 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:ingotDarkSteel> * (i * 16),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 5))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 0}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Fire Protection Lv1 <---> Lv4
for i in 1 to 5 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:dustBlaze> * (i * 16),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 10))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 1}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Feather Falling Lv1 <---> Lv4
for i in 1 to 5 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:feather> * (i * 1),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 6))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 2}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Blast Protection Lv1 <---> Lv4
for i in 1 to 5 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:dustGunpowder> * (i * 16),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 6))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 3}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Projectile Protection Lv1 <---> Lv4
for i in 1 to 5 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:arrow> * (i * 16),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 4))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 4}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Respiration Lv1 <---> Lv3
for i in 1 to 4 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:glass_bottle> * (i * 16),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 10))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 5}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Aqua Affinity
for i in 1 to 1 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:waterlily> * (i * 1),
            <ore:gemLapis> * (i * 15)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 3))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 6}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Thorns Lv1 <---> Lv3
for i in 1 to 4 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:double_plant:4> * (i * 1),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 12))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 7}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Depth Strider Lv1 <---> Lv3
for i in 1 to 4 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:prismarine> * (i * 1),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 10))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 8}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Frost Walker Lv1 <---> Lv2
for i in 1 to 3 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:ice> * (i * 16),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 10))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 9}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## XP Boost Lv1 <---> Lv3
for i in 1 to 4 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:ingotGold> * (i * 16),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 10))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 11}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Sharpness Lv1 <---> Lv5
for i in 1 to 6 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:quartz> * (i * 12),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 5))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 16}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Smite Lv1 <---> Lv5
for i in 1 to 6 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:rotten_flesh> * (i * 12),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 6))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 17}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Bane of Arthropods Lv1 <---> Lv5
for i in 1 to 6 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:spider_eye> * (i * 12),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 6))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 18}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Knockback Lv1 <---> Lv2
for i in 1 to 3 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:craftingPiston> * (i * 1),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 10))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 19}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Fire Aspect Lv1 <---> Lv2
for i in 1 to 3 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:stickBlaze> * (i * 8),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 12))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 20}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Looting Lv1 <---> Lv3
for i in 1 to 4 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:itemSkull> * (i * 1),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 13))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 21}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Sweeping Edge Lv1 <---> Lv3
for i in 1 to 4 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:ingotIron> * (i * 8),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 6))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 22}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Efficiency Lv1 <---> Lv5
for i in 1 to 6 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:dustRedstone> * (i * 12),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 5))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 32}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Silk Touch
for i in 1 to 1 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:slime_ball> * (i * 1),
            <ore:gemLapis> * (i * 15)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 13))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 33}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Unbreaking Lv1 <---> Lv3
for i in 1 to 4 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:obsidian> * (i * 1),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 6))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 34}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Fortune Lv1 <---> Lv3
for i in 1 to 4 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:gemEmerald> * (i * 1),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 13))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 35}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Power Lv1 <---> Lv5
for i in 1 to 6 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:gemFlint> * (i * 12),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 5))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 48}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Punch Lv1 <---> Lv2
for i in 1 to 3 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:string> * (i * 1),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 13))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 49}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Flame
for i in 1 to 1 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:netherrack> * (i * 1),
            <ore:gemLapis> * (i * 15)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 17))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 50}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Flame
for i in 1 to 1 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:netherrack> * (i * 1),
            <ore:gemLapis> * (i * 15)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 17))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 50}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Infinity
for i in 1 to 1 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:dustBedrock> * (i * 4),
            <ore:gemLapis> * (i * 15)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 17))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 51}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Luck of The Sea Lv1 <---> Lv3
for i in 1 to 4 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <ore:nuggetGold> * (i * 2),
            <ore:gemLapis> * (i * 4)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 13))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 61}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Lure Lv1 <---> Lv3
for i in 1 to 4 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <minecraft:fish> * (i * 1),
            <ore:gemLapis> * (i * 3)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 13))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 62}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}

## Mending
for i in 1 to 1 {
    assembler.recipeBuilder()
        .circuit(i)
        .inputs([
            <minecraft:writable_book>,
            <enderio:item_xp_transfer> * (i * 1),
            <ore:gemLapis> * (i * 15)
        ])
        .fluidInputs([<liquid:xpjuice> * (i * (baseXP * 21))])
        .outputs([<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 70}]})])
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}
