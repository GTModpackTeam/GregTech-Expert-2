# Imoprts
import mods.jei.JEI;
import mods.enderio.AlloySmelter; // 1
import mods.enderio.CombustionGen; // no
import mods.enderio.Enchanter; // no
import mods.enderio.SagMill; // 2
import mods.enderio.SliceNSplice; // 3
import mods.enderio.SoulBinder; // 4
import mods.enderio.Vat; // 5
import mods.enderio.Tank; // no



# Dark Steel Anvil
assembler.recipeBuilder().
    inputs([<ore:ingotDarkSteel> * 31]).
    notConsumable([<gregtech:meta_item_1:21>]).
    outputs([<enderio:block_dark_steel_anvil>]).
    duration(512).
    EUt(480).
    buildAndRegister();

# Dark Paper Anvil
assembler.recipeBuilder().
    inputs([
        <enderio:block_dark_steel_anvil>,
        <ore:paperBlack>
    ]).
    outputs([<enderio:block_dark_paper_anvil>]).
    duration(200).
    EUt(480).
    buildAndRegister();

# Dark Steel Ladder
recipes.addShaped(<enderio:block_dark_steel_ladder> * 6, [
    [null, <enderio:block_dark_iron_bars>, null],
    [null, <enderio:block_dark_iron_bars>, null],
    [null, <enderio:block_dark_iron_bars>, null]
]);

# Dark Iron Bars
recipes.addShaped(<enderio:block_dark_iron_bars> * 8, [
    [null, null, null],
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>]
]);

# Dark Steel Trapdoor
recipes.addShaped(<enderio:block_dark_steel_trapdoor>, [
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null],
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null],
    [null, null, null]
]);

# Dark Steel Door
recipes.addShaped(<enderio:block_dark_steel_door>, [
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null],
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null],
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null]
]);

# Self-resetting Levers

# Reinforced Obsidian
recipes.addShaped(<enderio:block_reinforced_obsidian>, [
    [<ore:dustBedrock>, <enderio:block_dark_iron_bars>, <ore:dustBedrock>],
    [<enderio:block_dark_iron_bars>, <ore:obsidian>, <enderio:block_dark_iron_bars>],
    [<ore:dustBedrock>, <enderio:block_dark_iron_bars>, <ore:dustBedrock>]
]);

# Industrial Insulation
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_material:51> * 3,
        <minecraft:wool>
    ]).
    outputs([<enderio:block_industrial_insulation>]).
    duration(100).
    EUt(480).
    buildAndRegister();

# End Steel Bars
recipes.addShaped(<enderio:block_end_iron_bars>, [
    [null, null, null],
    [<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>],
    [<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>]
]);

# Pressure Plates

# Fused Quartz
alloy_smelter.recipeBuilder().
    inputs([<ore:blockQuartz>]).
    outputs([<enderio:block_fused_quartz>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Quite Clear Glass
alloy_smelter.recipeBuilder().
    inputs([<ore:blockGlass>]).
    outputs([<enderio:block_fused_glass>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Enlightened Fused Quartz
alloy_smelter.recipeBuilder().
    inputs([
        <ore:blockQuartz>,
        <ore:dustGlowstone> * 4
    ]).
    outputs([<enderio:block_enlightened_fused_quartz>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Enlightened Clear Glass
alloy_smelter.recipeBuilder().
    inputs([
        <ore:blockGlass>,
        <ore:dustGlowstone> * 4
    ]).
    outputs([<enderio:block_enlightened_fused_glass>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Dark Fused Quartz
alloy_smelter.recipeBuilder().
    inputs([
        <ore:dyeBlack>,
        <ore:gemNetherQuartz> * 4
    ]).
    outputs([<enderio:block_dark_fused_quartz>]).
    duration(56).
    EUt(480).
    buildAndRegister();

# Dark Clear Glass
alloy_smelter.recipeBuilder().
    inputs([
        <ore:blockGlass>,
        <ore:dyeBlack> * 2
    ]).
    outputs([<enderio:block_dark_fused_glass>]).
    duration(56).
    EUt(480).
    buildAndRegister();








