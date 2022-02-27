#packmode normal
# Imports
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
alloy_smelter.recipeBuilder()
    .inputs([<ore:ingotDarkSteel> * 31])
    .notConsumable([<metaitem:shape.mold.anvil>])
    .outputs([<enderio:block_dark_steel_anvil>])
    .duration(512)
    .EUt(480)
    .buildAndRegister();
fluid_solidifier.recipeBuilder()
    .notConsumable([<metaitem:shape.mold.anvil>])
    .fluidInputs([<liquid:dark_steel> * 4467])
    .outputs([<enderio:block_dark_steel_anvil>])
    .duration(128)
    .EUt(16)
    .buildAndRegister();

# Dark Paper Anvil
alloy_smelter.recipeBuilder()
    .inputs([
        <enderio:block_dark_steel_anvil>,
        <ore:paperBlack>
    ])
    .outputs([<enderio:block_dark_paper_anvil>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Dark Steel Ladder
recipes.addShaped(<enderio:block_dark_steel_ladder> * 3, [
    [<ore:stickDarkSteel>, null, <ore:stickDarkSteel>],
    [<ore:stickDarkSteel>, <ore:stickDarkSteel>, <ore:stickDarkSteel>],
    [<ore:stickDarkSteel>, null, <ore:stickDarkSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<ore:stickDarkSteel> * 7])
    .outputs([<enderio:block_dark_steel_ladder> * 2])
    .duration(40)
    .EUt(1)
    .buildAndRegister();

# Dark Iron Bars
recipes.addShaped(<enderio:block_dark_iron_bars> * 8, [
    [null, <ore:gtce.tool.hard.hammers>, null],
    [<ore:stickDarkSteel>, <ore:stickDarkSteel>, <ore:stickDarkSteel>],
    [<ore:stickDarkSteel>, <ore:stickDarkSteel>, <ore:stickDarkSteel>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<ore:stickDarkSteel> * 3])
    .outputs([<enderio:block_dark_iron_bars> * 4])
    .duration(300)
    .EUt(4)
    .buildAndRegister();

# Dark Steel Trapdoor
recipes.addShaped(<enderio:block_dark_steel_trapdoor>, [
    [<ore:screwDarkSteel>, <ore:plateDarkSteel>, <ore:screwDarkSteel>],
    [<ore:plateDarkSteel>, <minecraft:trapdoor>, <ore:plateDarkSteel>],
    [<ore:gtce.tool.saws>, <ore:plateDarkSteel>, <ore:gtce.tool.screwdrivers>]
]);
assembler.recipeBuilder()
    .inputs([
        <ore:plateDarkSteel> * 4,
        <minecraft:trapdoor>
    ])
    .fluidInputs([<liquid:steel> * 16])
    .outputs([<enderio:block_dark_steel_trapdoor>])
    .duration(100)
    .EUt(16)
    .buildAndRegister();

# Dark Steel Door
recipes.addShaped(<enderio:block_dark_steel_door>, [
    [<ore:plateDarkSteel>, <enderio:block_dark_iron_bars>, <ore:gtce.tool.hard.hammers>],
    [<ore:plateDarkSteel>, <ore:ringDarkSteel>, <ore:screwDarkSteel>],
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:gtce.tool.screwdrivers>]
]);
assembler.recipeBuilder()
    .inputs([
        <enderio:block_dark_iron_bars>,
        <ore:plateDarkSteel> * 4
    ])
    .outputs([<enderio:block_dark_steel_door>])
    .duration(400)
    .EUt(7)
    .buildAndRegister();

# Self-resetting Levers
JEI.hide(<enderio:block_self_resetting_lever5>);
JEI.hide(<enderio:block_self_resetting_lever10>);
JEI.hide(<enderio:block_self_resetting_lever30>);
JEI.hide(<enderio:block_self_resetting_lever60>);
JEI.hide(<enderio:block_self_resetting_lever300>);
JEI.hide(<enderio:block_self_resetting_lever5i>);
JEI.hide(<enderio:block_self_resetting_lever10i>);
JEI.hide(<enderio:block_self_resetting_lever30i>);
JEI.hide(<enderio:block_self_resetting_lever60i>);
JEI.hide(<enderio:block_self_resetting_lever300i>);

# Decoration Blocks
JEI.hide(<enderio:block_decoration1:*>);
JEI.hide(<enderio:block_decoration2:*>);
JEI.hide(<enderio:block_decoration3:*>);

# Reinforced Obsidian
recipes.addShaped(<enderio:block_reinforced_obsidian>, [
    [<ore:dustBedrock>, <enderio:block_dark_iron_bars>, <ore:dustBedrock>],
    [<enderio:block_dark_iron_bars>, <ore:obsidian>, <enderio:block_dark_iron_bars>],
    [<ore:dustBedrock>, <enderio:block_dark_iron_bars>, <ore:dustBedrock>]
]);

# Industrial Insulation
alloy_smelter.recipeBuilder()
    .inputs([
        <enderio:item_material:51> * 3,
        <minecraft:wool>
    ])
    .outputs([<enderio:block_industrial_insulation>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# End Steel Bars
recipes.addShaped(<enderio:block_end_iron_bars> * 8, [
    [null, <ore:gtce.tool.hard.hammers>, null],
    [<ore:stickEndSteel>, <ore:stickEndSteel>, <ore:stickEndSteel>],
    [<ore:stickEndSteel>, <ore:stickEndSteel>, <ore:stickEndSteel>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<ore:stickEndSteel> * 3])
    .outputs([<enderio:block_end_iron_bars> * 4])
    .duration(300)
    .EUt(4)
    .buildAndRegister();

# Pressure Plates
JEI.hide(<enderio:block_painted_pressure_plate:*>);

# Fused Quartz
alloy_smelter.recipeBuilder()
    .inputs([<ore:blockQuartz>])
    .outputs([<enderio:block_fused_quartz>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();
JEI.hide(<enderio:block_fused_quartz:1>);
JEI.hide(<enderio:block_fused_quartz:2>);
JEI.hide(<enderio:block_fused_quartz:3>);
JEI.hide(<enderio:block_fused_quartz:4>);
JEI.hide(<enderio:block_fused_quartz:5>);
JEI.hide(<enderio:block_fused_quartz:6>);
JEI.hide(<enderio:block_fused_quartz:7>);
JEI.hide(<enderio:block_fused_quartz:8>);
JEI.hide(<enderio:block_fused_quartz:9>);
JEI.hide(<enderio:block_fused_quartz:10>);
JEI.hide(<enderio:block_fused_quartz:11>);
JEI.hide(<enderio:block_fused_quartz:12>);
JEI.hide(<enderio:block_fused_quartz:13>);
JEI.hide(<enderio:block_fused_quartz:14>);
JEI.hide(<enderio:block_fused_quartz:15>);

# Other Glass
JEI.hide(<enderio:block_fused_glass:*>);
JEI.hide(<enderio:block_enlightened_fused_quartz:*>);
JEI.hide(<enderio:block_holy_fused_quartz:*>);
JEI.hide(<enderio:block_holy_fused_glass:*>);
JEI.hide(<enderio:block_holy_enlightened_fused_glass:*>);
JEI.hide(<enderio:block_holy_dark_fused_quartz:*>);
JEI.hide(<enderio:block_holy_dark_fused_glass:*>);
JEI.hide(<enderio:block_unholy_fused_quartz:*>);
JEI.hide(<enderio:block_fused_glass:*>);
JEI.hide(<enderio:block_enlightened_fused_quartz:*>);
JEI.hide(<enderio:block_enlightened_fused_glass:*>);
JEI.hide(<enderio:block_dark_fused_quartz:*>);
JEI.hide(<enderio:block_dark_fused_glass:*>);
JEI.hide(<enderio:block_holy_fused_quartz:*>);
JEI.hide(<enderio:block_holy_fused_glass:*>);
JEI.hide(<enderio:block_holy_enlightened_fused_quartz:*>);
JEI.hide(<enderio:block_holy_enlightened_fused_glass:*>);
JEI.hide(<enderio:block_holy_dark_fused_quartz:*>);
JEI.hide(<enderio:block_holy_dark_fused_glass:*>);
JEI.hide(<enderio:block_unholy_fused_quartz:*>);
JEI.hide(<enderio:block_unholy_fused_glass:*>);
JEI.hide(<enderio:block_unholy_enlightened_fused_quartz:*>);
JEI.hide(<enderio:block_unholy_enlightened_fused_glass:*>);
JEI.hide(<enderio:block_unholy_dark_fused_quartz:*>);
JEI.hide(<enderio:block_unholy_dark_fused_glass:*>);
JEI.hide(<enderio:block_pasture_fused_quartz:*>);
JEI.hide(<enderio:block_pasture_fused_glass:*>);
JEI.hide(<enderio:block_pasture_enlightened_fused_quartz:*>);
JEI.hide(<enderio:block_pasture_enlightened_fused_glass:*>);
JEI.hide(<enderio:block_pasture_dark_fused_quartz:*>);
JEI.hide(<enderio:block_pasture_dark_fused_glass:*>);
JEI.hide(<enderio:block_not_holy_fused_quartz:*>);
JEI.hide(<enderio:block_not_holy_fused_glass:*>);
JEI.hide(<enderio:block_not_holy_enlightened_fused_quartz:*>);
JEI.hide(<enderio:block_not_holy_enlightened_fused_glass:*>);
JEI.hide(<enderio:block_not_holy_dark_fused_quartz:*>);
JEI.hide(<enderio:block_not_holy_dark_fused_glass:*>);
JEI.hide(<enderio:block_not_unholy_fused_quartz:*>);
JEI.hide(<enderio:block_not_unholy_fused_glass:*>);
JEI.hide(<enderio:block_not_unholy_enlightened_fused_quartz:*>);
JEI.hide(<enderio:block_not_unholy_enlightened_fused_glass:*>);
JEI.hide(<enderio:block_not_unholy_dark_fused_quartz:*>);
JEI.hide(<enderio:block_not_unholy_dark_fused_glass:*>);
JEI.hide(<enderio:block_not_pasture_fused_quartz:*>);
JEI.hide(<enderio:block_not_pasture_fused_glass:*>);
JEI.hide(<enderio:block_not_pasture_enlightened_fused_quartz:*>);
JEI.hide(<enderio:block_not_pasture_enlightened_fused_glass:*>);
JEI.hide(<enderio:block_not_pasture_dark_fused_quartz:*>);
JEI.hide(<enderio:block_not_pasture_dark_fused_glass:*>);
