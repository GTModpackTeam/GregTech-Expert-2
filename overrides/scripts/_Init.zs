# Imports
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;



########################################
# Gregtech
########################################
# RecipeMaps
global alloy_smelter             as RecipeMap = RecipeMap.getByName("alloy_smelter");
global alloy_blast_smelter       as RecipeMap = RecipeMap.getByName("alloy_blast_smelter");
global arc_furnace               as RecipeMap = RecipeMap.getByName("arc_furnace");
global assembler                 as RecipeMap = RecipeMap.getByName("assembler");
global assembly_line             as RecipeMap = RecipeMap.getByName("assembly_line");
global autoclave                 as RecipeMap = RecipeMap.getByName("autoclave");
global bender                    as RecipeMap = RecipeMap.getByName("bender");
global brewery                   as RecipeMap = RecipeMap.getByName("brewery");
global canneras                  as RecipeMap = RecipeMap.getByName("canner");
global centrifuge                as RecipeMap = RecipeMap.getByName("centrifuge");
global chemical_bath             as RecipeMap = RecipeMap.getByName("chemical_bath");
global chemical_reactor          as RecipeMap = RecipeMap.getByName("chemical_reactor");
global circuit_assembler         as RecipeMap = RecipeMap.getByName("circuit_assembler");
global coke_oven                 as RecipeMap = RecipeMap.getByName("coke_oven");
global compressor                as RecipeMap = RecipeMap.getByName("compressor");
global combustion_generator      as RecipeMap = RecipeMap.getByName("combustion_generator");
global cracker                   as RecipeMap = RecipeMap.getByName("cracker");
global cutter                    as RecipeMap = RecipeMap.getByName("cutter");
global distillation_tower        as RecipeMap = RecipeMap.getByName("distillation_tower");
global distillery                as RecipeMap = RecipeMap.getByName("distillery");
global electric_blast_furnace    as RecipeMap = RecipeMap.getByName("electric_blast_furnace");
global electric_furnace          as RecipeMap = RecipeMap.getByName("electric_furnace");
global electrolyzer              as RecipeMap = RecipeMap.getByName("electrolyzer");
global electromagnetic_separator as RecipeMap = RecipeMap.getByName("electromagnetic_separator");
global extractor                 as RecipeMap = RecipeMap.getByName("extractor");
global extruder                  as RecipeMap = RecipeMap.getByName("extruder");
global fermenter                 as RecipeMap = RecipeMap.getByName("fermenter");
global fluid_heater              as RecipeMap = RecipeMap.getByName("fluid_heater");
global fluid_solidifier          as RecipeMap = RecipeMap.getByName("fluid_solidifier");
global forge_hammer              as RecipeMap = RecipeMap.getByName("forge_hammer");
global forming_press             as RecipeMap = RecipeMap.getByName("forming_press");
global fusion_reactor            as RecipeMap = RecipeMap.getByName("fusion_reactor");
global gas_collector             as RecipeMap = RecipeMap.getByName("gas_collector");
global implosion_compressor      as RecipeMap = RecipeMap.getByName("implosion_compressor");
global large_chemical_reactor    as RecipeMap = RecipeMap.getByName("large_chemical_reactor");
global laser_engraver            as RecipeMap = RecipeMap.getByName("laser_engraver");
global lathe                     as RecipeMap = RecipeMap.getByName("lathe");
global macerator                 as RecipeMap = RecipeMap.getByName("macerator");
global mass_fabricator           as RecipeMap = RecipeMap.getByName("mass_fabricator");
global mixer                     as RecipeMap = RecipeMap.getByName("mixer");
global ore_washer                as RecipeMap = RecipeMap.getByName("ore_washer");
global packer                    as RecipeMap = RecipeMap.getByName("packer");
global polarizer                 as RecipeMap = RecipeMap.getByName("polarizer");
global primitive_blast_furnace   as RecipeMap = RecipeMap.getByName("primitive_blast_furnace");
global pyrolyse_oven             as RecipeMap = RecipeMap.getByName("pyrolyse_oven");
global replicator                as RecipeMap = RecipeMap.getByName("replicator");
global rock_breaker              as RecipeMap = RecipeMap.getByName("rock_breaker");
global scanner                   as RecipeMap = RecipeMap.getByName("scanner");
global sifter                    as RecipeMap = RecipeMap.getByName("sifter");
global thermal_centrifuge        as RecipeMap = RecipeMap.getByName("thermal_centrifuge");
global vacuum_freezer            as RecipeMap = RecipeMap.getByName("vacuum_freezer");
global wiremill                  as RecipeMap = RecipeMap.getByName("wiremill");
global vial_extractor            as RecipeMap = RecipeMap.getByName("vial_extractor");
global draconium_fusion          as RecipeMap = RecipeMap.getByName("draconium_fusion");
global awakened_draconium_fusion as RecipeMap = RecipeMap.getByName("awakened_draconium_fusion");


