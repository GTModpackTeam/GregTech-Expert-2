# Imports
import mods.jei.JEI;



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

# TNTs
JEI.hide(<enderio:block_confusion_charge>);
JEI.hide(<enderio:block_concussion_charge>);
JEI.hide(<enderio:block_ender_charge>);

# Pressure Plates
JEI.hide(<enderio:block_painted_pressure_plate:*>);

# Fused Quartz
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
