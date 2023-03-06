# Imports
import mods.jei.JEI;
import mods.zenutils.I18n;



########################################
# Electrical Steel
########################################
// Tiny Dust
// <ore:dustTinyElectricalSteel> <---> <metaitem:dustTinyElectricalSteel>
recipes.addShapeless(<gregtech:meta_dust_tiny:24103>, [<gregtech:meta_dust_tiny:32100>]);
<gregtech:meta_dust_tiny:32100>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallElectricalSteel> <---> <metaitem:dustSmallElectricalSteel>
recipes.addShapeless(<gregtech:meta_dust_small:24103>, [<gregtech:meta_dust_small:32100>]);
<gregtech:meta_dust_small:32100>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustElectricalSteel> <---> <metaitem:dustElectricalSteel>
recipes.addShapeless(<gregtech:meta_dust:24103>, [<gregtech:meta_dust:32100>]);
<gregtech:meta_dust:32100>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(480, [<metaitem:dustSteel>, <metaitem:dustCoal>, <metaitem:dustSilicon>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustSteel>,
        <metaitem:dustCoal>,
        <metaitem:dustSilicon>
    ])
    .outputs([<gregtech:meta_dust:24103> * 3])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

// Nugget
// <ore:nuggetElectricalSteel> <---> <metaitem:nuggetElectricalSteel>
recipes.addShapeless(<gregtech:meta_nugget:24103>, [<gregtech:meta_nugget:32100>]);
<gregtech:meta_nugget:32100>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotElectricalSteel> <---> <metaitem:ingotElectricalSteel>
recipes.addShapeless(<gregtech:meta_ingot:24103>, [<gregtech:meta_ingot:32100>]);
<gregtech:meta_ingot:32100>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Hot Ingot
// <ore:ingotHotElectricalSteel> <---> <metaitem:ingotHotElectricalSteel>
recipes.addShapeless(<gregtech:meta_ingot_hot:24103>, [<gregtech:meta_ingot_hot:32100>]);
<gregtech:meta_ingot_hot:32100>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateElectricalSteel> <---> <metaitem:plateElectricalSteel>
recipes.addShapeless(<gregtech:meta_plate:24103>, [<gregtech:meta_plate:32100>]);
<gregtech:meta_plate:32100>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleElectricalSteel> <---> <metaitem:plateDoubleElectricalSteel>
recipes.addShapeless(<gregtech:meta_plate_double:24103>, [<gregtech:meta_plate_double:32100>]);
<gregtech:meta_plate_double:32100>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Block
// <ore:blockElectricalSteel> <---> <metaitem:blockElectricalSteel>
recipes.addShapeless(<gregtech:meta_block_compressed_1506:7>, [<gregtech:meta_block_compressed_2006:4>]);
<gregtech:meta_block_compressed_2006:4>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Rod
// <ore:stickElectricalSteel> <---> <metaitem:stickElectricalSteel>
recipes.addShapeless(<gregtech:meta_stick:24103>, [<gregtech:meta_stick:32100>]);
<gregtech:meta_stick:32100>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Gear
// <ore:gearElectricalSteel> <---> <metaitem:gearElectricalSteel>
recipes.addShapeless(<gregtech:meta_gear:24103>, [<gregtech:meta_gear:32100>]);
<gregtech:meta_gear:32100>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Energetic Alloy
########################################
// Tiny Dust
// <ore:dustTinyEnergeticAlloy> <---> <metaitem:dustTinyEnergeticAlloy>
recipes.addShapeless(<gregtech:meta_dust_tiny:24104>, [<gregtech:meta_dust_tiny:32101>]);
<gregtech:meta_dust_tiny:32101>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallEnergeticAlloy> <---> <metaitem:dustSmallEnergeticAlloy>
recipes.addShapeless(<gregtech:meta_dust_small:24104>, [<gregtech:meta_dust_small:32101>]);
<gregtech:meta_dust_small:32101>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustEnergeticAlloy> <---> <metaitem:dustEnergeticAlloy>
recipes.addShapeless(<gregtech:meta_dust:24104>, [<gregtech:meta_dust:32101>]);
<gregtech:meta_dust:32101>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(480, [<minecraft:redstone:0>, <metaitem:dustGold>, <minecraft:glowstone_dust:0>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <minecraft:redstone>,
        <metaitem:dustGold>,
        <minecraft:glowstone_dust>
    ])
    .outputs([<gregtech:meta_dust:24104> * 3])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

