# Imports
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.gtexpert.I18n;

JEI.hideCategory("appliedenergistics2.grinder");
JEI.hideCategory("appliedenergistics2.inscriber");

<appliedenergistics2:part:469>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_conduit.tooltip.1")));
<appliedenergistics2:part:463>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_bucket.tooltip.1")));
<appliedenergistics2:part:470>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_gtceu.tooltip.1")));
<appliedenergistics2:part:462>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_chest.tooltip.1")));
<appliedenergistics2:part:467>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_torch.tooltip.1")));
<appliedenergistics2:part:461>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_redstone.tooltip.1")));
<appliedenergistics2:part:460>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_me.tooltip.1")));
<nae2:part:1>.addTooltip(format.green(I18n.format("modpack.nae2.p2p_interface.tooltip.1")));

val ae2 as IMod = loadedMods["appliedenergistics2"];
if (!isNull(ae2)) {
    val ae2Items as IItemStack[] = ae2.items;

    for item in ae2Items {
        if (item.displayName has "Cable Facade") {
            JEI.hide(item); 
        }
        if (item.displayName has "Paint Ball") {
            JEI.removeAndHide(item); 
        }
    }
}



########################################
# Items
########################################
# Certus Quartz Dust
<ore:dustCertusQuartz>.remove(<appliedenergistics2:material:2>);
JEI.hide(<appliedenergistics2:material:2>);

# Nether Quartz Dust
<ore:dustNetherQuartz>.remove(<appliedenergistics2:material:3>);
<ore:dustQuartz>.remove(<appliedenergistics2:material:3>);
JEI.hide(<appliedenergistics2:material:3>);

# Fluix Dust
<ore:dustFluix>.remove(<appliedenergistics2:material:8>);
JEI.hide(<appliedenergistics2:material:8>);

# Ender Dust
<ore:dustEnder>.remove(<appliedenergistics2:material:46>);
<ore:dustEnderPearl>.remove(<appliedenergistics2:material:46>);
JEI.hide(<appliedenergistics2:material:46>);

# Iron Dust
<ore:dustIron>.remove(<appliedenergistics2:material:49>);
JEI.hide(<appliedenergistics2:material:49>);

# Gold Dust
<ore:dustGold>.remove(<appliedenergistics2:material:51>);
JEI.hide(<appliedenergistics2:material:51>);

# Wooden Gear
JEI.removeAndHide(<appliedenergistics2:material:40>);
<ore:gearWood>.remove(<appliedenergistics2:material:40>);

# Network Tool
recipes.remove(<appliedenergistics2:network_tool>);
recipes.addShapeless(<appliedenergistics2:network_tool>, [
    <ore:wrench>, <appliedenergistics2:material:23>,
    <minecraft:chest>, <ore:itemIlluminatedPanel>
]);

# View Cell
recipes.remove(<appliedenergistics2:view_cell>);
recipes.addShaped(<appliedenergistics2:view_cell>, [
    [<metaitem:plateGlass>, <metaitem:plateRedAlloy>, <metaitem:plateGlass>],
    [<metaitem:plateRedAlloy>, <ore:crystalCertusQuartz>, <metaitem:plateRedAlloy>],
    [<metaitem:plateAluminium>, <metaitem:plateAluminium>, <metaitem:plateAluminium>]
]);

# Blank Pattern
recipes.remove(<appliedenergistics2:material:52>);
recipes.addShaped(<appliedenergistics2:material:52>, [
    [<appliedenergistics2:quartz_glass>, <metaitem:plateGlowstone>, <appliedenergistics2:quartz_glass>],
    [<metaitem:plateGlowstone>, <ore:crystalCertusQuartz>, <metaitem:plateGlowstone>],
    [<metaitem:plateAluminium>, <metaitem:plateAluminium>, <metaitem:plateAluminium>]
]);
recipes.addShaped(<appliedenergistics2:material:52> * 2, [
    [<appliedenergistics2:quartz_glass>, <metaitem:plateGlowstone>, <appliedenergistics2:quartz_glass>],
    [<metaitem:plateGlowstone>, <ore:crystalPureCertusQuartz>, <metaitem:plateGlowstone>],
    [<metaitem:plateAluminium>, <metaitem:plateAluminium>, <metaitem:plateAluminium>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <appliedenergistics2:quartz_glass>,
        <metaitem:plateGlowstone> * 2,
        <metaitem:plateAluminium> * 2,
        <ore:craftCertusQuartz>
    ])
    .outputs([<appliedenergistics2:material:52> * 4])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# Creative Storage Cell
JEI.hide(<appliedenergistics2:creative_storage_cell>);

# 1k Storage Component
recipes.remove(<appliedenergistics2:material:35>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUlv> * 4,
        <metaitem:plateWroughtIron> * 4,
        <metaitem:dustCertusQuartz> * 4,
        <appliedenergistics2:material:22>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:35>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# 4k Storage Component
recipes.remove(<appliedenergistics2:material:36>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitEv> * 4,
        <metaitem:plateTitanium> * 4,
        <metaitem:dustCertusQuartz> * 4,
        <appliedenergistics2:material:22>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:36>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:22>,
        <ore:circuitEv> * 4,
        <appliedenergistics2:material:35> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:36>])
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

# 16k Storage Component
recipes.remove(<appliedenergistics2:material:37>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitIv> * 4,
        <metaitem:plateTungstenSteel> * 4,
        <metaitem:dustCertusQuartz> * 8,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:37>])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitIv> * 4,
        <appliedenergistics2:material:36> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:37>])
    .duration(400)
    .EUt(7680)
    .buildAndRegister();

# 64k Storage Component
recipes.remove(<appliedenergistics2:material:38>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitLuv> * 4,
        <metaitem:plateRhodiumPlatedPalladium> * 4,
        <metaitem:dustCertusQuartz> * 8,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:38>])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitLuv> * 4,
        <appliedenergistics2:material:37> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:38>])
    .duration(400)
    .EUt(30720)
    .buildAndRegister();

# 1k Fluid Component
recipes.remove(<appliedenergistics2:material:54>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUlv> * 4,
        <metaitem:plateWroughtIron> * 4,
        <metaitem:dustNetherQuartz> * 4,
        <appliedenergistics2:material:22>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:54>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# 4k Fluid Component
recipes.remove(<appliedenergistics2:material:55>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitEv> * 4,
        <metaitem:plateTitanium> * 4,
        <metaitem:dustNetherQuartz> * 4,
        <appliedenergistics2:material:22>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:55>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:22>,
        <ore:circuitEv> * 4,
        <appliedenergistics2:material:54> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:55>])
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