########################################
# Applied Energistics 2
########################################
# Extended Crafting Terminal
<ore:ae2.extended.terminal>.addItems([
    <appliedenergistics2:part:341>,
    <ae2fc:part_fluid_pattern_ex_terminal>
]);

# Interface
<ore:ae2.interface.item>.addItems([
    <appliedenergistics2:interface>,
    <appliedenergistics2:part:440>
]);

# Fluid Interface
<ore:ae2.interface.fluid>.addItems([
    <appliedenergistics2:fluid_interface>,
    <appliedenergistics2:part:441>
]);

# Dual Interface
<ore:ae2.interface.dual>.addItems([
    <ae2fc:dual_interface>,
    <ae2fc:part_dual_interface>
]);

# Glass Cable
global glassCables as IItemStack[] = [
    <appliedenergistics2:part>,
    <appliedenergistics2:part:1>,
    <appliedenergistics2:part:2>,
    <appliedenergistics2:part:3>,
    <appliedenergistics2:part:4>,
    <appliedenergistics2:part:5>,
    <appliedenergistics2:part:6>,
    <appliedenergistics2:part:7>,
    <appliedenergistics2:part:8>,
    <appliedenergistics2:part:9>,
    <appliedenergistics2:part:10>,
    <appliedenergistics2:part:11>,
    <appliedenergistics2:part:12>,
    <appliedenergistics2:part:13>,
    <appliedenergistics2:part:14>,
    <appliedenergistics2:part:15>,
    <appliedenergistics2:part:16>
];
for glassCable in glassCables {
    <ore:ae2.cable.glass>.add(glassCable);
    if (glassCable.displayName has "Fluix") {}
    else {
        recipes.remove(glassCable);
        <ore:ae2.cable.glass.colors>.add(glassCable);
    }
}

# Covered Cable
global coveredCables as IItemStack[] = [
    <appliedenergistics2:part:20>,
    <appliedenergistics2:part:21>,
    <appliedenergistics2:part:22>,
    <appliedenergistics2:part:23>,
    <appliedenergistics2:part:24>,
    <appliedenergistics2:part:25>,
    <appliedenergistics2:part:26>,
    <appliedenergistics2:part:27>,
    <appliedenergistics2:part:28>,
    <appliedenergistics2:part:29>,
    <appliedenergistics2:part:30>,
    <appliedenergistics2:part:31>,
    <appliedenergistics2:part:32>,
    <appliedenergistics2:part:33>,
    <appliedenergistics2:part:34>,
    <appliedenergistics2:part:35>,
    <appliedenergistics2:part:36>
];
for coveredCable in coveredCables {
    <ore:ae2.cable.covered>.add(coveredCable);
    if (coveredCable.displayName has "Fluix") {}
    else {
        recipes.remove(coveredCable);
        <ore:ae2.cable.covered.colors>.add(coveredCable);
    }
}

# Smart Cable
global smartCables as IItemStack[] = [
    <appliedenergistics2:part:40>,
    <appliedenergistics2:part:41>,
    <appliedenergistics2:part:42>,
    <appliedenergistics2:part:43>,
    <appliedenergistics2:part:44>,
    <appliedenergistics2:part:45>,
    <appliedenergistics2:part:46>,
    <appliedenergistics2:part:47>,
    <appliedenergistics2:part:48>,
    <appliedenergistics2:part:49>,
    <appliedenergistics2:part:50>,
    <appliedenergistics2:part:51>,
    <appliedenergistics2:part:52>,
    <appliedenergistics2:part:53>,
    <appliedenergistics2:part:54>,
    <appliedenergistics2:part:55>,
    <appliedenergistics2:part:56>
];
for smartCable in smartCables {
    <ore:ae2.cable.smart>.add(smartCable);
    if (smartCable.displayName has "Fluix") {}
    else {
        recipes.remove(smartCable);
        <ore:ae2.cable.smart.colors>.add(smartCable);
    }
}