// Nugget
// <ore:nuggetEnergeticAlloy> <---> <metaitem:nuggetEnergeticAlloy>
recipes.addShapeless(<gregtech:meta_nugget:24104>, [<gregtech:meta_nugget:32101>]);
<gregtech:meta_nugget:32101>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotEnergeticAlloy> <---> <metaitem:ingotEnergeticAlloy>
recipes.addShapeless(<gregtech:meta_ingot:24104>, [<gregtech:meta_ingot:32101>]);
<gregtech:meta_ingot:32101>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Hot Ingot
// <ore:ingotHotEnergeticAlloy> <---> <metaitem:ingotHotEnergeticAlloy>
recipes.addShapeless(<gregtech:meta_ingot_hot:24104>, [<gregtech:meta_ingot_hot:32101>]);
<gregtech:meta_ingot_hot:32101>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateEnergeticAlloy> <---> <metaitem:plateEnergeticAlloy>
recipes.addShapeless(<gregtech:meta_plate:24104>, [<gregtech:meta_plate:32101>]);
<gregtech:meta_plate:32101>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleEnergeticAlloy> <---> <metaitem:plateDoubleEnergeticAlloy>
recipes.addShapeless(<gregtech:meta_plate_double:24104>, [<gregtech:meta_plate_double:32101>]);
<gregtech:meta_plate_double:32101>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Rod
// <ore:stickEnergeticAlloy> <---> <metaitem:stickEnergeticAlloy>
recipes.addShapeless(<gregtech:meta_stick:24104>, [<gregtech:meta_stick:32101>]);
<gregtech:meta_stick:32101>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Gear
// <ore:gearEnergeticAlloy> <---> <metaitem:gearEnergeticAlloy>
recipes.addShapeless(<gregtech:meta_gear:24104>, [<gregtech:meta_gear:32101>]);
<gregtech:meta_gear:32101>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Vibrant Alloy
########################################
// Tiny Dust
// <ore:dustTinyVibrantAlloy> <---> <metaitem:dustTinyVibrantAlloy>
recipes.addShapeless(<gregtech:meta_dust_tiny:24105>, [<gregtech:meta_dust_tiny:32102>]);
<gregtech:meta_dust_tiny:32102>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallVibrantAlloy> <---> <metaitem:dustSmallVibrantAlloy>
recipes.addShapeless(<gregtech:meta_dust_small:24105>, [<gregtech:meta_dust_small:32102>]);
<gregtech:meta_dust_small:32102>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustVibrantAlloy> <---> <metaitem:dustVibrantAlloy>
recipes.addShapeless(<gregtech:meta_dust:24105>, [<gregtech:meta_dust:32102>]);
<gregtech:meta_dust:32102>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(480, [<metaitem:dustEnergeticAlloy>, <metaitem:dustEnderPearl>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <ore:dustEnergeticAlloy>,
        <metaitem:dustEnderPearl>
    ])
    .outputs([<gregtech:meta_dust:24105> * 2])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

// Nugget
// <ore:nuggetVibrantAlloy> <---> <metaitem:nuggetVibrantAlloy>
recipes.addShapeless(<gregtech:meta_nugget:24105>, [<gregtech:meta_nugget:32102>]);
<gregtech:meta_nugget:32102>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotVibrantAlloy> <---> <metaitem:ingotVibrantAlloy>
recipes.addShapeless(<gregtech:meta_ingot:24105>, [<gregtech:meta_ingot:32102>]);
<gregtech:meta_ingot:32102>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Hot Ingot
// <ore:ingotHotVibrantAlloy> <---> <metaitem:ingotHotVibrantAlloy>
recipes.addShapeless(<gregtech:meta_ingot_hot:24105>, [<gregtech:meta_ingot_hot:32102>]);
<gregtech:meta_ingot_hot:32102>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateVibrantAlloy> <---> <metaitem:plateVibrantAlloy>
recipes.addShapeless(<gregtech:meta_plate:24105>, [<gregtech:meta_plate:32102>]);
<gregtech:meta_plate:32102>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleVibrantAlloy> <---> <metaitem:plateDoubleVibrantAlloy>
recipes.addShapeless(<gregtech:meta_plate_double:24105>, [<gregtech:meta_plate_double:32102>]);
<gregtech:meta_plate_double:32102>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Rod
// <ore:stickVibrantAlloy> <---> <metaitem:stickVibrantAlloy>
recipes.addShapeless(<gregtech:meta_stick:24105>, [<gregtech:meta_stick:32102>]);
<gregtech:meta_stick:32102>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Gear
// <ore:gearVibrantAlloy> <---> <metaitem:gearVibrantAlloy>
recipes.addShapeless(<gregtech:meta_gear:24105>, [<gregtech:meta_gear:32102>]);
<gregtech:meta_gear:32102>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Redstone Alloy
########################################
// Tiny Dust
// <ore:dustTinyRedstoneAlloy> <---> <metaitem:dustTinyRedstoneAlloy>
recipes.addShapeless(<gregtech:meta_dust_tiny:24106>, [<gregtech:meta_dust_tiny:32103>]);
<gregtech:meta_dust_tiny:32103>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallRedstoneAlloy> <---> <metaitem:dustSmallRedstoneAlloy>
recipes.addShapeless(<gregtech:meta_dust_small:24106>, [<gregtech:meta_dust_small:32103>]);
<gregtech:meta_dust_small:32103>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustRedstoneAlloy> <---> <metaitem:dustRedstoneAlloy>
recipes.addShapeless(<gregtech:meta_dust:24106>, [<gregtech:meta_dust:32103>]);
<gregtech:meta_dust:32103>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(480, [<metaitem:dustRedAlloy>, <metaitem:dustSilicon>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustRedAlloy>,
        <metaitem:dustSilicon>
    ])
    .outputs([<gregtech:meta_dust:24106> * 2])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