# 16k Fluid Component
recipes.remove(<appliedenergistics2:material:56>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitIv> * 4,
        <metaitem:plateTungstenSteel> * 4,
        <metaitem:dustNetherQuartz> * 8,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:56>])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitIv> * 4,
        <appliedenergistics2:material:55> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:56>])
    .duration(400)
    .EUt(7680)
    .buildAndRegister();

# 64k Fluid Component
recipes.remove(<appliedenergistics2:material:57>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitLuv> * 4,
        <metaitem:plateRhodiumPlatedPalladium> * 4,
        <metaitem:dustNetherQuartz> * 8,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:57>])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitLuv> * 4,
        <appliedenergistics2:material:56> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:57>])
    .duration(400)
    .EUt(30720)
    .buildAndRegister();

# 2³ Spatial Component
recipes.remove(<appliedenergistics2:material:32>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitEv> * 4,
        <metaitem:plateTitanium> * 4,
        <metaitem:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:hsla_steel> * 144)
    .outputs([<appliedenergistics2:material:32>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();

# 16³ Spatial Component
recipes.remove(<appliedenergistics2:material:33>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitIv> * 4,
        <metaitem:plateTungstenSteel> * 4,
        <metaitem:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:33>])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitIv> * 4,
        <appliedenergistics2:material:32> * 4
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:33>])
    .duration(400)
    .EUt(7680)
    .buildAndRegister();

# 128³ Spatial Component
recipes.remove(<appliedenergistics2:material:34>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitLuv> * 4,
        <metaitem:plateRhodiumPlatedPalladium> * 4,
        <metaitem:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:34>])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitLuv> * 4,
        <appliedenergistics2:material:33> * 4
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:34>])
    .duration(400)
    .EUt(30720)
    .buildAndRegister();

# Entropy Manipulator
recipes.remove(<appliedenergistics2:entropy_manipulator>);
recipes.addShaped(<appliedenergistics2:entropy_manipulator>, [
    [null, <appliedenergistics2:material:22>, <ore:crystalFluix>],
    [null, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:24>],
    [<metaitem:stickSteel>, null, null]
]);

# Charged Staff
recipes.remove(<appliedenergistics2:charged_staff>);
recipes.addShaped(<appliedenergistics2:charged_staff>, [
    [null, <appliedenergistics2:material:1>, <appliedenergistics2:material:1>],
    [null, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:1>],
    [<metaitem:stickSteel>, null, null]
]);

# Matter Cannon
recipes.remove(<appliedenergistics2:matter_cannon>);
recipes.addShaped(<appliedenergistics2:matter_cannon>, [
    [<metaitem:plateSteel>, <metaitem:plateSteel>, <appliedenergistics2:material:43>],
    [<appliedenergistics2:material:36>, <appliedenergistics2:dense_energy_cell>, null],
    [<metaitem:plateSteel>, null, null]
]);

# Color Applicator
JEI.removeAndHide(<appliedenergistics2:color_applicator>);

# Wireless Terminal
recipes.remove(<appliedenergistics2:wireless_terminal>);
recipes.addShaped(<appliedenergistics2:wireless_terminal>, [
    [<appliedenergistics2:material:41>, <appliedenergistics2:part:380>, <appliedenergistics2:material:41>],
    [<appliedenergistics2:material:24>, <gtexpert:meta_item_1:1>, <appliedenergistics2:material:24>],
    [<metaitem:plateNetherQuartz>, <appliedenergistics2:dense_energy_cell>, <metaitem:plateNetherQuartz>]
]);

# Wireless Crafting Terminal
recipes.remove(<appliedenergistics2:wireless_crafting_terminal>);
recipes.addShapeless(<appliedenergistics2:wireless_crafting_terminal>, [<wct:wct>]);
recipes.addShaped(<appliedenergistics2:wireless_crafting_terminal>, [
    [<appliedenergistics2:material:41>, <appliedenergistics2:part:360>, <appliedenergistics2:material:41>],
    [<appliedenergistics2:material:24>, <gtexpert:meta_item_1:1>, <appliedenergistics2:material:24>],
    [<metaitem:plateNetherQuartz>, <appliedenergistics2:dense_energy_cell>, <metaitem:plateNetherQuartz>]
]);

# Wireless Fluid Terminal
recipes.remove(<appliedenergistics2:wireless_fluid_terminal>);
recipes.addShapeless(<appliedenergistics2:wireless_fluid_terminal>, [<wft:wft>]);
recipes.addShaped(<appliedenergistics2:wireless_fluid_terminal>, [
    [<appliedenergistics2:material:41>, <appliedenergistics2:part:520>, <appliedenergistics2:material:41>],
    [<appliedenergistics2:material:24>, <gtexpert:meta_item_1:1>, <appliedenergistics2:material:24>],
    [<metaitem:plateNetherQuartz>, <appliedenergistics2:dense_energy_cell>, <metaitem:plateNetherQuartz>]
]);

# Wireless Pattern Terminal
recipes.remove(<appliedenergistics2:wireless_pattern_terminal>);
recipes.addShapeless(<appliedenergistics2:wireless_pattern_terminal>, [<wpt:wpt>]);
recipes.addShaped(<appliedenergistics2:wireless_pattern_terminal>, [
    [<appliedenergistics2:material:41>, <appliedenergistics2:part:340>, <appliedenergistics2:material:41>],
    [<appliedenergistics2:material:24>, <gtexpert:meta_item_1:1>, <appliedenergistics2:material:24>],
    [<metaitem:plateNetherQuartz>, <appliedenergistics2:dense_energy_cell>, <metaitem:plateNetherQuartz>]
]);

# Wireless Interface Terminal
recipes.remove(<appliedenergistics2:wireless_interface_terminal>);
recipes.addShapeless(<appliedenergistics2:wireless_interface_terminal>, [<wit:wit>]);
recipes.addShaped(<appliedenergistics2:wireless_interface_terminal>, [
    [<appliedenergistics2:material:41>, <appliedenergistics2:part:480>, <appliedenergistics2:material:41>],
    [<appliedenergistics2:material:24>, <gtexpert:meta_item_1:1>, <appliedenergistics2:material:24>],
    [<metaitem:plateNetherQuartz>, <appliedenergistics2:dense_energy_cell>, <metaitem:plateNetherQuartz>]
]);

# Wireless Universal Terminal
recipes.addShapeless(<ae2wut:wireless_universal_terminal>, [<ae2wtlib:wut>]);
recipes.removeByRecipeName("ae2wut:wireless_universal_terminal");