# Dense Covered Cable
global denseCoveredCables as IItemStack[] = [
    <appliedenergistics2:part:500>,
    <appliedenergistics2:part:501>,
    <appliedenergistics2:part:502>,
    <appliedenergistics2:part:503>,
    <appliedenergistics2:part:504>,
    <appliedenergistics2:part:505>,
    <appliedenergistics2:part:506>,
    <appliedenergistics2:part:507>,
    <appliedenergistics2:part:508>,
    <appliedenergistics2:part:509>,
    <appliedenergistics2:part:510>,
    <appliedenergistics2:part:511>,
    <appliedenergistics2:part:512>,
    <appliedenergistics2:part:513>,
    <appliedenergistics2:part:514>,
    <appliedenergistics2:part:515>,
    <appliedenergistics2:part:516>
];
for denseCoveredCable in denseCoveredCables {
    <ore:ae2.cable.dense.covered>.add(denseCoveredCable);
    if (denseCoveredCable.displayName has "Fluix") {}
    else {
        recipes.remove(denseCoveredCable);
        <ore:ae2.cable.dense.covered.colors>.add(denseCoveredCable);
    }
}

# Dense Smart Cable
global denseSmartCables as IItemStack[] = [
    <appliedenergistics2:part:60>,
    <appliedenergistics2:part:61>,
    <appliedenergistics2:part:62>,
    <appliedenergistics2:part:63>,
    <appliedenergistics2:part:64>,
    <appliedenergistics2:part:65>,
    <appliedenergistics2:part:66>,
    <appliedenergistics2:part:67>,
    <appliedenergistics2:part:68>,
    <appliedenergistics2:part:69>,
    <appliedenergistics2:part:70>,
    <appliedenergistics2:part:71>,
    <appliedenergistics2:part:72>,
    <appliedenergistics2:part:73>,
    <appliedenergistics2:part:74>,
    <appliedenergistics2:part:75>,
    <appliedenergistics2:part:76>
];
for denseSmartCable in denseSmartCables {
    <ore:ae2.cable.dense.smart>.add(denseSmartCable);
    if (denseSmartCable.displayName has "Fluix") {}
    else {
        recipes.remove(denseSmartCable);
        <ore:ae2.cable.dense.smart.colors>.add(denseSmartCable);
    }
}

# Fluid Assembler
<ore:ae2.fluid.assembler>.addItems([
    <ae2fc:fluid_assembler>,
    <aeadditions:fluidcrafter>
]);


########################################
# Minecraft
########################################
# Grass
<ore:grass>.addItems([
    <minecraft:double_plant:2>,
    <minecraft:double_plant:3>,
    <minecraft:tallgrass:*>
]);

# Colors
global colors as string[] = [
    "white",
    "orange",
    "magenta",
    "light_blue",
    "yellow",
    "lime",
    "pink",
    "gray",
    "silver",
    "cyan",
    "purple",
    "blue",
    "brown",
    "green",
    "red",
    "black"
];
global colorLiquid as ILiquidStack[] = [
    <liquid:dye_white>,
    <liquid:dye_orange>,
    <liquid:dye_magenta>,
    <liquid:dye_light_blue>,
    <liquid:dye_yellow>,
    <liquid:dye_lime>,
    <liquid:dye_pink>,
    <liquid:dye_gray>,
    <liquid:dye_light_gray>,
    <liquid:dye_cyan>,
    <liquid:dye_purple>,
    <liquid:dye_blue>,
    <liquid:dye_brown>,
    <liquid:dye_green>,
    <liquid:dye_red>,
    <liquid:dye_black>
];



########################################
# Other
########################################
# Wrench
<ore:wrench>.addItems([
    <appliedenergistics2:certus_quartz_wrench>,
    <appliedenergistics2:nether_quartz_wrench>,
    <enderio:item_yeta_wrench>,
    <appliedenergistics2:part:200>
]);

# Wools
<ore:wool>.addItems([
    <chisel:wool_black:*>,
    <chisel:wool_red:*>,
    <chisel:wool_green:*>,
    <chisel:wool_brown:*>,
    <chisel:wool_blue:*>,
    <chisel:wool_purple:*>,
    <chisel:wool_cyan:*>,
    <chisel:wool_lightgray:*>,
    <chisel:wool_gray:*>,
    <chisel:wool_pink:*>,
    <chisel:wool_lime:*>,
    <chisel:wool_yellow:*>,
    <chisel:wool_lightblue:*>,
    <chisel:wool_magenta:*>,
    <chisel:wool_orange:*>,
    <chisel:wool_white:*>
]);
