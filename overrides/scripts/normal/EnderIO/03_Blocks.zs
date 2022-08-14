# Imports
import mods.jei.JEI;



# Dark Steel Anvil
alloy_smelter.recipeBuilder()
    .inputs([<metaitem:ingotDarkSteel> * 31])
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
recipes.addShaped(<enderio:block_dark_steel_ladder> * 2, [
    [<metaitem:stickDarkSteel>, <ore:gtce.tool.soft.hammers>, <metaitem:stickDarkSteel>],
    [<metaitem:stickDarkSteel>, <metaitem:stickDarkSteel>, <metaitem:stickDarkSteel>],
    [<metaitem:stickDarkSteel>, <ore:gtce.tool.hard.hammers>, <metaitem:stickDarkSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<metaitem:stickDarkSteel> * 7])
    .outputs([<enderio:block_dark_steel_ladder> * 2])
    .duration(40)
    .EUt(1)
    .buildAndRegister();

# Dark Iron Bars
recipes.addShaped(<enderio:block_dark_iron_bars> * 8, [
    [null, <ore:gtce.tool.hard.hammers>, null],
    [<metaitem:stickDarkSteel>, <metaitem:stickDarkSteel>, <metaitem:stickDarkSteel>],
    [<metaitem:stickDarkSteel>, <metaitem:stickDarkSteel>, <metaitem:stickDarkSteel>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<metaitem:stickDarkSteel> * 3])
    .outputs([<enderio:block_dark_iron_bars> * 4])
    .duration(300)
    .EUt(4)
    .buildAndRegister();

# Dark Steel Trapdoor
recipes.addShaped(<enderio:block_dark_steel_trapdoor>, [
    [<metaitem:screwDarkSteel>, <metaitem:plateDarkSteel>, <metaitem:screwDarkSteel>],
    [<metaitem:plateDarkSteel>, <minecraft:trapdoor>, <metaitem:plateDarkSteel>],
    [<ore:gtce.tool.saws>, <metaitem:plateDarkSteel>, <ore:gtce.tool.screwdrivers>]
]);
assembler.recipeBuilder()
    .inputs([
        <metaitem:plateDarkSteel> * 4,
        <minecraft:trapdoor>
    ])
    .fluidInputs([<liquid:steel> * 16])
    .outputs([<enderio:block_dark_steel_trapdoor>])
    .duration(100)
    .EUt(16)
    .buildAndRegister();

# Dark Steel Door
recipes.addShaped(<enderio:block_dark_steel_door>, [
    [<metaitem:plateDarkSteel>, <enderio:block_dark_iron_bars>, <ore:gtce.tool.hard.hammers>],
    [<metaitem:plateDarkSteel>, <metaitem:ringDarkSteel>, <metaitem:screwDarkSteel>],
    [<metaitem:plateDarkSteel>, <metaitem:plateDarkSteel>, <ore:gtce.tool.screwdrivers>]
]);
assembler.recipeBuilder()
    .inputs([
        <enderio:block_dark_iron_bars>,
        <metaitem:plateDarkSteel> * 4
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
    [<enderio:item_material:20>, <enderio:block_dark_iron_bars>, <enderio:item_material:20>],
    [<enderio:block_dark_iron_bars>, <ore:obsidian>, <enderio:block_dark_iron_bars>],
    [<enderio:item_material:20>, <enderio:block_dark_iron_bars>, <enderio:item_material:20>]
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
    [<metaitem:stickEndSteel>, <metaitem:stickEndSteel>, <metaitem:stickEndSteel>],
    [<metaitem:stickEndSteel>, <metaitem:stickEndSteel>, <metaitem:stickEndSteel>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<metaitem:stickEndSteel> * 3])
    .outputs([<enderio:block_end_iron_bars> * 4])
    .duration(300)
    .EUt(4)
    .buildAndRegister();

# TNTs
JEI.hide(<enderio:block_confusion_charge>);
JEI.hide(<enderio:block_concussion_charge>);
JEI.hide(<enderio:block_ender_charge>);

# Pressure Plates
JEI.hide(<enderio:block_painted_pressure_plate:*>);

# Fused Quartz
alloy_smelter.recipeBuilder()
    .inputs([<ore:blockQuartz>])
    .outputs([<enderio:block_fused_quartz:0>])
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

# Quartz Clear Glass
alloy_smelter.recipeBuilder()
    .inputs([<enderio:block_fused_quartz>])
    .outputs([<enderio:block_fused_glass:0>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();
JEI.hide(<enderio:block_fused_glass:1>);
JEI.hide(<enderio:block_fused_glass:2>);
JEI.hide(<enderio:block_fused_glass:3>);
JEI.hide(<enderio:block_fused_glass:4>);
JEI.hide(<enderio:block_fused_glass:5>);
JEI.hide(<enderio:block_fused_glass:6>);
JEI.hide(<enderio:block_fused_glass:7>);
JEI.hide(<enderio:block_fused_glass:8>);
JEI.hide(<enderio:block_fused_glass:9>);
JEI.hide(<enderio:block_fused_glass:10>);
JEI.hide(<enderio:block_fused_glass:11>);
JEI.hide(<enderio:block_fused_glass:12>);
JEI.hide(<enderio:block_fused_glass:13>);
JEI.hide(<enderio:block_fused_glass:14>);
JEI.hide(<enderio:block_fused_glass:15>);

# Other Glass
JEI.hide(<enderio:block_enlightened_fused_quartz:*>);
JEI.hide(<enderio:block_holy_fused_quartz:*>);
JEI.hide(<enderio:block_holy_fused_glass:*>);
JEI.hide(<enderio:block_holy_enlightened_fused_glass:*>);
JEI.hide(<enderio:block_holy_dark_fused_quartz:*>);
JEI.hide(<enderio:block_holy_dark_fused_glass:*>);
JEI.hide(<enderio:block_unholy_fused_quartz:*>);
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
