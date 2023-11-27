# Imports
import mods.jei.JEI;
import mods.gtexpert.I18n;



########################################
# Items
########################################
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
