# Imports
import mods.jei.JEI;



########################################
# Blocks
########################################
# 256k Crafting Storage
recipes.removeByRecipeName("extracpus:crafting_storage_256k");
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <aeadditions:storage.component:0>
    ])
    .outputs([<extracpus:crafting_storage_256k>])
    .duration(10).EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracpus:crafting_storage_256k>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <aeadditions:storage.component:0>
    ])
    .duration(10).EUt(7)
    .buildAndRegister();

# 1024k Crafting Storage
recipes.removeByRecipeName("extracpus:crafting_storage_1024k");
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <aeadditions:storage.component:1>
    ])
    .outputs([<extracpus:crafting_storage_1024k>])
    .duration(10).EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracpus:crafting_storage_1024k>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <aeadditions:storage.component:1>
    ])
    .duration(10).EUt(7)
    .buildAndRegister();

# 4096k Crafting Storage
recipes.removeByRecipeName("extracpus:crafting_storage_4096k");
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <aeadditions:storage.component:2>
    ])
    .outputs([<extracpus:crafting_storage_4096k>])
    .duration(10).EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracpus:crafting_storage_4096k>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <aeadditions:storage.component:2>
    ])
    .duration(10).EUt(7)
    .buildAndRegister();

# 16384k Crafting Storage
recipes.removeByRecipeName("extracpus:crafting_storage_16384k");
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <aeadditions:storage.component:3>
    ])
    .outputs([<extracpus:crafting_storage_16384k>])
    .duration(10).EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracpus:crafting_storage_16384k>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <aeadditions:storage.component:3>
    ])
    .duration(10).EUt(7)
    .buildAndRegister();