// Nugget
// <ore:nuggetRedstoneAlloy> <---> <metaitem:nuggetRedstoneAlloy>
recipes.addShapeless(<gregtech:meta_nugget:24106>, [<gregtech:meta_nugget:32103>]);
<gregtech:meta_nugget:32103>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotRedstoneAlloy> <---> <metaitem:ingotRedstoneAlloy>
recipes.addShapeless(<gregtech:meta_ingot:24106>, [<gregtech:meta_ingot:32103>]);
<gregtech:meta_ingot:32103>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateRedstoneAlloy> <---> <metaitem:plateRedstoneAlloy>
recipes.addShapeless(<gregtech:meta_plate:24106>, [<gregtech:meta_plate:32103>]);
<gregtech:meta_plate:32103>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleRedstoneAlloy> <---> <metaitem:plateDoubleRedstoneAlloy>
recipes.addShapeless(<gregtech:meta_plate_double:24106>, [<gregtech:meta_plate_double:32103>]);
<gregtech:meta_plate_double:32103>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Conductive Iron
########################################
// Tiny Dust
// <ore:dustTinyConductiveIron> <---> <metaitem:dustTinyConductiveIron>
recipes.addShapeless(<gregtech:meta_dust_tiny:24107>, [<gregtech:meta_dust_tiny:32104>]);
<gregtech:meta_dust_tiny:32104>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallConductiveIron> <---> <metaitem:dustSmallConductiveIron>
recipes.addShapeless(<gregtech:meta_dust_small:24107>, [<gregtech:meta_dust_small:32104>]);
<gregtech:meta_dust_small:32104>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustConductiveIron> <---> <metaitem:dustConductiveIron>
recipes.addShapeless(<gregtech:meta_dust:24107>, [<gregtech:meta_dust:32104>]);
<gregtech:meta_dust:32104>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(480, [<metaitem:dustIron>, <metaitem:dustRedstoneAlloy>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustIron>,
        <ore:dustRedstoneAlloy>
    ])
    .outputs([<gregtech:meta_dust:24107> * 2])
    .duration(40)
    .EUt(480)
    .buildAndRegister();


// Nugget
// <ore:nuggetConductiveIron> <---> <metaitem:nuggetConductiveIron>
recipes.addShapeless(<gregtech:meta_nugget:24107>, [<gregtech:meta_nugget:32104>]);
<gregtech:meta_nugget:32104>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotConductiveIron> <---> <metaitem:ingotConductiveIron>
recipes.addShapeless(<gregtech:meta_ingot:24107>, [<gregtech:meta_ingot:32104>]);
<gregtech:meta_ingot:32104>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateConductiveIron> <---> <metaitem:plateConductiveIron>
recipes.addShapeless(<gregtech:meta_plate:24107>, [<gregtech:meta_plate:32104>]);
<gregtech:meta_plate:32104>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleConductiveIron> <---> <metaitem:plateDoubleConductiveIron>
recipes.addShapeless(<gregtech:meta_plate_double:24107>, [<gregtech:meta_plate_double:32104>]);
<gregtech:meta_plate_double:32104>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Pulsating Iron
########################################
// Tiny Dust
// <ore:dustTinyPulsatingIron> <---> <metaitem:dustTinyPulsatingIron>
recipes.addShapeless(<gregtech:meta_dust_tiny:24108>, [<gregtech:meta_dust_tiny:32105>]);
<gregtech:meta_dust_tiny:32105>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallPulsatingIron> <---> <metaitem:dustSmallPulsatingIron>
recipes.addShapeless(<gregtech:meta_dust_small:24108>, [<gregtech:meta_dust_small:32105>]);
<gregtech:meta_dust_small:32105>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustPulsatingIron> <---> <metaitem:dustPulsatingIron>
recipes.addShapeless(<gregtech:meta_dust:24108>, [<gregtech:meta_dust:32105>]);
<gregtech:meta_dust:32105>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(480, [<metaitem:dustIron>, <metaitem:dustEnderPearl>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustIron>,
        <metaitem:dustEnderPearl>,
    ])
    .outputs([<gregtech:meta_dust:24108> * 2])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

// Nugget
// <ore:nuggetPulsatingIron> <---> <metaitem:nuggetPulsatingIron>
recipes.addShapeless(<gregtech:meta_nugget:24108>, [<gregtech:meta_nugget:32105>]);
<gregtech:meta_nugget:32105>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotPulsatingIron> <---> <metaitem:ingotPulsatingIron>
recipes.addShapeless(<gregtech:meta_ingot:24108>, [<gregtech:meta_ingot:32105>]);
<gregtech:meta_ingot:32105>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:platePulsatingIron> <---> <metaitem:platePulsatingIron>
recipes.addShapeless(<gregtech:meta_plate:24108>, [<gregtech:meta_plate:32105>]);
<gregtech:meta_plate:32105>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoublePulsatingIron> <---> <metaitem:plateDoublePulsatingIron>
recipes.addShapeless(<gregtech:meta_plate_double:24108>, [<gregtech:meta_plate_double:32105>]);
<gregtech:meta_plate_double:32105>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Rod
// <ore:stickPulsatingIron> <---> <metaitem:stickPulsatingIron>
recipes.addShapeless(<gregtech:meta_stick:24108>, [<gregtech:meta_stick:32105>]);
<gregtech:meta_stick:32105>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Dark Steel
########################################
// Tiny Dust
// <ore:dustTinyDarkSteel> <---> <metaitem:dustTinyDarkSteel>
recipes.addShapeless(<gregtech:meta_dust_tiny:24109>, [<gregtech:meta_dust_tiny:32106>]);
<gregtech:meta_dust_tiny:32106>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallDarkSteel> <---> <metaitem:dustSmallDarkSteel>
recipes.addShapeless(<gregtech:meta_dust_small:24109>, [<gregtech:meta_dust_small:32106>]);
<gregtech:meta_dust_small:32106>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustDarkSteel> <---> <metaitem:dustDarkSteel>
recipes.addShapeless(<gregtech:meta_dust:24109>, [<gregtech:meta_dust:32106>]);
<gregtech:meta_dust:32106>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(480, [<metaitem:dustIron>, <metaitem:dustCoal>, <metaitem:dustObsidian>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustIron>,
        <metaitem:dustCoal>,
        <metaitem:dustObsidian>
    ])
    .outputs([<gregtech:meta_dust:24109> * 3])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

