// ########################################
// Items
// ########################################
// Package Recipe Holder
mods.minecraft.crafting.removeByOutput(item('packagedauto:recipe_holder'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('packagedauto:recipe_holder') * 3)
    .shape([
        [
            item('appliedenergistics2:quartz_glass'),
            item('appliedenergistics2:material', 52),
            item('appliedenergistics2:quartz_glass'),
        ],
        [item('appliedenergistics2:material', 52), ore('glowstone'), item('appliedenergistics2:material', 52)],
        [metaitem('plateTitanium'), item('packagedauto:me_package_component'), metaitem('plateTitanium')],
    ])
    .register()

// Package Component
mods.minecraft.crafting.removeByOutput(item('packagedauto:package_component'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('packagedauto:package_component'))
    .shape([
        [metaitem('plateVibrantAlloy'), metaitem('plateTitanium'), metaitem('plateVibrantAlloy')],
        [metaitem('plateTitanium'), item('minecraft:ender_eye'), metaitem('plateTitanium')],
        [metaitem('plateVibrantAlloy'), metaitem('plateTitanium'), metaitem('plateVibrantAlloy')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(metaitem('plateVibrantAlloy') * 2, metaitem('plateTitanium') * 2, item('minecraft:ender_eye'))
    .outputs(item('packagedauto:package_component'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// ME Packaging Component
mods.minecraft.crafting.removeByOutput(item('packagedauto:me_package_component'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('packagedauto:me_package_component'))
    .shape([
        [metaitem('plateTitanium'), item('appliedenergistics2:quartz_glass'), metaitem('plateTitanium')],
        [
            item('appliedenergistics2:material', 44),
            item('packagedauto:package_component'),
            item('appliedenergistics2:material', 43),
        ],
        [metaitem('plateTitanium'), item('appliedenergistics2:quartz_glass'), metaitem('plateTitanium')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('plateTitanium') * 2,
        item('appliedenergistics2:material', 44),
        item('appliedenergistics2:material', 43),
        item('appliedenergistics2:quartz_glass'),
        item('packagedauto:package_component')
    )
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
        [metaitem('plateTitanium'), item('packagedauto:me_package_component'), metaitem('plateTitanium')],
        [ore('circuitHv'), metaitem('packer.hv'), ore('circuitHv')],
        [metaitem('plateTitanium'), ore('craftInterfaceItem'), metaitem('plateTitanium')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(1)
    .inputs(
        metaitem('plateTitanium') * 2,
        ore('craftInterfaceItem'),
        metaitem('packer.hv'),
        ore('circuitHv'),
        item('packagedauto:me_package_component')
    )
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
        [metaitem('plateTitanium'), item('packagedauto:me_package_component'), metaitem('plateTitanium')],
        [item('packagedauto:recipe_holder'), ore('craftExtendedTerminal'), item('packagedauto:recipe_holder')],
        [metaitem('plateTitanium'), ore('circuitHv'), metaitem('plateTitanium')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(
        metaitem('plateTitanium') * 2,
        ore('circuitHv'),
        ore('craftExtendedTerminal'),
        item('packagedauto:recipe_holder'),
        item('packagedauto:me_package_component')
    )
    .outputs(item('packagedauto:encoder'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()

// Packager Extension
mods.minecraft.crafting.removeByOutput(item('packagedauto:packager_extension'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('packagedauto:packager_extension'))
    .shape([
        [metaitem('plateTitanium'), item('packagedauto:me_package_component'), metaitem('plateTitanium')],
        [ore('circuitHv'), item('storagedrawers:controllerslave'), ore('circuitHv')],
        [metaitem('plateTitanium'), ore('craftInterfaceItem'), metaitem('plateTitanium')],
    ])
    .register()
assembler.recipeBuilder()
    .circuitMeta(3)
    .inputs(
        metaitem('plateTitanium') * 2,
        ore('craftInterfaceItem'),
        item('storagedrawers:controllerslave'),
        ore('circuitHv'),
        item('packagedauto:me_package_component')
    )
    .outputs(item('packagedauto:packager_extension'))
    .duration(20)
    .EUt(1920)
    .buildAndRegister()
