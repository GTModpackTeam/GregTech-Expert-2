# Imports



########################################
# Items
########################################
# Package Recipe Holder
recipes.remove(<packagedauto:recipe_holder>);
recipes.addShaped(<packagedauto:recipe_holder> * 3, [
    [<appliedenergistics2:quartz_glass>, <appliedenergistics2:material:52>, <appliedenergistics2:quartz_glass>],
    [<appliedenergistics2:material:52>, <ore:glowstone>, <appliedenergistics2:material:52>],
    [<metaitem:plateTitanium>, <packagedauto:me_package_component>, <metaitem:plateTitanium>]
]);

# Package Component
recipes.remove(<packagedauto:package_component>);
recipes.addShaped(<packagedauto:package_component>, [
    [<metaitem:plateVibrantAlloy>, <metaitem:plateTitanium>, <metaitem:plateVibrantAlloy>],
    [<metaitem:plateTitanium>, <minecraft:ender_eye>, <metaitem:plateTitanium>],
    [<metaitem:plateVibrantAlloy>, <metaitem:plateTitanium>, <metaitem:plateVibrantAlloy>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:plateVibrantAlloy> * 2,
        <metaitem:plateTitanium> * 2,
        <minecraft:ender_eye>
    ])
    .outputs([<packagedauto:package_component>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Packaging Component
recipes.remove(<packagedauto:me_package_component>);
recipes.addShaped(<packagedauto:me_package_component>, [
    [<metaitem:plateTitanium>, <appliedenergistics2:quartz_glass>, <metaitem:plateTitanium>],
    [<appliedenergistics2:material:44>, <packagedauto:package_component>, <appliedenergistics2:material:43>],
    [<metaitem:plateTitanium>, <appliedenergistics2:quartz_glass>, <metaitem:plateTitanium>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:plateTitanium> * 2,
        <appliedenergistics2:material:44>,
        <appliedenergistics2:material:43>,
        <appliedenergistics2:quartz_glass>,
        <packagedauto:package_component>
    ])
    .outputs([<packagedauto:me_package_component>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();



########################################
# Blocks
########################################
# Packager
recipes.remove(<packagedauto:packager>);
recipes.addShapeless(<packagedauto:packager>, [<packagedauto:unpackager>]);
recipes.addShaped(<packagedauto:packager>, [
    [<metaitem:plateTitanium>, <packagedauto:me_package_component>, <metaitem:plateTitanium>],
    [<ore:circuitHv>, <metaitem:packer.hv>, <ore:circuitHv>],
    [<metaitem:plateTitanium>, <ore:ae2.interface.item>, <metaitem:plateTitanium>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:plateTitanium> * 2,
        <ore:ae2.interface.item>,
        <metaitem:packer.hv>,
        <ore:circuitHv>,
        <packagedauto:me_package_component>
    ])
    .outputs([<packagedauto:packager>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Unpackager
recipes.remove(<packagedauto:unpackager>);
recipes.addShapeless(<packagedauto:unpackager>, [<packagedauto:packager>]);

# Encoder
recipes.remove(<packagedauto:encoder>);
recipes.addShaped(<packagedauto:encoder>, [
    [<metaitem:plateTitanium>, <packagedauto:me_package_component>, <metaitem:plateTitanium>],
    [<packagedauto:recipe_holder>, <appliedenergistics2:part:341>, <packagedauto:recipe_holder>],
    [<metaitem:plateTitanium>, <ore:circuitHv>, <metaitem:plateTitanium>]
]);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:plateTitanium> * 2,
        <ore:circuitHv>,
        <appliedenergistics2:part:341>,
        <packagedauto:recipe_holder>,
        <packagedauto:me_package_component>
    ])
    .outputs([<packagedauto:encoder>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Packager Extension
recipes.remove(<packagedauto:packager_extension>);
recipes.addShaped(<packagedauto:packager_extension>, [
    [<metaitem:plateTitanium>, <packagedauto:me_package_component>, <metaitem:plateTitanium>],
    [<ore:circuitEv>, <storagedrawers:controllerslave>, <ore:circuitEv>],
    [<metaitem:plateTitanium>, <ore:ae2.interface.item>, <metaitem:plateTitanium>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <metaitem:plateTitanium> * 2,
        <ore:ae2.interface.item>,
        <storagedrawers:controllerslave>,
        <ore:circuitEv>,
        <packagedauto:me_package_component>
    ])
    .outputs([<packagedauto:packager_extension>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();