// Nugget
// <ore:nuggetDarkSteel> <---> <metaitem:nuggetDarkSteel>
recipes.addShapeless(<gregtech:meta_nugget:24109>, [<gregtech:meta_nugget:32106>]);
<gregtech:meta_nugget:32106>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotDarkSteel> <---> <metaitem:ingotDarkSteel>
recipes.addShapeless(<gregtech:meta_ingot:24109>, [<gregtech:meta_ingot:32106>]);
<gregtech:meta_ingot:32106>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateDarkSteel> <---> <metaitem:plateDarkSteel>
recipes.addShapeless(<gregtech:meta_plate:24109>, [<gregtech:meta_plate:32106>]);
<gregtech:meta_plate:32106>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleDarkSteel> <---> <metaitem:plateDoubleDarkSteel>
recipes.addShapeless(<gregtech:meta_plate_double:24109>, [<gregtech:meta_plate_double:32106>]);
<gregtech:meta_plate_double:32106>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Rod
// <ore:stickDarkSteel> <---> <metaitem:stickDarkSteel>
recipes.addShapeless(<gregtech:meta_stick:24109>, [<gregtech:meta_stick:32106>]);
<gregtech:meta_stick:32106>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Long Rod
// <ore:stickLongDarkSteel> <---> <metaitem:stickLongDarkSteel>
recipes.addShapeless(<gregtech:meta_stick_long:24109>, [<gregtech:meta_stick_long:32106>]);
<gregtech:meta_stick_long:32106>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ring
// <ore:ringDarkSteel> <---> <metaitem:ringDarkSteel>
recipes.addShapeless(<gregtech:meta_ring:24109>, [<gregtech:meta_ring:32106>]);
<gregtech:meta_ring:32106>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Screw
// <ore:screwDarkSteel> <---> <metaitem:screwDarkSteel>
recipes.addShapeless(<gregtech:meta_screw:24109>, [<gregtech:meta_screw:32106>]);
<gregtech:meta_screw:32106>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Frame
// <ore:frameGtDarkSteel> <---> <metaitem:frameGtDarkSteel>
recipes.addShapeless(<gregtech:meta_block_frame_2006:10>, [<gregtech:meta_block_frame_1506:13>]);
<gregtech:meta_block_frame_1506:13>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Soularium
########################################
// Tiny Dust
// <ore:dustTinySoularium> <---> <metaitem:dustTinySoularium>
recipes.addShapeless(<gregtech:meta_dust_tiny:24110>, [<gregtech:meta_dust_tiny:32107>]);
<gregtech:meta_dust_tiny:32107>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallSoularium> <---> <metaitem:dustSmallSoularium>
recipes.addShapeless(<gregtech:meta_dust_small:24110>, [<gregtech:meta_dust_small:32107>]);
<gregtech:meta_dust_small:32107>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustSoularium> <---> <metaitem:dustSoularium>
recipes.addShapeless(<gregtech:meta_dust:24110>, [<gregtech:meta_dust:32107>]);
<gregtech:meta_dust:32107>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(480, [<metaitem:dustGold>, <metaitem:dustAsh>, <metaitem:dustSoulSand>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustGold>,
        <metaitem:dustAsh>,
        <metaitem:dustSoulSand>
    ])
    .outputs([<gregtech:meta_dust:24110> * 3])
    .duration(40)
    .EUt(480)
    .buildAndRegister();

// Nugget
// <ore:nuggetSoularium> <---> <metaitem:nuggetSoularium>
recipes.addShapeless(<gregtech:meta_nugget:24110>, [<gregtech:meta_nugget:32107>]);
<gregtech:meta_nugget:32107>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotSoularium> <---> <metaitem:ingotSoularium>
recipes.addShapeless(<gregtech:meta_ingot:24110>, [<gregtech:meta_ingot:32107>]);
<gregtech:meta_ingot:32107>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateSoularium> <---> <metaitem:plateSoularium>
recipes.addShapeless(<gregtech:meta_plate:24110>, [<gregtech:meta_plate:32107>]);
<gregtech:meta_plate:32107>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleSoularium> <---> <metaitem:plateDoubleSoularium>
recipes.addShapeless(<gregtech:meta_plate_double:24110>, [<gregtech:meta_plate_double:32107>]);
<gregtech:meta_plate_double:32107>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# End Steel
########################################
// Tiny Dust
// <ore:dustTinyEndSteel> <---> <metaitem:dustTinyEndSteel>
recipes.addShapeless(<gregtech:meta_dust_tiny:24111>, [<gregtech:meta_dust_tiny:32108>]);
<gregtech:meta_dust_tiny:32108>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallEndSteel> <---> <metaitem:dustSmallEndSteel>
recipes.addShapeless(<gregtech:meta_dust_small:24111>, [<gregtech:meta_dust_small:32108>]);
<gregtech:meta_dust_small:32108>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustEndSteel> <---> <metaitem:dustEndSteel>
recipes.addShapeless(<gregtech:meta_dust:24111>, [<gregtech:meta_dust:32108>]);
<gregtech:meta_dust:32108>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(1920, [<metaitem:dustEndstone>, <metaitem:dustDarkSteel>, <metaitem:dustObsidian>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustEndstone>,
        <ore:dustDarkSteel>,
        <metaitem:dustObsidian>
    ])
    .outputs([<gregtech:meta_dust:24111> * 3])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