# Biometric Card
recipes.remove(<appliedenergistics2:biometric_card>);
recipes.addShaped(<appliedenergistics2:biometric_card>, [
    [<appliedenergistics2:material:22>, <metaitem:plateIron>, <metaitem:plateIron>],
    [<metaitem:plateGold>, <metaitem:plateRedAlloy>, <metaitem:plateGold>],
    [null, null, null]
]);

# Memory Card
recipes.remove(<appliedenergistics2:memory_card>);
recipes.addShaped(<appliedenergistics2:memory_card>, [
    [<appliedenergistics2:material:23>, <metaitem:plateIron>, <metaitem:plateIron>],
    [<metaitem:plateGold>, <metaitem:plateRedAlloy>, <metaitem:plateGold>],
    [null, null, null]
]);

# Basic Card
recipes.remove(<appliedenergistics2:material:25>);
recipes.addShaped(<appliedenergistics2:material:25>, [
    [<metaitem:plateGold>, <metaitem:plateAluminium>, null],
    [<metaitem:plateRedAlloy>, <appliedenergistics2:material:23>, <metaitem:plateAluminium>],
    [<metaitem:plateGold>, <metaitem:plateAluminium>, null]
]);

# Capacity Card
recipes.remove(<appliedenergistics2:material:27>);
recipes.addShaped(<appliedenergistics2:material:27>, [
    [<appliedenergistics2:material:25>, <appliedenergistics2:material:35>, null],
    [<appliedenergistics2:material:35>, <ore:gemCertusQuartz>, null],
    [null, null, null]
]);

# Crafting Card
recipes.remove(<appliedenergistics2:material:53>);
recipes.addShaped(<appliedenergistics2:material:53>, [
    [<appliedenergistics2:material:25>, <appliedenergistics2:material:35>, null],
    [<appliedenergistics2:material:35>, <minecraft:crafting_table>, null],
    [null, null, null]
]);

# Redstone Card
recipes.remove(<appliedenergistics2:material:26>);
recipes.addShaped(<appliedenergistics2:material:26>, [
    [<appliedenergistics2:material:25>, <minecraft:redstone_torch>, null],
    [<minecraft:redstone_torch>, <appliedenergistics2:material:23>, null],
    [null, null, null]
]);

# Advanced Card
recipes.remove(<appliedenergistics2:material:28>);
recipes.addShaped(<appliedenergistics2:material:28>, [
    [<metaitem:platePlatinum>, <metaitem:plateAluminium>, null],
    [<metaitem:plateRedAlloy>, <appliedenergistics2:material:23>, <metaitem:plateAluminium>],
    [<metaitem:platePlatinum>, <metaitem:plateAluminium>, null]
]);

# Fuzzy Card
recipes.remove(<appliedenergistics2:material:29>);
recipes.addShaped(<appliedenergistics2:material:29>, [
    [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, null],
    [<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, null],
    [null, null, null]
]);

# Inverter Card
recipes.remove(<appliedenergistics2:material:31>);
recipes.addShaped(<appliedenergistics2:material:31>, [
    [<appliedenergistics2:material:28>, <metaitem:cover.activity.detector>, null],
    [<metaitem:cover.activity.detector>, <appliedenergistics2:material:23>, null],
    [null, null, null]
]);

# Pattern Expansion Card
recipes.remove(<appliedenergistics2:material:58>);
recipes.addShapeless(<appliedenergistics2:material:58>, [
    <appliedenergistics2:material:28>, <ore:craftInterfaceDual>, <appliedenergistics2:material:23>,
]);
recipes.addShapeless(<appliedenergistics2:material:58>, [
    <appliedenergistics2:material:28>, <ore:craftInterfaceItem>, 
    <ore:craftInterfaceFluid>, <appliedenergistics2:material:23>,
]);

# Acceleration Card
recipes.remove(<appliedenergistics2:material:30>);
recipes.addShaped(<appliedenergistics2:material:30>, [
    [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, null],
    [<appliedenergistics2:material:22>, <ore:craftFluix>, null],
    [null, null, null]
]);

# Quantum Link Card
recipes.remove(<appliedenergistics2:material:59>);
recipes.addShapeless(<appliedenergistics2:material:59>, [<ae2wtlib:infinity_booster_card>]);
recipes.addShaped(<appliedenergistics2:material:59>, [
    [<appliedenergistics2:material:42>, <metaitem:cover.digital.wireless>, <appliedenergistics2:material:42>],
    [<appliedenergistics2:material:47>, <appliedenergistics2:material:28>, <appliedenergistics2:material:47>],
    [<appliedenergistics2:material:42>, <metaitem:sensor.ev>, <appliedenergistics2:material:42>]
]);

# Magnet Card
recipes.addShapeless(<appliedenergistics2:material:60>, [<wct:magnet_card>]);
recipes.addShaped(<appliedenergistics2:material:60>, [
    [<metaitem:plateRedstone>, <appliedenergistics2:part:300>, <metaitem:plateLapis>],
    [<metaitem:stickNeodymiumMagnetic>, <appliedenergistics2:material:28>, <metaitem:stickNeodymiumMagnetic>],
    [<metaitem:stickNeodymiumMagnetic>, null, <metaitem:stickNeodymiumMagnetic>]
]);

# Wireless Receiver
recipes.remove(<appliedenergistics2:material:41>);
recipes.addShaped(<appliedenergistics2:material:41>, [
    [<ore:craftGlassCable>, <appliedenergistics2:material:9>, <ore:craftGlassCable>],
    [<metaitem:sensor.ev>, <metaitem:stickTitanium>, <metaitem:sensor.ev>],
    [<metaitem:plateCertusQuartz>, <ore:circuitEv>, <metaitem:plateCertusQuartz>]
]);

# Wireless Boosting
recipes.remove(<appliedenergistics2:material:42>);
recipes.addShaped(<appliedenergistics2:material:42>, [
    [<metaitem:dustFluix>, <ore:crystalCertusQuartz>, <metaitem:plateEnderPearl>],
    [<metaitem:plateTitanium>, <metaitem:plateTitanium>, <metaitem:plateTitanium>],
    [null, null, null]
]);

