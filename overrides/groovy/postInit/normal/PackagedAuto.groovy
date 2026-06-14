import gregtech.api.recipes.RecipeMap

def assembler = RecipeMap.getByName("assembler")

// ########################################
// Items
// ########################################
// Package Recipe Holder
mods.minecraft.crafting.removeByOutput(item('packagedauto:recipe_holder'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('packagedauto:recipe_holder') * 3)
    .shape([
        [item('appliedenergistics2:quartz_glass'), item('appliedenergistics2:material', 52), item('appliedenergistics2:quartz_glass')],
        [item('appliedenergistics2:material', 52), ore('glowstone'), item('appliedenergistics2:material', 52)],
        [mi('plateTitanium'), item('packagedauto:me_package_component'), mi('plateTitanium')]
    ])
    .register()

// Package Component
mods.minecraft.crafting.removeByOutput(item('packagedauto:package_component'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('packagedauto:package_component'))
    .shape([
        [mi('plateVibrantAlloy'), mi('plateTitanium'), mi('plateVibrantAlloy')],
        [mi('plateTitanium'), item('minecraft:ender_eye'), mi('plateTitanium')],
        [mi('plateVibrantAlloy'), mi('plateTitanium'), mi('plateVibrantAlloy')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(mi('plateVibrantAlloy', 2), mi('plateTitanium', 2), item('minecraft:ender_eye'))
    .outputs(item('packagedauto:package_component'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Packaging Component
mods.minecraft.crafting.removeByOutput(item('packagedauto:me_package_component'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('packagedauto:me_package_component'))
    .shape([
        [mi('plateTitanium'), item('appliedenergistics2:quartz_glass'), mi('plateTitanium')],
        [item('appliedenergistics2:material', 44), item('packagedauto:package_component'), item('appliedenergistics2:material', 43)],
        [mi('plateTitanium'), item('appliedenergistics2:quartz_glass'), mi('plateTitanium')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(mi('plateTitanium', 2), item('appliedenergistics2:material', 44), item('appliedenergistics2:material', 43), item('appliedenergistics2:quartz_glass'), item('packagedauto:package_component'))
    .outputs(item('packagedauto:me_package_component'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()



// ########################################
// Blocks
// ########################################
// Packager
mods.minecraft.crafting.removeByOutput(item('packagedauto:packager'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('packagedauto:packager'))
    .input(item('packagedauto:unpackager'))
    .register()
mods.minecraft.crafting.shapedBuilder()
    .output(item('packagedauto:packager'))
    .shape([
        [mi('plateTitanium'), item('packagedauto:me_package_component'), mi('plateTitanium')],
        [ore('circuitHv'), mi('packer.hv'), ore('circuitHv')],
        [mi('plateTitanium'), ore('craftInterfaceItem'), mi('plateTitanium')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(mi('plateTitanium', 2), ore('craftInterfaceItem'), mi('packer.hv'), ore('circuitHv'), item('packagedauto:me_package_component'))
    .outputs(item('packagedauto:packager'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Unpackager
mods.minecraft.crafting.removeByOutput(item('packagedauto:unpackager'))
mods.minecraft.crafting.shapelessBuilder()
    .output(item('packagedauto:unpackager'))
    .input(item('packagedauto:packager'))
    .register()

// Encoder
mods.minecraft.crafting.removeByOutput(item('packagedauto:encoder'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('packagedauto:encoder'))
    .shape([
        [mi('plateTitanium'), item('packagedauto:me_package_component'), mi('plateTitanium')],
        [item('packagedauto:recipe_holder'), ore('craftExtendedTerminal'), item('packagedauto:recipe_holder')],
        [mi('plateTitanium'), ore('circuitHv'), mi('plateTitanium')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(mi('plateTitanium', 2), ore('circuitHv'), ore('craftExtendedTerminal'), item('packagedauto:recipe_holder'), item('packagedauto:me_package_component'))
    .outputs(item('packagedauto:encoder'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Packager Extension
mods.minecraft.crafting.removeByOutput(item('packagedauto:packager_extension'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('packagedauto:packager_extension'))
    .shape([
        [mi('plateTitanium'), item('packagedauto:me_package_component'), mi('plateTitanium')],
        [ore('circuitHv'), item('storagedrawers:controllerslave'), ore('circuitHv')],
        [mi('plateTitanium'), ore('craftInterfaceItem'), mi('plateTitanium')]
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(3)
    .inputs(mi('plateTitanium', 2), ore('craftInterfaceItem'), item('storagedrawers:controllerslave'), ore('circuitHv'), item('packagedauto:me_package_component'))
    .outputs(item('packagedauto:packager_extension'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()