// Nugget
// <ore:nuggetEndSteel> <---> <metaitem:nuggetEndSteel>
recipes.addShapeless(<gregtech:meta_nugget:24111>, [<gregtech:meta_nugget:32108>]);
<gregtech:meta_nugget:32108>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotEndSteel> <---> <metaitem:ingotEndSteel>
recipes.addShapeless(<gregtech:meta_ingot:24111>, [<gregtech:meta_ingot:32108>]);
<gregtech:meta_ingot:32108>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateEndSteel> <---> <metaitem:plateEndSteel>
recipes.addShapeless(<gregtech:meta_plate:24111>, [<gregtech:meta_plate:32108>]);
<gregtech:meta_plate:32108>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleEndSteel> <---> <metaitem:plateDoubleEndSteel>
recipes.addShapeless(<gregtech:meta_plate_double:24111>, [<gregtech:meta_plate_double:32108>]);
<gregtech:meta_plate_double:32108>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Rod
// <ore:stickEndSteel> <---> <metaitem:stickEndSteel>
recipes.addShapeless(<gregtech:meta_stick:24111>, [<gregtech:meta_stick:32108>]);
<gregtech:meta_stick:32108>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Long Rod
// <ore:stickLongEndSteel> <---> <metaitem:stickLongEndSteel>
recipes.addShapeless(<gregtech:meta_stick_long:24111>, [<gregtech:meta_stick_long:32108>]);
<gregtech:meta_stick_long:32108>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ring
// <ore:ringEndSteel> <---> <metaitem:ringEndSteel>
recipes.addShapeless(<gregtech:meta_ring:24111>, [<gregtech:meta_ring:32108>]);
<gregtech:meta_ring:32108>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Screw
// <ore:screwEndSteel> <---> <metaitem:screwEndSteel>
recipes.addShapeless(<gregtech:meta_screw:24111>, [<gregtech:meta_screw:32108>]);
<gregtech:meta_screw:32108>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Construction Alloy(Iron Alloy)
########################################
// Tiny Dust
// <ore:dustTinyConstructionAlloy> <---> <metaitem:dustTinyConstructionAlloy>
recipes.addShapeless(<gregtech:meta_dust_tiny:24112>, [<gregtech:meta_dust_tiny:32109>]);
<gregtech:meta_dust_tiny:32109>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallConstructionAlloy> <---> <metaitem:dustSmallConstructionAlloy>
recipes.addShapeless(<gregtech:meta_dust_small:24112>, [<gregtech:meta_dust_small:32109>]);
<gregtech:meta_dust_small:32109>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustConstructionAlloy> <---> <metaitem:dustConstructionAlloy>
recipes.addShapeless(<gregtech:meta_dust:24112>, [<gregtech:meta_dust:32109>]);
<gregtech:meta_dust:32109>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(1920, [<metaitem:dustPlatinum>, <metaitem:dustIron>, <metaitem:dustAluminium>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustPlatinum>,
        <metaitem:dustIron>,
        <metaitem:dustAluminium>
    ])
    .outputs([<gregtech:meta_dust:24112> * 3])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

// Nugget
// <ore:nuggetConstructionAlloy> <---> <metaitem:nuggetConstructionAlloy>
recipes.addShapeless(<gregtech:meta_nugget:24112>, [<gregtech:meta_nugget:32109>]);
<gregtech:meta_nugget:32109>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotConstructionAlloy> <---> <metaitem:ingotConstructionAlloy>
recipes.addShapeless(<gregtech:meta_ingot:24112>, [<gregtech:meta_ingot:32109>]);
<gregtech:meta_ingot:32109>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateConstructionAlloy> <---> <metaitem:plateConstructionAlloy>
recipes.addShapeless(<gregtech:meta_plate:24112>, [<gregtech:meta_plate:32109>]);
<gregtech:meta_plate:32109>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleConstructionAlloy> <---> <metaitem:plateDoubleConstructionAlloy>
recipes.addShapeless(<gregtech:meta_plate_double:24112>, [<gregtech:meta_plate_double:32109>]);
<gregtech:meta_plate_double:32109>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Crystalline Alloy
########################################
// Tiny Dust
// <ore:dustTinyCrystallineAlloy> <---> <metaitem:dustTinyCrystallineAlloy>
recipes.addShapeless(<gregtech:meta_dust_tiny:24113>, [<gregtech:meta_dust_tiny:32111>]);
<gregtech:meta_dust_tiny:32111>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallCrystallineAlloy> <---> <metaitem:dustSmallCrystallineAlloy>
recipes.addShapeless(<gregtech:meta_dust_small:24113>, [<gregtech:meta_dust_small:32111>]);
<gregtech:meta_dust_small:32111>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustCrystallineAlloy> <---> <metaitem:dustCrystallineAlloy>
recipes.addShapeless(<gregtech:meta_dust:24113>, [<gregtech:meta_dust:32111>]);
<gregtech:meta_dust:32111>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(1920, [<metaitem:dustVibrantAlloy>, <metaitem:dustEmerald>, <metaitem:dustPlatinum>, <metaitem:dustGold>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustGold>,
        <metaitem:dustPlatinum>,
        <metaitem:dustEmerald>,
        <ore:dustVibrantAlloy>
    ])
    .outputs([<gregtech:meta_dust:24113> * 4])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

