# Imoprts
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;



########################################
# Gregtech
########################################
global alloy_smelter             as RecipeMap = RecipeMap.getByName("alloy_smelter");
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
global unpacker                  as RecipeMap = RecipeMap.getByName("unpacker");
global vacuum_freezer            as RecipeMap = RecipeMap.getByName("vacuum_freezer");
global wiremill                  as RecipeMap = RecipeMap.getByName("wiremill");

<ore:gtceWrenches>.addItems([
    <gregtech:meta_tool:8>.withEmptyTag(), 
    <gregtech:meta_tool:28>.withEmptyTag(), 
    <gregtech:meta_tool:29>.withEmptyTag(), 
    <gregtech:meta_tool:30>.withEmptyTag()
]);

<ore:gtceScrewdrivers>.addItems([
    <gregtech:meta_tool:11>.withEmptyTag(), 
    <gregtech:meta_tool:31>.withEmptyTag()
]);

<ore:gtceHardHammers>.addItems([
    <gregtech:meta_tool:6>.withEmptyTag()
]);

<ore:gtceSaws>.addItems([
    <gregtech:meta_tool:5>.withEmptyTag(),
    <gregtech:meta_tool:25>.withEmptyTag(), 
    <gregtech:meta_tool:26>.withEmptyTag(), 
    <gregtech:meta_tool:27>.withEmptyTag(),
    <gregtech:meta_tool:32>.withEmptyTag()
]);

<ore:gtceFiles>.addItems([
    <gregtech:meta_tool:9>.withEmptyTag()
]);

<ore:gtceWireCutters>.addItems([
    <gregtech:meta_tool:13>.withEmptyTag()
]);

<ore:gtceSoftHammers>.addItems([
    <gregtech:meta_tool:7>.withEmptyTag()
]);

<ore:gtceMortars>.addItems([
    <gregtech:meta_tool:12>.withEmptyTag()
]);



########################################
# Applied Energistics 2
########################################
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

# Glass Cable
<ore:ae2.cable.glass>.addItems([
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
]);

# Smart Cable
<ore:ae2.cable.smart>.addItems([
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
]);

# Covered Cable
<ore:ae2.cable.normal>.addItems([
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
]);

# Dense Cable
<ore:ae2.cable.dense.normal>.addItems([
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
]);

# Dense Smart Cable
<ore:ae2.cable.dense.smart>.addItems([
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
