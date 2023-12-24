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


########################################
# Applied Energistics 2
########################################
# Extended Crafting Terminal
<ore:craftExtendedTerminal>.addItems([
    <appliedenergistics2:part:341>,
    <ae2fc:part_fluid_pattern_ex_terminal>
]);

# Fluid Assembler
<ore:craftAssemblerFluid>.addItems([
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
    <enderio:item_yeta_wrench>
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