// Nugget
// <ore:nuggetCrystallineAlloy> <---> <metaitem:nuggetCrystallineAlloy>
recipes.addShapeless(<gregtech:meta_nugget:24113>, [<gregtech:meta_nugget:32111>]);
<gregtech:meta_nugget:32111>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotCrystallineAlloy> <---> <metaitem:ingotCrystallineAlloy>
recipes.addShapeless(<gregtech:meta_ingot:24113>, [<gregtech:meta_ingot:32111>]);
<gregtech:meta_ingot:32111>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateCrystallineAlloy> <---> <metaitem:plateCrystallineAlloy>
recipes.addShapeless(<gregtech:meta_plate:24113>, [<gregtech:meta_plate:32111>]);
<gregtech:meta_plate:32111>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleCrystallineAlloy> <---> <metaitem:plateDoubleCrystallineAlloy>
recipes.addShapeless(<gregtech:meta_plate_double:24113>, [<gregtech:meta_plate_double:32111>]);
<gregtech:meta_plate_double:32111>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Melodic Alloy
########################################
// Tiny Dust
// <ore:dustTinyMelodicAlloy> <---> <metaitem:dustTinyMelodicAlloy>
recipes.addShapeless(<gregtech:meta_dust_tiny:24114>, [<gregtech:meta_dust_tiny:32112>]);
<gregtech:meta_dust_tiny:32112>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallMelodicAlloy> <---> <metaitem:dustSmallMelodicAlloy>
recipes.addShapeless(<gregtech:meta_dust_small:24114>, [<gregtech:meta_dust_small:32112>]);
<gregtech:meta_dust_small:32112>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustMelodicAlloy> <---> <metaitem:dustMelodicAlloy>
recipes.addShapeless(<gregtech:meta_dust:24114>, [<gregtech:meta_dust:32112>]);
<gregtech:meta_dust:32112>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(1920, [<metaitem:dustEndSteel>, <metaitem:dustChorusFruit>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <ore:dustEndSteel>,
        <metaitem:dustChorusFruit>
    ])
    .outputs([<gregtech:meta_dust:24114> * 2])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

// Nugget
// <ore:nuggetMelodicAlloy> <---> <metaitem:nuggetMelodicAlloy>
recipes.addShapeless(<gregtech:meta_nugget:24114>, [<gregtech:meta_nugget:32112>]);
<gregtech:meta_nugget:32112>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotMelodicAlloy> <---> <metaitem:ingotMelodicAlloy>
recipes.addShapeless(<gregtech:meta_ingot:24114>, [<gregtech:meta_ingot:32112>]);
<gregtech:meta_ingot:32112>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateMelodicAlloy> <---> <metaitem:plateMelodicAlloy>
recipes.addShapeless(<gregtech:meta_plate:24114>, [<gregtech:meta_plate:32112>]);
<gregtech:meta_plate:32112>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleMelodicAlloy> <---> <metaitem:plateDoubleMelodicAlloy>
recipes.addShapeless(<gregtech:meta_plate_double:24114>, [<gregtech:meta_plate_double:32112>]);
<gregtech:meta_plate_double:32112>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Stellar Alloy
########################################
// Tiny Dust
// <ore:dustTinyStellarAlloy> <---> <metaitem:dustTinyStellarAlloy>
recipes.addShapeless(<gregtech:meta_dust_tiny:24115>, [<gregtech:meta_dust_tiny:32113>]);
<gregtech:meta_dust_tiny:32113>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallStellarAlloy> <---> <metaitem:dustSmallStellarAlloy>
recipes.addShapeless(<gregtech:meta_dust_small:24115>, [<gregtech:meta_dust_small:32113>]);
<gregtech:meta_dust_small:32113>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustStellarAlloy> <---> <metaitem:dustStellarAlloy>
recipes.addShapeless(<gregtech:meta_dust:24115>, [<gregtech:meta_dust:32113>]);
<gregtech:meta_dust:32113>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(30720, [<metaitem:dustNetherStar>, <metaitem:dustMelodicAlloy>, <metaitem:dustClay>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustNetherStar>,
        <ore:dustMelodicAlloy>,
        <metaitem:dustClay>
    ])
    .outputs([<gregtech:meta_dust:24115> * 3])
    .duration(40)
    .EUt(30720)
    .buildAndRegister();