# Annihilation Plane
recipes.remove(<appliedenergistics2:part:300>);
recipes.addShaped(<appliedenergistics2:part:300>, [
    [<ore:craftingToolScrewdriver>, <metaitem:dustFluix>, <ore:craftingToolSoftHammer>],
    [<metaitem:screwSteel>, <metaitem:dustFluix>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:44>, <metaitem:plateSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:300>, [
    [<ore:craftingToolSoftHammer>, <metaitem:dustFluix>, <ore:craftingToolScrewdriver>],
    [<metaitem:screwSteel>, <metaitem:dustFluix>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:44>, <metaitem:plateSteel>]
]);

# Fulid Annihilation Plane
recipes.remove(<appliedenergistics2:part:302>);
recipes.addShaped(<appliedenergistics2:part:302>, [
    [<ore:craftingToolScrewdriver>, <metaitem:dustLapis>, <ore:craftingToolSoftHammer>],
    [<metaitem:screwStainlessSteel>, <metaitem:dustLapis>, <metaitem:screwSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:44>, <metaitem:plateStainlessSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:302>, [
    [<ore:craftingToolSoftHammer>, <ore:gemLapis>, <ore:craftingToolScrewdriver>],
    [<metaitem:screwStainlessSteel>, <ore:gemLapis>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:44>, <metaitem:plateStainlessSteel>]
]);

# Formation Plane
recipes.remove(<appliedenergistics2:part:320>);
recipes.addShaped(<appliedenergistics2:part:320>, [
    [<ore:craftingToolScrewdriver>, <metaitem:dustFluix>, <ore:craftingToolSoftHammer>],
    [<metaitem:screwSteel>, <metaitem:dustFluix>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:43>, <metaitem:plateSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:320>, [
    [<ore:craftingToolSoftHammer>, <metaitem:dustFluix>, <ore:craftingToolScrewdriver>],
    [<metaitem:screwSteel>, <metaitem:dustFluix>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:43>, <metaitem:plateSteel>]
]);

# Fulid Formation Plane
recipes.remove(<appliedenergistics2:part:321>);
recipes.addShaped(<appliedenergistics2:part:302>, [
    [<ore:craftingToolScrewdriver>, <metaitem:dustLapis>, <ore:craftingToolSoftHammer>],
    [<metaitem:screwStainlessSteel>, <metaitem:dustLapis>, <metaitem:screwSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:43>, <metaitem:plateStainlessSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:302>, [
    [<ore:craftingToolSoftHammer>, <ore:gemLapis>, <ore:craftingToolScrewdriver>],
    [<metaitem:screwStainlessSteel>, <ore:gemLapis>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:43>, <metaitem:plateStainlessSteel>]
]);

# Certus Quartz Crystal
JEI.removeAndHide(<appliedenergistics2:material>);



########################################
# Blocks
########################################
# Cable Anchor
val anchorIngots_x4 as IItemStack[] = [
    <minecraft:iron_ingot>,
    <metaitem:ingotCopper>,
    <metaitem:ingotAnnealedCopper>,
    <metaitem:ingotTin>,
    <metaitem:ingotLead>,
    <metaitem:ingotNickel>,
    <metaitem:ingotSilver>,
    <metaitem:ingotSteel>
];
val anchorIngots_x6 as IItemStack[] = [
    <metaitem:ingotBronze>,
    <metaitem:ingotBrass>,
    <metaitem:ingotInvar>,
    <metaitem:ingotDarkSteel>
];
val anchorIngots_x8 as IItemStack[] = [
    <metaitem:ingotStainlessSteel>,
    <metaitem:ingotTitanium>
];
for anchorIngot_x4 in anchorIngots_x4 {
    recipes.addShapeless(<appliedenergistics2:part:120> * 4, [anchorIngot_x4, <ore:craftingToolKnife>]);
    cutter.recipeBuilder()
        .inputs([anchorIngot_x4])
        .fluidInputs([<liquid:lubricant> * 1])
        .outputs([<appliedenergistics2:part:120> * 8])
        .duration(80)
        .EUt(480)
        .buildAndRegister();
    cutter.recipeBuilder()
        .inputs([anchorIngot_x4])
        .fluidInputs([<liquid:distilled_water> * 3])
        .outputs([<appliedenergistics2:part:120> * 8])
        .duration(160)
        .EUt(480)
        .buildAndRegister();
    cutter.recipeBuilder()
        .inputs([anchorIngot_x4])
        .fluidInputs([<liquid:water> * 4])
        .outputs([<appliedenergistics2:part:120> * 8])
        .duration(200)
        .EUt(480)
        .buildAndRegister();
}
for anchorIngot_x6 in anchorIngots_x6 {
    recipes.addShapeless(<appliedenergistics2:part:120> * 6, [anchorIngot_x6, <ore:craftingToolKnife>]);
    cutter.recipeBuilder()
        .inputs([anchorIngot_x6])
        .fluidInputs([<liquid:lubricant> * 1])
        .outputs([<appliedenergistics2:part:120> * 12])
        .duration(80)
        .EUt(480)
        .buildAndRegister();
    cutter.recipeBuilder()
        .inputs([anchorIngot_x6])
        .fluidInputs([<liquid:distilled_water> * 3])
        .outputs([<appliedenergistics2:part:120> * 12])
        .duration(160)
        .EUt(480)
        .buildAndRegister();
    cutter.recipeBuilder()
        .inputs([anchorIngot_x6])
        .fluidInputs([<liquid:water> * 4])
        .outputs([<appliedenergistics2:part:120> * 12])
        .duration(200)
        .EUt(480)
        .buildAndRegister();
}
for anchorIngot_x8 in anchorIngots_x8 {
    recipes.addShapeless(<appliedenergistics2:part:120> * 8, [anchorIngot_x8, <ore:craftingToolKnife>]);
    cutter.recipeBuilder()
        .inputs([anchorIngot_x8])
        .fluidInputs([<liquid:lubricant> * 1])
        .outputs([<appliedenergistics2:part:120> * 16])
        .duration(80)
        .EUt(480)
        .buildAndRegister();
    cutter.recipeBuilder()
        .inputs([anchorIngot_x8])
        .fluidInputs([<liquid:distilled_water> * 3])
        .outputs([<appliedenergistics2:part:120> * 16])
        .duration(160)
        .EUt(480)
        .buildAndRegister();
    cutter.recipeBuilder()
        .inputs([anchorIngot_x8])
        .fluidInputs([<liquid:water> * 4])
        .outputs([<appliedenergistics2:part:120> * 16])
        .duration(200)
        .EUt(480)
        .buildAndRegister();
}

# ME Controller
recipes.remove(<appliedenergistics2:controller>);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24> * 2,
        <ore:circuitHv> * 2,
        <metaitem:plateBlackSteel> * 4,
        <appliedenergistics2:fluix_block>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:controller>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Quartz Glass
recipes.remove(<appliedenergistics2:quartz_glass>);
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:blockGlass>,
        <metaitem:dustCertusQuartz>
    ])
    .outputs([<appliedenergistics2:quartz_glass>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:blockGlass>,
        <metaitem:dustQuartzite>
    ])
    .outputs([<appliedenergistics2:quartz_glass>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Vibrant Quartz Glass
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
alloy_smelter.recipeBuilder()
    .inputs([
        <appliedenergistics2:quartz_glass>,
        <minecraft:glowstone_dust> * 8
    ])
    .outputs([<appliedenergistics2:quartz_vibrant_glass>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
alloy_smelter.recipeBuilder()
    .inputs([
        <minecraft:glowstone>,
        <metaitem:dustAluminium> * 8
    ])
    .outputs([<appliedenergistics2:quartz_vibrant_glass>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Quartz Fixture
recipes.remove(<appliedenergistics2:quartz_fixture>);
recipes.addShapeless(<appliedenergistics2:quartz_fixture>, [
    <ore:gemCertusQuartz>, <metaitem:stickAluminium>
]);

# Charger
JEI.removeAndHide(<appliedenergistics2:charger>);

# Security Terminal
recipes.remove(<appliedenergistics2:security_station>);
recipes.addShaped(<appliedenergistics2:security_station>, [
    [<metaitem:plateSteel>, <ore:chestWood>, <metaitem:plateSteel>],
    [<ore:craftGlassCable>, <appliedenergistics2:material:35>, <ore:craftGlassCable>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:22>, <metaitem:plateSteel>]
]);

# Quantum Ring
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.addShaped(<appliedenergistics2:quantum_ring>, [
    [<metaitem:plateTitanium>, <appliedenergistics2:material:22>, <metaitem:plateTitanium>],
    [<gtexpert:meta_item_1:1>, <metaitem:emitter.ev>, <ore:craftGlassCable>],
    [<metaitem:plateTitanium>, <appliedenergistics2:material:22>, <metaitem:plateTitanium>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <appliedenergistics2:material:22>,
        <ore:craftGlassCable>,
        <gtexpert:meta_item_1:1>,
        <metaitem:emitter.ev>,
        <metaitem:plateTitanium> * 2
    ])
    .outputs([<appliedenergistics2:quantum_ring>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Quantum Link
recipes.remove(<appliedenergistics2:quantum_link>);
recipes.addShaped(<appliedenergistics2:quantum_link>, [
    [<metaitem:plateGlass>, <ore:pearlFluix>, <metaitem:plateGlass>],
    [<ore:pearlFluix>, <metaitem:field.generator.ev>, <ore:pearlFluix>],
    [<metaitem:plateGlass>, <ore:pearlFluix>, <metaitem:plateGlass>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:field.generator.ev>,
        <ore:pearlFluix> * 2,
        <metaitem:plateGlass> * 2
    ])
    .outputs([<appliedenergistics2:quantum_link>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Spatial Pylon
recipes.remove(<appliedenergistics2:spatial_pylon>);
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [
    [<metaitem:plateGlass>, <ore:craftGlassCable>, <metaitem:plateGlass>],
    [<metaitem:dustFluix>, <ore:crystalFluix>, <metaitem:dustFluix>],
    [<metaitem:plateGlass>, <ore:craftGlassCable>, <metaitem:plateGlass>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:plateGlass> * 2,
        <ore:craftGlassCable> * 2,
        <metaitem:dustFluix>,
        <ore:crystalFluix>
    ])
    .outputs([<appliedenergistics2:spatial_pylon>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# ME IO Port
recipes.remove(<appliedenergistics2:io_port>);
recipes.addShaped(<appliedenergistics2:io_port>, [
    [<metaitem:plateGlass>, <metaitem:plateGlass>, <metaitem:plateGlass>],
    [<ore:craftGlassCable>, <appliedenergistics2:drive>, <ore:craftGlassCable>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:24>, <metaitem:plateSteel>]
]);

# ME Spatial IO Port
recipes.remove(<appliedenergistics2:spatial_io_port>);
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [
    [<metaitem:plateGlass>, <metaitem:plateGlass>, <metaitem:plateGlass>],
    [<ore:craftGlassCable>, <appliedenergistics2:drive>, <ore:craftGlassCable>],
    [<metaitem:plateSteel>, <gtexpert:meta_item_1:1>, <metaitem:plateSteel>]
]);

# ME Chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [
    [<metaitem:plateSteel>, <appliedenergistics2:part:380>, <metaitem:plateSteel>],
    [<ore:craftGlassCable>, <ore:chestWood>, <ore:craftGlassCable>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:22>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <appliedenergistics2:part:380>,
        <appliedenergistics2:material:22>,
        <ore:chestWood>,
        <ore:craftGlassCable>,
        <metaitem:plateSteel> * 2
    ])
    .outputs([<appliedenergistics2:chest>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [
    [<metaitem:plateBlackSteel>, <gtexpert:meta_item_1:1>, <metaitem:plateBlackSteel>],
    [<ore:craftGlassCable>, <appliedenergistics2:chest>, <ore:craftGlassCable>],
    [<metaitem:plateBlackSteel>, <appliedenergistics2:material:24>, <metaitem:plateBlackSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <appliedenergistics2:material:24>,
        <gtexpert:meta_item_1:1>,
        <appliedenergistics2:chest>,
        <ore:craftGlassCable>,
        <metaitem:plateBlackSteel> * 2
    ])
    .outputs([<appliedenergistics2:drive>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# ME Interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/interfaces_interface");
recipes.addShaped(<appliedenergistics2:interface>, [
    [<metaitem:plateSteel>, <metaitem:plateGlass>, <metaitem:plateSteel>],
    [<gtexpert:meta_item_1:1>, <gregtech:machine_casing:3>, <gtexpert:meta_item_1:1>],
    [<metaitem:plateSteel>, <metaitem:plateGlass>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <gregtech:machine_casing:3>,
        <gtexpert:meta_item_1:1>,
        <metaitem:plateGlass>,
        <metaitem:plateSteel> * 2
    ])
    .outputs([<appliedenergistics2:interface>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Fluid Interface
recipes.removeByRecipeName("aeadditions:misc/parttointerface");
recipes.removeByRecipeName("appliedenergistics2:network/blocks/fluid_interfaces_interface");
recipes.addShaped(<appliedenergistics2:fluid_interface>, [
    [<metaitem:plateStainlessSteel>, <metaitem:plateGlass>, <metaitem:plateStainlessSteel>],
    [<gtexpert:meta_item_1:1>, <gregtech:machine_casing:3>, <gtexpert:meta_item_1:1>],
    [<metaitem:plateStainlessSteel>, <metaitem:plateGlass>, <metaitem:plateStainlessSteel>]
]);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <gregtech:machine_casing:3>,
        <gtexpert:meta_item_1:1>,
        <metaitem:plateGlass>,
        <metaitem:plateStainlessSteel> * 2
    ])
    .outputs([<appliedenergistics2:fluid_interface>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# Cell Workbench
recipes.remove(<appliedenergistics2:cell_workbench>);
recipes.addShaped(<appliedenergistics2:cell_workbench>, [
    [<ore:wool>, <metaitem:cover.screen>, <ore:wool>],
    [<metaitem:plateAluminium>, <appliedenergistics2:material:23>, <metaitem:plateAluminium>],
    [<metaitem:plateAluminium>, <metaitem:plateAluminium>, <metaitem:plateAluminium>]
]);

# Matter Condenser
recipes.remove(<appliedenergistics2:condenser>);
recipes.addShaped(<appliedenergistics2:condenser>, [
    [<metaitem:plateSteel>, <metaitem:electric.piston.hv>, <metaitem:plateSteel>],
    [<metaitem:electric.piston.hv>, <metaitem:hull.hv>, <metaitem:electric.piston.hv>],
    [<metaitem:plateSteel>, <metaitem:electric.piston.hv>, <metaitem:plateSteel>]
]);

# Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [
    [<metaitem:plateSteel>, <metaitem:plateGlass>, <metaitem:plateSteel>],
    [<metaitem:plateGlass>, <ore:crystalFluix>, <metaitem:plateGlass>],
    [<metaitem:plateSteel>, <metaitem:plateGlass>, <metaitem:plateSteel>]
]);

# Vibration Chamber
recipes.remove(<appliedenergistics2:vibration_chamber>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitHv> * 2,
        <ore:cableGtSingleGold> * 2,
        <metaitem:wireGtDoubleKanthal> * 4,
        <metaitem:plateSteel> * 7
    ])
    .outputs([<appliedenergistics2:vibration_chamber>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Energy Cell
recipes.remove(<appliedenergistics2:energy_cell>);
recipes.addShaped(<appliedenergistics2:energy_cell>, [
    [<metaitem:plateFluix>, <ore:circuitHv>, <metaitem:plateFluix>],
    [<ore:craftCoveredCable>, <ore:batteryHv>, <ore:craftCoveredCable>],
    [<metaitem:plateFluix>, <ore:cableGtOctalAluminium>, <metaitem:plateFluix>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:plateFluix> * 2,
        <ore:batteryHv>,
        <ore:circuitHv>,
        <ore:craftCoveredCable>
    ])
    .outputs([<appliedenergistics2:energy_cell>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# Dense Energy Cell
recipes.remove(<appliedenergistics2:dense_energy_cell>);
recipes.addShaped(<appliedenergistics2:dense_energy_cell>, [
    [<appliedenergistics2:energy_cell>, <ore:circuitEv>, <appliedenergistics2:energy_cell>],
    [<ore:craftDenseCoveredCable>, <gtexpert:meta_item_1:1>, <ore:craftDenseCoveredCable>],
    [<appliedenergistics2:energy_cell>, <metaitem:battery_buffer.ev.16>, <appliedenergistics2:energy_cell>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <appliedenergistics2:energy_cell> * 2,
        <metaitem:battery_buffer.ev.16>,
        <gtexpert:meta_item_1:1>,
        <ore:circuitEv>,
        <ore:craftDenseCoveredCable>
    ])
    .outputs([<appliedenergistics2:dense_energy_cell>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Crafting Unit
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [
    [<metaitem:plateSteel>, <appliedenergistics2:material:22>, <metaitem:plateSteel>],
    [<ore:circuitHv>, <appliedenergistics2:material:24>, <ore:circuitHv>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:23>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <appliedenergistics2:material:22>,
        <appliedenergistics2:material:24>,
        <appliedenergistics2:material:23>,
        <ore:circuitHv>,
        <metaitem:plateSteel> * 2
    ])
    .outputs([<appliedenergistics2:crafting_unit>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# Molecular Assembler
recipes.remove(<appliedenergistics2:molecular_assembler>);
assembler.recipeBuilder()
    .inputs([
        <metaitem:plateGlass> * 2,
        <ore:circuitHv> * 2,
        <metaitem:conveyor.module.hv> * 2,
        <metaitem:robot.arm.hv> * 2,
        <metaitem:plateSteel> * 4
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:molecular_assembler>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Light Detecting Fixture
recipes.remove(<appliedenergistics2:light_detector>);
recipes.addShapeless(<appliedenergistics2:light_detector>, [
    <ore:gemChargedCertusQuartz>, <metaitem:stickIron>
]);

# Illuminated Panel
recipes.remove(<appliedenergistics2:part:180>);
recipes.addShaped(<appliedenergistics2:part:180>, [
    [null, <metaitem:plateGlowstone>, null],
    [<metaitem:plateSteel>, <metaitem:plateRedAlloy>, <metaitem:cover.screen>],
    [null, <metaitem:plateGlowstone>, null]
]);
assembler.recipeBuilder()
    .inputs([
        <metaitem:plateGlowstone>,
        <metaitem:plateSteel>,
        <metaitem:plateRedAlloy>,
        <metaitem:cover.screen>
    ])
    .outputs([<appliedenergistics2:part:180>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Terminal
recipes.remove(<appliedenergistics2:part:380>);
recipes.addShaped(<appliedenergistics2:part:380>, [
    [<metaitem:stickSteel>, <ore:craftingToolScrewdriver>, <metaitem:stickSteel>],
    [<appliedenergistics2:part:180>, <ore:circuitHv>, <metaitem:plateSteel>],
    [<metaitem:stickSteel>,  <metaitem:screwSteel>, <metaitem:stickSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:380>, [
    [<metaitem:stickSteel>, <metaitem:screwSteel>, <metaitem:stickSteel>],
    [<appliedenergistics2:part:180>, <ore:circuitHv>, <metaitem:plateSteel>],
    [<metaitem:stickSteel>, <ore:craftingToolScrewdriver>, <metaitem:stickSteel>]
]);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:part:180>,
        <ore:circuitHv>,
        <metaitem:screwSteel>,
        <metaitem:plateSteel>,
        <metaitem:stickSteel> * 2
    ])
    .outputs([<appliedenergistics2:part:380>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Fluid Terminal
recipes.remove(<appliedenergistics2:part:520>);
recipes.addShaped(<appliedenergistics2:part:520>, [
    [<metaitem:stickStainlessSteel>, <ore:craftingToolScrewdriver>, <metaitem:stickStainlessSteel>],
    [<appliedenergistics2:part:180>, <ore:circuitHv>, <metaitem:plateStainlessSteel>],
    [<metaitem:stickStainlessSteel>,  <metaitem:screwStainlessSteel>, <metaitem:stickStainlessSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:520>, [
    [<metaitem:stickStainlessSteel>, <metaitem:screwStainlessSteel>, <metaitem:stickStainlessSteel>],
    [<appliedenergistics2:part:180>, <ore:circuitHv>, <metaitem:plateStainlessSteel>],
    [<metaitem:stickStainlessSteel>, <ore:craftingToolScrewdriver>, <metaitem:stickStainlessSteel>]
]);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:part:180>,
        <ore:circuitHv>,
        <metaitem:screwStainlessSteel>,
        <metaitem:plateStainlessSteel>,
        <metaitem:stickStainlessSteel> * 2
    ])
    .outputs([<appliedenergistics2:part:520>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Crafting Terminal
recipes.remove(<appliedenergistics2:part:360>);
recipes.addShaped(<appliedenergistics2:part:360>, [
    [<ore:craftingToolScrewdriver>, <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>],
    [<metaitem:screwSteel>, <metaitem:workbench>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:22>, <metaitem:plateSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:360>, [
    [<ore:craftingToolSoftHammer>, <appliedenergistics2:part:380>, <ore:craftingToolScrewdriver>],
    [<metaitem:screwSteel>, <metaitem:workbench>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:22>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:22>,
        <appliedenergistics2:part:380>,
        <metaitem:workbench>,
        <metaitem:screwSteel>,
        <metaitem:plateSteel>
    ])
    .outputs([<appliedenergistics2:part:360>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Interface Terminal
recipes.remove(<appliedenergistics2:part:480>);
recipes.addShaped(<appliedenergistics2:part:480>, [
    [<ore:craftingToolScrewdriver>, <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>],
    [<metaitem:screwSteel>, <ore:craftInterfaceItem>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:23>, <metaitem:plateSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:480>, [
    [<ore:craftingToolSoftHammer>, <appliedenergistics2:part:380>, <ore:craftingToolScrewdriver>],
    [<metaitem:screwSteel>, <ore:craftInterfaceItem>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:23>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <appliedenergistics2:part:380>,
        <ore:craftInterfaceItem>,
        <metaitem:screwSteel>,
        <metaitem:plateSteel>
    ])
    .outputs([<appliedenergistics2:part:480>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# Configuration Interface Terminal
recipes.remove(<appliedenergistics2:part:521>);
recipes.addShaped(<appliedenergistics2:part:521>, [
    [<ore:craftingToolScrewdriver>, <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>],
    [<metaitem:screwSteel>, <ore:craftInterfaceItem>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <gtexpert:meta_item_1:1>, <metaitem:plateSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:521>, [
    [<ore:craftingToolSoftHammer>, <appliedenergistics2:part:380>, <ore:craftingToolScrewdriver>],
    [<metaitem:screwSteel>, <ore:craftInterfaceItem>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <gtexpert:meta_item_1:1>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .inputs([
        <gtexpert:meta_item_1:1>,
        <appliedenergistics2:part:380>,
        <ore:craftInterfaceItem>,
        <metaitem:screwSteel>,
        <metaitem:plateSteel>
    ])
    .outputs([<appliedenergistics2:part:521>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# Configuration Fluid Interface Terminal
recipes.remove(<appliedenergistics2:part:522>);
recipes.addShaped(<appliedenergistics2:part:522>, [
    [<ore:craftingToolScrewdriver>, <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>],
    [<metaitem:screwStainlessSteel>, <ore:craftInterfaceFluid>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <gtexpert:meta_item_1:1>, <metaitem:plateStainlessSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:522>, [
    [<ore:craftingToolSoftHammer>, <appliedenergistics2:part:380>, <ore:craftingToolScrewdriver>],
    [<metaitem:screwStainlessSteel>, <ore:craftInterfaceFluid>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <gtexpert:meta_item_1:1>, <metaitem:plateStainlessSteel>]
]);
assembler.recipeBuilder()
    .inputs([
        <gtexpert:meta_item_1:1>,
        <appliedenergistics2:part:380>,
        <ore:craftInterfaceFluid>,
        <metaitem:screwStainlessSteel>,
        <metaitem:plateStainlessSteel>
    ])
    .outputs([<appliedenergistics2:part:522>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Pattrern Terminal
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShaped(<appliedenergistics2:part:340>, [
    [<ore:craftingToolScrewdriver>, <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>],
    [<metaitem:screwSteel>, <appliedenergistics2:material:52>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:23>, <metaitem:plateSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:340>, [
    [<ore:craftingToolSoftHammer>, <appliedenergistics2:part:380>, <ore:craftingToolScrewdriver>],
    [<metaitem:screwSteel>, <appliedenergistics2:material:52>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:23>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <appliedenergistics2:part:380>,
        <appliedenergistics2:material:52>,
        <metaitem:screwSteel>,
        <metaitem:plateSteel>
    ])
    .outputs([<appliedenergistics2:part:340>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Extended Processing Pattrern Terminal
recipes.remove(<appliedenergistics2:part:341>);
recipes.addShaped(<appliedenergistics2:part:341>, [
    [<ore:craftingToolScrewdriver>, <appliedenergistics2:part:340>, <ore:craftingToolSoftHammer>],
    [<metaitem:screwSteel>, <appliedenergistics2:material:52>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:24>, <metaitem:plateSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:341>, [
    [<ore:craftingToolSoftHammer>, <appliedenergistics2:part:340>, <ore:craftingToolScrewdriver>],
    [<metaitem:screwSteel>, <appliedenergistics2:material:52>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:24>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <appliedenergistics2:part:340>,
        <appliedenergistics2:material:52>,
        <metaitem:screwSteel>,
        <metaitem:plateSteel>
    ])
    .outputs([<appliedenergistics2:part:341>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# P2P Tunnel
recipes.remove(<appliedenergistics2:part:460>);
recipes.addShaped(<appliedenergistics2:part:460>, [
    [<appliedenergistics2:material:24>, <metaitem:plateAluminium>, <appliedenergistics2:material:24>],
    [<metaitem:plateAluminium>, <appliedenergistics2:part:180>, <metaitem:plateAluminium>],
    [<ore:crystalPureFluix>, <ore:crystalPureFluix>, <ore:crystalPureFluix>]
]);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <appliedenergistics2:part:180>,
        <ore:crystalPureFluix> * 2,
        <metaitem:plateAluminium> * 2
    ])
    .outputs([<appliedenergistics2:part:460>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Wireless Access Point
recipes.remove(<appliedenergistics2:wireless_access_point>);
recipes.addShaped(<appliedenergistics2:wireless_access_point>, [
    [null, <appliedenergistics2:material:41>, null],
    [null, <appliedenergistics2:material:23>, null],
    [null, <ore:craftGlassCable>, null]
]);

# ME Level Emitter
recipes.remove(<appliedenergistics2:part:280>);
recipes.addShaped(<appliedenergistics2:part:280>, [
    [null, <metaitem:plateSteel>, null],
    [<ore:craftGlassCable>, <minecraft:redstone_torch>, <ore:craftGlassCable>],
    [null, <metaitem:plateSteel>, null]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:redstone_torch>,
        <ore:craftGlassCable>,
        <metaitem:plateSteel>
    ])
    .outputs([<appliedenergistics2:part:280>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Fluid Level Emitter
recipes.remove(<appliedenergistics2:part:281>);
recipes.addShaped(<appliedenergistics2:part:281>, [
    [null, <metaitem:plateStainlessSteel>, null],
    [<ore:craftGlassCable>, <minecraft:redstone_torch>, <ore:craftGlassCable>],
    [null, <metaitem:plateStainlessSteel>, null]
]);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <minecraft:redstone_torch>,
        <ore:craftGlassCable>,
        <metaitem:plateStainlessSteel>
    ])
    .outputs([<appliedenergistics2:part:281>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Storage Bus
recipes.remove(<appliedenergistics2:part:220>);
recipes.addShaped(<appliedenergistics2:part:220>, [
    [<metaitem:plateSteel>, <ore:craftingToolSoftHammer>, <metaitem:plateSteel>],
    [<metaitem:conveyor.module.hv>, <ore:craftInterfaceItem>, <metaitem:conveyor.module.hv>],
    [<metaitem:plateSteel>, <metaitem:item_filter>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:conveyor.module.hv>,
        <metaitem:item_filter>,
        <ore:craftInterfaceItem>,
        <metaitem:plateSteel> * 2
    ])
    .outputs([<appliedenergistics2:part:220>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Fluid Storage Bus
recipes.remove(<appliedenergistics2:part:221>);
recipes.addShaped(<appliedenergistics2:part:221>, [
    [<metaitem:plateStainlessSteel>, <ore:craftingToolSoftHammer>, <metaitem:plateStainlessSteel>],
    [<metaitem:electric.pump.hv>, <ore:craftInterfaceFluid>, <metaitem:electric.pump.hv>],
    [<metaitem:plateStainlessSteel>, <metaitem:fluid_filter>, <metaitem:plateStainlessSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:electric.pump.hv>,
        <metaitem:fluid_filter>,
        <ore:craftInterfaceFluid>,
        <metaitem:plateStainlessSteel> * 2
    ])
    .outputs([<appliedenergistics2:part:221>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME OreDict Storage Bus
recipes.remove(<appliedenergistics2:part:222>);
recipes.addShaped(<appliedenergistics2:part:222>, [
    [<metaitem:plateTitanium>, <ore:craftingToolSoftHammer>, <metaitem:plateTitanium>],
    [<metaitem:conveyor.module.hv>, <ore:craftInterfaceItem>, <metaitem:conveyor.module.hv>],
    [<metaitem:plateTitanium>, <metaitem:ore_dictionary_filter>, <metaitem:plateTitanium>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:conveyor.module.hv>,
        <metaitem:ore_dictionary_filter>,
        <ore:craftInterfaceItem>,
        <metaitem:plateTitanium> * 2
    ])
    .outputs([<appliedenergistics2:part:222>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Toggle Bus
recipes.remove(<appliedenergistics2:part:80>);
recipes.addShapeless(<appliedenergistics2:part:80>, [<appliedenergistics2:part:100>]);
recipes.addShaped(<appliedenergistics2:part:80>, [
    [null, <metaitem:plateRedAlloy>, null],
    [<ore:craftGlassCable>, <minecraft:lever>, <ore:craftGlassCable>],
    [null, <metaitem:plateRedAlloy>, null]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:lever>,
        <ore:craftGlassCable>,
        <metaitem:plateRedAlloy>
    ])
    .outputs([<appliedenergistics2:part:80>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Inverted Toggle Bus
recipes.remove(<appliedenergistics2:part:100>);
recipes.addShapeless(<appliedenergistics2:part:100>, [<appliedenergistics2:part:80>]);

# ME Import Bus
recipes.remove(<appliedenergistics2:part:240>);
recipes.addShapeless(<appliedenergistics2:part:240>, [<appliedenergistics2:part:260>]);

# ME Fluid Import Bus
recipes.remove(<appliedenergistics2:part:241>);
recipes.addShapeless(<appliedenergistics2:part:241>, [<appliedenergistics2:part:261>]);

# ME Export Bus
recipes.remove(<appliedenergistics2:part:260>);
recipes.addShapeless(<appliedenergistics2:part:260>, [<appliedenergistics2:part:240>]);
recipes.addShaped(<appliedenergistics2:part:260>, [
    [<ore:craftingToolScrewdriver>, <metaitem:plateTitanium>, <ore:craftingToolSoftHammer>],
    [<appliedenergistics2:material:44>, <metaitem:item_filter>, <appliedenergistics2:material:43>],
    [<metaitem:screwSteel>, <metaitem:conveyor.module.hv>, <metaitem:screwSteel>]
]);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <appliedenergistics2:material:44>,
        <appliedenergistics2:material:43>,
        <metaitem:item_filter>,
        <metaitem:plateTitanium>,
        <metaitem:screwSteel> * 2,
        <metaitem:conveyor.module.hv>
    ])
    .outputs([<appliedenergistics2:part:260>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();

# ME Fluid Export Bus
recipes.remove(<appliedenergistics2:part:261>);
recipes.addShapeless(<appliedenergistics2:part:261>, [<appliedenergistics2:part:241>]);
recipes.addShaped(<appliedenergistics2:part:261>, [
    [<ore:craftingToolScrewdriver>, <metaitem:plateTitanium>, <ore:craftingToolSoftHammer>],
    [<appliedenergistics2:material:44>, <metaitem:fluid_filter>, <appliedenergistics2:material:43>],
    [<metaitem:screwStainlessSteel>, <metaitem:electric.pump.hv>, <metaitem:screwStainlessSteel>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <appliedenergistics2:material:44>,
        <appliedenergistics2:material:43>,
        <metaitem:fluid_filter>,
        <metaitem:plateTitanium>,
        <metaitem:screwStainlessSteel> * 2,
        <metaitem:electric.pump.hv>
    ])
    .outputs([<appliedenergistics2:part:261>])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();
