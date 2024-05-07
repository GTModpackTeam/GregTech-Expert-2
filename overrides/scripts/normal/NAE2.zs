# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# ME Storage Component
JEI.removeAndHide(<nae2:material:1>);
JEI.removeAndHide(<nae2:material:2>);
JEI.removeAndHide(<nae2:material:3>);
JEI.removeAndHide(<nae2:material:4>);
JEI.removeAndHide(<nae2:material:5>);
JEI.removeAndHide(<nae2:material:6>);
JEI.removeAndHide(<nae2:material:7>);
JEI.removeAndHide(<nae2:material:8>);

# ME Storage Cell
JEI.removeAndHide(<nae2:storage_cell_256k>);
JEI.removeAndHide(<nae2:storage_cell_1024k>);
JEI.removeAndHide(<nae2:storage_cell_4096k>);
JEI.removeAndHide(<nae2:storage_cell_16384k>);
JEI.removeAndHide(<nae2:storage_cell_fluid_256k>);
JEI.removeAndHide(<nae2:storage_cell_fluid_1024k>);
JEI.removeAndHide(<nae2:storage_cell_fluid_4096k>);
JEI.removeAndHide(<nae2:storage_cell_fluid_16384k>);

# ME Beam Former
recipes.remove(<nae2:part>);
recipes.addShaped(<nae2:part>, [
    [null, <appliedenergistics2:material:41>, null],
    [<appliedenergistics2:quartz_glass>, <appliedenergistics2:material:24>, <appliedenergistics2:quartz_glass>],
    [null, <ore:craftGlassCable>, null]
]);

# ME Void Storage Component
recipes.remove(<nae2:material>);
recipes.addShaped(<nae2:material>, [
    [null, <appliedenergistics2:material:47>, null],
    [<appliedenergistics2:material:44>, <appliedenergistics2:material:32>, <appliedenergistics2:material:44>],
    [null, <appliedenergistics2:material:47>, null]
]);
recipes.addShaped(<nae2:material>, [
    [null, <appliedenergistics2:material:44>, null],
    [<appliedenergistics2:material:47>, <appliedenergistics2:material:32>, <appliedenergistics2:material:47>],
    [null, <appliedenergistics2:material:44>, null]
]);

# ME Void Storage Cell
recipes.remove(<nae2:storage_cell_void>);
packer.recipeBuilder()
    .inputs([
        <nae2:material>,
        <appliedenergistics2:material:39>
    ])
    .outputs([<nae2:storage_cell_void>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<nae2:storage_cell_void>])
    .outputs([
        <nae2:material>,
        <appliedenergistics2:material:39>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# ME Void Fluid Storage Cell
recipes.remove(<nae2:fluid_storage_cell_void>);
packer.recipeBuilder()
    .inputs([
        <nae2:material>,
        <aeadditions:storage.casing:1>
    ])
    .outputs([<nae2:fluid_storage_cell_void>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<nae2:fluid_storage_cell_void>])
    .outputs([
        <nae2:material>,
        <aeadditions:storage.casing:1>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();



########################################
# Blocks
########################################
# Crafting Storage
JEI.removeAndHide(<nae2:storage_crafting_256k>);
JEI.removeAndHide(<nae2:storage_crafting_1024k>);
JEI.removeAndHide(<nae2:storage_crafting_4096k>);
JEI.removeAndHide(<nae2:storage_crafting_16384k>);

# ME Storage Exposer
recipes.remove(<nae2:exposer>);
recipes.addShaped(<nae2:exposer>, [
    [<metaitem:plateTitanium>, <appliedenergistics2:part:463>, <metaitem:plateTitanium>],
    [<appliedenergistics2:material:43>, <appliedenergistics2:material:47>, <appliedenergistics2:material:44>],
    [<metaitem:plateTitanium>, <appliedenergistics2:part:462>, <metaitem:plateTitanium>]
]);
recipes.addShaped(<nae2:exposer>, [
    [<metaitem:plateTitanium>, <appliedenergistics2:part:220>, <metaitem:plateTitanium>],
    [<appliedenergistics2:material:43>, <appliedenergistics2:material:47>, <appliedenergistics2:material:44>],
    [<metaitem:plateTitanium>, <appliedenergistics2:part:221>, <metaitem:plateTitanium>]
]);