// Nugget
// <ore:nuggetStellarAlloy> <---> <metaitem:nuggetStellarAlloy>
recipes.addShapeless(<gregtech:meta_nugget:24115>, [<gregtech:meta_nugget:32113>]);
<gregtech:meta_nugget:32113>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotStellarAlloy> <---> <metaitem:ingotStellarAlloy>
recipes.addShapeless(<gregtech:meta_ingot:24115>, [<gregtech:meta_ingot:32113>]);
<gregtech:meta_ingot:32113>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateStellarAlloy> <---> <metaitem:plateStellarAlloy>
recipes.addShapeless(<gregtech:meta_plate:24115>, [<gregtech:meta_plate:32113>]);
<gregtech:meta_plate:32113>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleStellarAlloy> <---> <metaitem:plateDoubleStellarAlloy>
recipes.addShapeless(<gregtech:meta_plate_double:24115>, [<gregtech:meta_plate_double:32113>]);
<gregtech:meta_plate_double:32113>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Rod
// <ore:stickStellarAlloy> <---> <metaitem:stickStellarAlloy>
recipes.addShapeless(<gregtech:meta_stick:24115>, [<gregtech:meta_stick:32113>]);
<gregtech:meta_stick:32113>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Crystalline Pink Slime
########################################
// Tiny Dust
// <ore:dustTinyCrystallinePinkSlime> <---> <metaitem:dustTinyCrystallinePinkSlime>
recipes.addShapeless(<gregtech:meta_dust_tiny:24116>, [<gregtech:meta_dust_tiny:32114>]);
<gregtech:meta_dust_tiny:32114>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallCrystallinePinkSlime> <---> <metaitem:dustSmallCrystallinePinkSlime>
recipes.addShapeless(<gregtech:meta_dust_small:24116>, [<gregtech:meta_dust_small:32114>]);
<gregtech:meta_dust_small:32114>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustCrystallinePinkSlime> <---> <metaitem:dustCrystallinePinkSlime>
recipes.addShapeless(<gregtech:meta_dust:24116>, [<gregtech:meta_dust:32114>]);
<gregtech:meta_dust:32114>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(1920, [<metaitem:dustMelodicAlloy>, <metaitem:dustRawRubber> * 2], null).remove();
mixer.recipeBuilder()
    .inputs([
        <ore:dustMelodicAlloy>,
        <metaitem:dustRawRubber> * 2
    ])
    .outputs([<gregtech:meta_dust:24116> * 2])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

// Nugget
// <ore:nuggetCrystallinePinkSlime> <---> <metaitem:nuggetCrystallinePinkSlime>
recipes.addShapeless(<gregtech:meta_nugget:24116>, [<gregtech:meta_nugget:32114>]);
<gregtech:meta_nugget:32114>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotCrystallinePinkSlime> <---> <metaitem:ingotCrystallinePinkSlime>
recipes.addShapeless(<gregtech:meta_ingot:24116>, [<gregtech:meta_ingot:32114>]);
<gregtech:meta_ingot:32114>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateCrystallinePinkSlime> <---> <metaitem:plateCrystallinePinkSlime>
recipes.addShapeless(<gregtech:meta_plate:24116>, [<gregtech:meta_plate:32114>]);
<gregtech:meta_plate:32114>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleCrystallinePinkSlime> <---> <metaitem:plateDoubleCrystallinePinkSlime>
recipes.addShapeless(<gregtech:meta_plate_double:24116>, [<gregtech:meta_plate_double:32114>]);
<gregtech:meta_plate_double:32114>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Energetic Silver
########################################
// Tiny Dust
// <ore:dustTinyEnergeticSilver> <---> <metaitem:dustTinyEnergeticSilver>
recipes.addShapeless(<gregtech:meta_dust_tiny:24117>, [<gregtech:meta_dust_tiny:32115>]);
<gregtech:meta_dust_tiny:32115>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallEnergeticSilver> <---> <metaitem:dustSmallEnergeticSilver>
recipes.addShapeless(<gregtech:meta_dust_small:24117>, [<gregtech:meta_dust_small:32115>]);
<gregtech:meta_dust_small:32115>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustEnergeticSilver> <---> <metaitem:dustEnergeticSilver>
recipes.addShapeless(<gregtech:meta_dust:24117>, [<gregtech:meta_dust:32115>]);
<gregtech:meta_dust:32115>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(1920, [<metaitem:dustSilver>, <minecraft:redstone:0>, <minecraft:glowstone_dust:0>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustSilver>,
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
    ])
    .outputs([<gregtech:meta_dust:24117> * 3])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

// Nugget
// <ore:nuggetEnergeticSilver> <---> <metaitem:nuggetEnergeticSilver>
recipes.addShapeless(<gregtech:meta_nugget:24117>, [<gregtech:meta_nugget:32115>]);
<gregtech:meta_nugget:32115>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotEnergeticSilver> <---> <metaitem:ingotEnergeticSilver>
recipes.addShapeless(<gregtech:meta_ingot:24117>, [<gregtech:meta_ingot:32115>]);
<gregtech:meta_ingot:32115>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate
// <ore:plateEnergeticSilver> <---> <metaitem:plateEnergeticSilver>
recipes.addShapeless(<gregtech:meta_plate:24117>, [<gregtech:meta_plate:32115>]);
<gregtech:meta_plate:32115>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Plate Double
// <ore:plateDoubleEnergeticSilver> <---> <metaitem:plateDoubleEnergeticSilver>
recipes.addShapeless(<gregtech:meta_plate_double:24117>, [<gregtech:meta_plate_double:32115>]);
<gregtech:meta_plate_double:32115>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Vivid Alloy
########################################
// Tiny Dust
// <ore:dustTinyVividAlloy> <---> <metaitem:dustTinyVividAlloy>
recipes.addShapeless(<gregtech:meta_dust_tiny:24118>, [<gregtech:meta_dust_tiny:32116>]);
<gregtech:meta_dust_tiny:32116>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallVividAlloy> <---> <metaitem:dustSmallVividAlloy>
recipes.addShapeless(<gregtech:meta_dust_small:24118>, [<gregtech:meta_dust_small:32116>]);
<gregtech:meta_dust_small:32116>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustVividAlloy> <---> <metaitem:dustVividAlloy>
recipes.addShapeless(<gregtech:meta_dust:24118>, [<gregtech:meta_dust:32116>]);
<gregtech:meta_dust:32116>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(1920, [<metaitem:dustEnergeticSilver>, <metaitem:dustEnderPearl>], null).remove();
mixer.recipeBuilder()
    .inputs([
        <ore:dustEnergeticSilver>,
        <metaitem:dustEnderPearl>,
    ])
    .outputs([<gregtech:meta_dust:24118> * 2])
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

