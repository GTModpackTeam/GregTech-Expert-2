#packmode normal
# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Golden Apple
recipes.removeByRecipeName("bhc:god_apple");

# Relic Apple
recipes.removeByRecipeName("bhc:relic_apple");
chemical_bath.recipeBuilder()
    .inputs([<metaitem:component.structural_mesh.apple>])
    .fluidInputs([<liquid:acidic_naquadria_solution> * 6000])
    .outputs([<bhc:relic_apple>])
    .duration(6000)
    .EUt(30720)
    .buildAndRegister();

# Canister
recipes.remove(<bhc:canister>);
recipes.addShaped(<bhc:canister>, [
    [<ore:gtce.tool.soft.hammers>, <ore:gtce.tool.files>, null],
    [<metaitem:plateTinAlloy>, <metaitem:plateTinAlloy>, null],
    [<metaitem:plateTinAlloy>, <metaitem:plateTinAlloy>, null]
]);
bender.recipeBuilder()
    .circuit(4)
    .inputs([<metaitem:plateTinAlloy> * 4])
    .outputs([<bhc:canister>])
    .duration(180)
    .EUt(12)
    .buildAndRegister();

# Red Heart Canister
recipes.remove(<bhc:red_heart_canister>);
recipes.addShapeless(<bhc:red_heart_canister>, [
    <bhc:red_heart>, <bhc:wither_bone>,
    <minecraft:apple>, <bhc:canister>
]);

# Yellow Heart Canister
recipes.remove(<bhc:yellow_heart_canister>);
recipes.addShapeless(<bhc:yellow_heart_canister>, [
    <bhc:red_heart_canister>, <metaitem:component.structural_mesh.apple>, <bhc:yellow_heart>
]);

# Green Heart Canister
recipes.remove(<bhc:green_heart_canister>);
recipes.addShapeless(<bhc:green_heart_canister>, [
    <bhc:yellow_heart_canister>, <bhc:relic_apple>, <bhc:green_heart>
]);

# Blue Heart Canister
recipes.remove(<bhc:blue_heart_canister>);
recipes.addShapeless(<bhc:blue_heart_canister>, [
    <bhc:green_heart_canister>, <minecraft:golden_apple>, <bhc:blue_heart>
]);
