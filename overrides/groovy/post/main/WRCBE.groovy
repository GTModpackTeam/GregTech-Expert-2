////////////////////////////////////////
// Items
////////////////////////////////////////
// Obsidian Stick
mods.minecraft.ore_dict.remove('obsidianRod', item('wrcbe:material', 0))
mods.minecraft.crafting.removeByOutput(item('wrcbe:material', 0))
mods.jei.ingredient.hide(item('wrcbe:material', 0))

// Stone Bowl
mods.minecraft.crafting.removeByOutput(item('wrcbe:material', 1))
mods.minecraft.crafting.shapedBuilder()
    .output(item('wrcbe:material', 1))
    .shape([
        [metaitem('plateStone'), null, metaitem('plateStone')],
        [metaitem('plateStone'), ore('craftingToolHardHammer'), metaitem('plateStone')],
        [metaitem('plateStone'), metaitem('plateStone'), metaitem('plateStone')],
    ])
    .register()
lathe.recipeBuilder()
    .inputs(item('minecraft:stone_slab'))
    .outputs(item('wrcbe:material', 1), metaitem('dustSmallStone'))
    .duration(500)
    .EUt(7)
    .buildAndRegister()

// REther Pearl
mods.minecraft.crafting.removeByOutput(item('wrcbe:material', 2))
chemicalReactor.recipeBuilder()
    .inputs(item('minecraft:ender_pearl'), item('minecraft:glowstone_dust'))
    .fluidInputs(fluid('redstone') * 144)
    .outputs(item('wrcbe:material', 2))
    .duration(600)
    .EUt(30)
    .buildAndRegister()

// Wirreless Transceiver
mods.minecraft.crafting.removeByOutput(item('wrcbe:material', 3))
assembler.recipeBuilder()
    .inputs(metaitem('stickTungstenSteel'), item('wrcbe:material', 2))
    .fluidInputs(fluid('redstone') * 144)
    .outputs(item('wrcbe:material', 3))
    .duration(600)
    .EUt(120)
    .buildAndRegister()

// Blaze Transceiver
mods.minecraft.crafting.removeByOutput(item('wrcbe:material', 4))
assembler.recipeBuilder()
    .inputs(item('minecraft:blaze_rod'), item('wrcbe:material', 2))
    .fluidInputs(fluid('redstone') * 144)
    .outputs(item('wrcbe:material', 4))
    .duration(600)
    .EUt(120)
    .buildAndRegister()

// Receiver Dish
mods.minecraft.crafting.removeByOutput(item('wrcbe:material', 5))
assembler.recipeBuilder()
    .inputs(item('wrcbe:material', 1), item('wrcbe:material', 3))
    .fluidInputs(fluid('ender_pearl') * 144)
    .outputs(item('wrcbe:material', 5))
    .duration(600)
    .EUt(256)
    .buildAndRegister()

// Blaze Receiver Dish
mods.minecraft.crafting.removeByOutput(item('wrcbe:material', 6))
assembler.recipeBuilder()
    .inputs(item('wrcbe:material', 1), item('wrcbe:material', 4))
    .fluidInputs(fluid('ender_pearl') * 144)
    .outputs(item('wrcbe:material', 6))
    .duration(600)
    .EUt(256)
    .buildAndRegister()

// Triangulator
mods.minecraft.crafting.removeByOutput(item('wrcbe:triangulator'))
assembler.recipeBuilder()
    .inputs(item('minecraft:compass'), item('wrcbe:material', 3))
    .fluidInputs(fluid('redstone') * 144)
    .outputs(item('wrcbe:triangulator'))
    .duration(600)
    .EUt(120)
    .buildAndRegister()

// Remote
mods.minecraft.crafting.removeByOutput(item('wrcbe:remote'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('wrcbe:remote'))
    .shape([
        [ore('craftingToolScrewdriver'), item('wrcbe:material', 3), ore('craftingToolFile')],
        [ore('circuitHv'), metaitem('cover.screen'), ore('circuitHv')],
        [metaitem('plateTungstenSteel'), metaitem('screwTungstenSteel'), metaitem('plateTungstenSteel')],
    ])
    .register()

// Sniffer
mods.minecraft.crafting.removeByOutput(item('wrcbe:sniffer'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('wrcbe:sniffer'))
    .shape([
        [item('wrcbe:material', 5), item('wrcbe:material', 3), item('wrcbe:material', 5)],
        [metaitem('plateTungstenSteel'), metaitem('stickTungstenSteel'), metaitem('plateTungstenSteel')],
        [metaitem('plateStone'), metaitem('plateStone'), metaitem('plateStone')],
    ])
    .register()

// Tracker
mods.minecraft.crafting.removeByOutput(item('wrcbe:tracker'))
assembler.recipeBuilder()
    .circuitMeta(2)
    .inputs(metaitem('plateObsidian') * 3, item('wrcbe:material', 3))
    .fluidInputs(fluid('redstone') * 144)
    .outputs(item('wrcbe:tracker'))
    .duration(600)
    .EUt(120)
    .buildAndRegister()

// REP
mods.minecraft.crafting.removeByOutput(item('wrcbe:rep'))
mods.jei.ingredient.hide(item('wrcbe:rep'))

// Private Sniffer
mods.minecraft.crafting.removeByOutput(item('wrcbe:p_sniffer'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('wrcbe:p_sniffer'))
    .shape([
        [item('wrcbe:material', 6), item('wrcbe:material', 4), item('wrcbe:material', 6)],
        [metaitem('plateTungstenSteel'), metaitem('stickTungstenSteel'), metaitem('plateTungstenSteel')],
        [metaitem('plateStone'), metaitem('plateStone'), metaitem('plateStone')],
    ])
    .register()

// Map
mods.minecraft.crafting.removeByOutput(item('wrcbe:empty_map'))
assembler.recipeBuilder()
    .inputs(item('wrcbe:triangulator'), item('minecraft:paper') * 8)
    .fluidInputs(fluid('redstone') * 144)
    .outputs(item('wrcbe:map'))
    .duration(300)
    .EUt(64)
    .buildAndRegister()

////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Wireless Transmitter
mods.minecraft.crafting.removeByOutput(item('wrcbe:wireless_logic', 0))
assembler.recipeBuilder()
    .inputs(metaitem('plateStone'), item('wrcbe:material', 3))
    .fluidInputs(fluid('ender_pearl') * 144)
    .outputs(item('wrcbe:wireless_logic', 0))
    .duration(600)
    .EUt(256)
    .buildAndRegister()

// Wireless Receiver
mods.minecraft.crafting.removeByOutput(item('wrcbe:wireless_logic', 1))
assembler.recipeBuilder()
    .inputs(metaitem('plateStone'), item('wrcbe:material', 5))
    .fluidInputs(fluid('ender_pearl') * 144)
    .outputs(item('wrcbe:wireless_logic', 1))
    .duration(600)
    .EUt(256)
    .buildAndRegister()

// Wireless Jammer
mods.minecraft.crafting.removeByOutput(item('wrcbe:wireless_logic', 2))
assembler.recipeBuilder()
    .inputs(metaitem('plateStone'), item('wrcbe:material', 2))
    .fluidInputs(fluid('ender_pearl') * 144)
    .outputs(item('wrcbe:wireless_logic', 2))
    .duration(600)
    .EUt(256)
    .buildAndRegister()
