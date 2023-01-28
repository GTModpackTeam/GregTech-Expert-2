# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Tool Belt
recipes.remove(<toolbelt:belt>);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <toolbelt:pouch> * 2,
        <minecraft:string> * 2,
        <minecraft:leather> * 5
    ])
    .fluidInputs([<liquid:glue> * 50])
    .outputs([<toolbelt:belt>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Belt Pouch
recipes.remove(<toolbelt:pouch>);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:screwIronMagnetic>,
        <metaitem:ringIron>,
        <minecraft:string> * 4,
        <minecraft:leather> * 3
    ])
    .fluidInputs([<liquid:glue> * 100])
    .outputs([<toolbelt:pouch>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();