// Nugget
// <ore:nuggetVividAlloy> <---> <metaitem:nuggetVividAlloy>
recipes.addShapeless(<gregtech:meta_nugget:24118>, [<gregtech:meta_nugget:32116>]);
<gregtech:meta_nugget:32116>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Ingot
// <ore:ingotVividAlloy> <---> <metaitem:ingotVividAlloy>
recipes.addShapeless(<gregtech:meta_ingot:24118>, [<gregtech:meta_ingot:32116>]);
<gregtech:meta_ingot:32116>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Hot Ingot
// <ore:ingotHotVividAlloy> <---> <metaitem:ingotHotVividAlloy>
recipes.addShapeless(<gregtech:meta_ingot_hot:24118>, [<gregtech:meta_ingot_hot:32116>]);
<gregtech:meta_ingot_hot:32116>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));


########################################
# Fluix
########################################
// Tiny Dust
// <ore:dustTinyFluix> <---> <metaitem:dustTinyFluix>
recipes.addShapeless(<gregtech:meta_dust_tiny:24152>, [<gregtech:meta_dust_tiny:32117>]);
<gregtech:meta_dust_tiny:32117>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallFluix> <---> <metaitem:dustSmallFluix>
recipes.addShapeless(<gregtech:meta_dust_small:24152>, [<gregtech:meta_dust_small:32117>]);
<gregtech:meta_dust_small:32117>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustFluix> <---> <metaitem:dustFluix>
recipes.addShapeless(<gregtech:meta_dust:24152>, [<gregtech:meta_dust:32117>]);
<gregtech:meta_dust:32117>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
mixer.findRecipe(480, [<metaitem:dustChargedCertusQuartz>, <minecraft:redstone:0>, <metaitem:dustNetherQuartz>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
mixer.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:dustChargedCertusQuartz>,
        <minecraft:redstone>,
        <metaitem:dustNetherQuartz>
    ])
    .outputs([<gregtech:meta_dust:24152> * 3])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

// Plate
// <ore:plateFluix> <---> <metaitem:plateFluix>
recipes.addShapeless(<gregtech:meta_plate:24152>, [<gregtech:meta_plate:32117>]);
<gregtech:meta_plate:32117>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Lens
// <ore:lensFluix> <---> <metaitem:lensFluix>
recipes.addShapeless(<gregtech:meta_lens:24152>, [<gregtech:meta_lens:32117>]);
<gregtech:meta_lens:32117>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
lathe.recipeBuilder()
    .inputs([<ore:plateFluix>])
    .outputs([<gregtech:meta_lens:24152>, <gregtech:meta_dust_small:24152>])
    .duration(600)
    .EUt(120)
    .buildAndRegister();


########################################
# Charged Certus Quartz
########################################
// Tiny Dust
// <ore:dustTinyChargedCertusQuartz> <---> <metaitem:dustTinyChargedCertusQuartz>
recipes.addShapeless(<gregtech:meta_dust_tiny:24151>, [<gregtech:meta_dust_tiny:32118>]);
<gregtech:meta_dust_tiny:32118>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Small Dust
// <ore:dustSmallChargedCertusQuartz> <---> <metaitem:dustSmallChargedCertusQuartz>
recipes.addShapeless(<gregtech:meta_dust_small:24151>, [<gregtech:meta_dust_small:32118>]);
<gregtech:meta_dust_small:32118>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Dust
// <ore:dustChargedCertusQuartz> <---> <metaitem:dustChargedCertusQuartz>
recipes.addShapeless(<gregtech:meta_dust:24151>, [<gregtech:meta_dust:32118>]);
<gregtech:meta_dust:32118>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
electrolyzer.recipeBuilder()
    .inputs([<ore:dustChargedCertusQuartz>])
    .outputs([<gregtech:meta_dust:24151>])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:material:1>])
    .outputs([<gregtech:meta_dust:24151>])
    .duration(20)
    .EUt(2)
    .buildAndRegister();

// Plate
// <ore:plateChargedCertusQuartz> <---> <metaitem:plateChargedCertusQuartz>
recipes.addShapeless(<gregtech:meta_plate:24151>, [<gregtech:meta_plate:32118>]);
<gregtech:meta_plate:32118>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

// Lens
// <ore:lensChargedCertusQuartz> <---> <metaitem:lensChargedCertusQuartz>
recipes.addShapeless(<gregtech:meta_lens:24151>, [<gregtech:meta_lens:32118>]);
<gregtech:meta_lens:32118>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
lathe.recipeBuilder()
    .inputs([<ore:plateChargedCertusQuartz>])
    .outputs([
        <gregtech:meta_lens:24151>,
        <gregtech:meta_dust_small:24151>
    ])
    .duration(600)
    .EUt(120)
    .buildAndRegister();
