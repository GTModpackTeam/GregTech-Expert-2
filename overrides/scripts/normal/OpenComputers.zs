# Imports
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.gtexpert.I18n;

val oc as IMod = loadedMods["opencomputers"];
if (!isNull(oc)) {
    val ocItems as IItemStack[] = oc.items;

    for item in ocItems {
        if (
            item.displayName has "Grog" |
            item.displayName has "Scrench" |
            item.displayName has "OpenComputers Manual" |
            item.displayName has "EEPROM" |
            item.displayName has "Linked Card" |
            item.displayName has "Hard Disk Drive" |
            item.displayName has "Floppy Disk" |
            item.displayName has "Plan9k" |
            item.displayName has "Network (Network Stack)" |
            item.displayName has "OpenOS" |
            item.displayName has "Data Card Software" |
            item.displayName has "OpenLodaer" |
            item.displayName has "Builder" |
            item.displayName has "Generator Upgrade Software" |
            item.displayName has "OPPM" |
            item.displayName has "Digger" |
            item.displayName has "Mazer" |
            item.displayName has "OpenIRC" |
            item.displayName has "Carpeted Capacitor" |
            item.displayName has "Ink Cartridge" |
            item.displayName has "Texture Picker" |
            item.displayName has "Navigation Upgrade" |
            item.displayName has "robot.name" |
            item.displayName has "Creatix" |
            item.displayName has "Crecopter"
        ) {}
        else { recipes.remove(item); }
    }
}



########################################
# Items
########################################
# Printed Circuit Board
furnace.remove(<opencomputers:material:4>, <opencomputers:material:2>);
JEI.hide(<opencomputers:material:4>);

# Ink Cartridge
recipes.removeByRecipeName("opencomputers:material52");
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:7>,
        <opencomputers:material:6> * 2,
        <metaitem:pipeTinyFluidPlastic> * 8,
        <metaitem:boltElectrum> * 8
    ])
    .fluidInputs(<liquid:plastic> * 36)
    .outputs([<opencomputers:material:26>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Analyzer
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:tricorder_scanner>,
        <opencomputers:material:8> * 2,
        <opencomputers:material:6> * 2,
        <metaitem:sensor.mv>
    ])
    .outputs([<opencomputers:tool>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# ME Upgrade - Tier 1
recipes.removeByRecipeName("aeadditions:oc/upgradet1");
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:plateStainlessSteel> * 2,
        <opencomputers:card:7>,
        <appliedenergistics2:material:41>,
        <opencomputers:material:7>
    ])
    .fluidInputs(<liquid:tin> * 288)
    .outputs([<aeadditions:oc.upgrade:2>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:plateStainlessSteel> * 2,
        <opencomputers:card:7>,
        <appliedenergistics2:material:41>,
        <opencomputers:material:7>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<aeadditions:oc.upgrade:2>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# ME Upgrade - Tier 2
recipes.removeByRecipeName("aeadditions:oc/upgradet2");
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <metaitem:plateTitanium> * 2,
        <opencomputers:card:7>,
        <appliedenergistics2:material:41>,
        <opencomputers:material:8>
    ])
    .fluidInputs(<liquid:tin> * 288)
    .outputs([<aeadditions:oc.upgrade:1>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <metaitem:plateTitanium> * 2,
        <opencomputers:card:7>,
        <appliedenergistics2:material:41>,
        <opencomputers:material:8>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<aeadditions:oc.upgrade:1>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();

# ME Upgrade - Tier 3
recipes.removeByRecipeName("aeadditions:oc/upgradet3");
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <metaitem:plateTungstenSteel> * 2,
        <opencomputers:card:7>,
        <appliedenergistics2:material:41>,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:tin> * 288)
    .outputs([<aeadditions:oc.upgrade>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <metaitem:plateTungstenSteel> * 2,
        <opencomputers:card:7>,
        <appliedenergistics2:material:41>,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<aeadditions:oc.upgrade>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();

# Battery Upgrade - Tier 1
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <opencomputers:capacitor>,
        <opencomputers:material:6> * 2,
        <metaitem:boltRedAlloy> * 4
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:1>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <opencomputers:capacitor>,
        <opencomputers:material:6> * 2,
        <metaitem:boltRedAlloy> * 4
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:1>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Battery Upgrade - Tier 2
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:plateStainlessSteel> * 2,
        <opencomputers:capacitor> * 2,
        <ore:componentTransistor> * 2,
        <metaitem:boltSilver> * 8
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:2>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:plateStainlessSteel> * 2,
        <opencomputers:capacitor> * 2,
        <ore:componentTransistor> * 2,
        <metaitem:boltSilver> * 8
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:2>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Battery Upgrade - Tier 3
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <metaitem:plateTungstenSteel> * 2,
        <opencomputers:capacitor> * 4,
        <metaitem:component.advanced_smd.transistor>,
        <metaitem:boltElectrum> * 16
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:3>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <metaitem:plateTungstenSteel> * 2,
        <opencomputers:capacitor> * 4,
        <metaitem:component.advanced_smd.transistor>,
        <metaitem:boltElectrum> * 16
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:3>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Chunkloader Upgrade
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <chickenchunks:chunk_loader>,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:4>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <chickenchunks:chunk_loader>,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:4>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Card Container - Tier 1
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <metaitem:plateAluminium> * 2,
        <ore:chestWood>,
        <opencomputers:material:7>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:5>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <metaitem:plateAluminium> * 2,
        <ore:chestWood>,
        <opencomputers:material:7>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:5>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Card Container - Tier 2
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <metaitem:plateStainlessSteel> * 2,
        <ore:chestWood>,
        <opencomputers:material:8>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:6>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <metaitem:plateStainlessSteel> * 2,
        <ore:chestWood>,
        <opencomputers:material:8>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:6>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Card Container - Tier 3
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <metaitem:plateTitanium> * 2,
        <ore:chestWood>,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:7>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <metaitem:plateTitanium> * 2,
        <ore:chestWood>,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:7>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Upgrade Container - Tier 1
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <ore:chestWood>,
        <opencomputers:material:7>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:8>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <ore:chestWood>,
        <opencomputers:material:7>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:8>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Upgrade Container - Tier 2
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:plateStainlessSteel> * 2,
        <ore:chestWood>,
        <opencomputers:material:8>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:9>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:plateStainlessSteel> * 2,
        <ore:chestWood>,
        <opencomputers:material:8>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:8>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Upgrade Container - Tier 3
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <metaitem:plateTitanium> * 2,
        <ore:chestWood>,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:10>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <metaitem:plateTitanium> * 2,
        <ore:chestWood>,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:8>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Crafting Upgrade
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:8>,
        <metaitem:cover.crafting>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:11>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:8>,
        <metaitem:cover.crafting>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:11>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Database Upgrade - Tier 1
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:tool>,
        <opencomputers:storage:2>,
        <opencomputers:material:8> * 2
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:12>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:tool>,
        <opencomputers:storage:2>,
        <opencomputers:material:8> * 2
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:12>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Database Upgrade - Tier 2
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <opencomputers:tool>,
        <opencomputers:storage:3>,
        <opencomputers:material:9> * 2
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:13>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <opencomputers:tool>,
        <opencomputers:storage:3>,
        <opencomputers:material:9> * 2
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:13>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Database Upgrade - Tier 3
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <opencomputers:tool>,
        <opencomputers:storage:4>,
        <opencomputers:material:10> * 2
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:14>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <opencomputers:tool>,
        <opencomputers:storage:4>,
        <opencomputers:material:10> * 2
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:14>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Experience Upgrade
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <opencomputers:tool>,
        <opencomputers:material:9>,
        <enderio:item_xp_transfer>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:15>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <opencomputers:tool>,
        <opencomputers:material:9>,
        <enderio:item_xp_transfer>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:15>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Hover Upgrade - Tier 1
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <metaitem:rotorSteel> * 4,
        <opencomputers:material:8> * 2,
        <metaitem:electric.motor.mv>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:27>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <metaitem:rotorSteel> * 4,
        <opencomputers:material:8> * 2,
        <metaitem:electric.motor.mv>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:27>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Hover Upgrade - Tier 2
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:plateAluminium> * 2,
        <metaitem:rotorStainlessSteel> * 4,
        <opencomputers:material:9> * 2,
        <metaitem:electric.motor.hv>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:28>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:plateAluminium> * 2,
        <metaitem:rotorStainlessSteel> * 4,
        <opencomputers:material:9> * 2,
        <metaitem:electric.motor.hv>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:28>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Inventory Upgrade
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <ore:chestWood>,
        <opencomputers:material:8> 
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:17>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <ore:chestWood>,
        <opencomputers:material:8>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:17>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Inventory Controller Upgrade
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <opencomputers:upgrade:17>,
        <metaitem:plateStainlessSteel> * 2,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:18>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <opencomputers:upgrade:17>,
        <metaitem:plateStainlessSteel> * 2,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:18>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Tank Upgrade
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:drum.aluminium>,
        <opencomputers:material:8>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:23>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:drum.aluminium>,
        <opencomputers:material:8>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:23>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Tank Controller Upgrade
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <opencomputers:upgrade:23>,
        <metaitem:plateStainlessSteel> * 2,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:24>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <opencomputers:upgrade:23>,
        <metaitem:plateStainlessSteel> * 2,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:24>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Leash Upgrade
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:11>,
        <minecraft:lead> * 4
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:26>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:11>,
        <minecraft:lead> * 4
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:26>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# MFU
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:adapter>,
        <opencomputers:card:9> * 2,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:30>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:adapter>,
        <opencomputers:card:9> * 2,
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:30>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Navigation Upgrade
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <opencomputers:material:9> * 2,
        <minecraft:map>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:19>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <opencomputers:material:9> * 2,
        <minecraft:map>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:19>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Piston Upgrade
recipes.addShapeless(<opencomputers:upgrade:20>, [<opencomputers:upgrade:33>]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:drum.aluminium>,
        <opencomputers:material:8>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:20>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:drum.aluminium>,
        <opencomputers:material:8>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:20>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Sticky Piston Upgrade
recipes.addShapeless(<opencomputers:upgrade:33>, [<opencomputers:upgrade:20>, <metaitem:rubber_drop>]);
recipes.addShapeless(<opencomputers:upgrade:33>, [<opencomputers:upgrade:20>, <minecraft:slime_ball>]);

# Sign Upgrade
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <minecraft:sign>,
        <opencomputers:material:8> * 2
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:21>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <minecraft:sign>,
        <opencomputers:material:8> * 2
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:21>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Tractor Beam Upgrade
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:item_magnet.hv>.withEmptyTag(),
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:25>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:item_magnet.hv>.withEmptyTag(),
        <opencomputers:material:9>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:25>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Microcontroller Case - Tier 1
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <gregtech:machine_casing:2>,
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <opencomputers:material:8> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:material:20>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Microcontroller Case - Tier 2
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <gregtech:machine_casing:3>,
        <metaitem:circuit_board.advanced>,
        <metaitem:plateStainlessSteel> * 2,
        <opencomputers:material:9> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:material:21>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Drone Case - Tier 1
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <opencomputers:material:20>,
        <opencomputers:component:4>,
        <opencomputers:material:8> * 2,
        <metaitem:electric.motor.mv> * 4
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:material:23>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Drone Case - Tier 2
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <opencomputers:material:21>,
        <opencomputers:component:5>,
        <opencomputers:material:9> * 2,
        <metaitem:electric.motor.hv> * 4
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:material:24>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Arrow Keys
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:stone_button> * 4,
        <ore:circuitLv>
    ])
    .outputs([<opencomputers:material:15>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();

# Button Group
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <minecraft:stone_button> * 6,
        <ore:circuitLv>
    ])
    .outputs([<opencomputers:material:14>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();

# Numeric Keypad
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <minecraft:stone_button> * 9,
        <ore:circuitLv>
    ])
    .outputs([<opencomputers:material:16>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();

# Keyboard
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <minecraft:stone_button> * 64,
        <minecraft:stone_button> * 40,
        <ore:circuitLv>,
        <metaitem:plateTinAlloy>
    ])
    .outputs([<opencomputers:keyboard>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();

# Disk Platter
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:lensGlass>,
        <metaitem:foilAluminium> * 4
    ])
    .fluidInputs(<liquid:distilled_water> * 36)
    .outputs([<opencomputers:material:12>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();

# EEPROM
recipes.removeByRecipeName("opencomputers:storage126");
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:7>,
        <opencomputers:material:6> * 4,
        <metaitem:foilElectrum>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:storage>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:7>,
        <opencomputers:material:6> * 4,
        <metaitem:foilElectrum>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:storage>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Floppy Disk
recipes.removeByRecipeName("opencomputers:storage127");
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:12>,
        <metaitem:foilPlastic> * 4
    ])
    .outputs([<opencomputers:storage:1>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();

# Hard Disk Drive - Tier 1
recipes.removeByRecipeName("opencomputers:storage128");
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:plateSteel> * 2,
        <opencomputers:material:12> * 2,
        <opencomputers:material:7> * 2,
        <opencomputers:component:6> * 4
    ])
    .outputs([<opencomputers:storage:2>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();

# Hard Disk Drive - Tier 2
recipes.removeByRecipeName("opencomputers:storage129");
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:plateAluminium> * 2,
        <opencomputers:material:12> * 4,
        <opencomputers:material:8> * 2,
        <opencomputers:component:8> * 4
    ])
    .outputs([<opencomputers:storage:3>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Hard Disk Drive - Tier 3
recipes.removeByRecipeName("opencomputers:storage130");
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:plateStainlessSteel> * 2,
        <opencomputers:material:12> * 8,
        <opencomputers:material:9> * 2,
        <opencomputers:component:10> * 4
    ])
    .outputs([<opencomputers:storage:4>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Central Processing Unit - Tier 1
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:10> * 8,
        <opencomputers:material:11>,
        <ore:circuitLv>,
        <metaitem:plateSteel>
    ])
    .fluidInputs(<liquid:tin> * 288)
    .outputs([<opencomputers:component>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:10> * 8,
        <opencomputers:material:11>,
        <ore:circuitLv>,
        <metaitem:plateSteel>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<opencomputers:component>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Central Processing Unit - Tier 2
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <opencomputers:material:10> * 12,
        <opencomputers:material:11> * 2,
        <ore:circuitMv>,
        <metaitem:plateAluminium>
    ])
    .fluidInputs(<liquid:tin> * 288)
    .outputs([<opencomputers:component:1>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <opencomputers:material:10> * 12,
        <opencomputers:material:11> * 2,
        <ore:circuitMv>,
        <metaitem:plateAluminium>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<opencomputers:component:1>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Central Processing Unit - Tier 3
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <opencomputers:material:10> * 16,
        <opencomputers:material:11> * 4,
        <ore:circuitHv>,
        <metaitem:plateStainlessSteel>
    ])
    .fluidInputs(<liquid:tin> * 288)
    .outputs([<opencomputers:component:2>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <opencomputers:material:10> * 16,
        <opencomputers:material:11> * 4,
        <ore:circuitHv>,
        <metaitem:plateStainlessSteel>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<opencomputers:component:2>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Accelerated Processing Unit - Tier 2
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:10> * 32,
        <opencomputers:material:11> * 4,
        <ore:circuitHv>,
        <metaitem:plateStainlessSteel>
    ])
    .fluidInputs(<liquid:tin> * 288)
    .outputs([<opencomputers:component:16>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:10> * 32,
        <opencomputers:material:11> * 4,
        <ore:circuitHv>,
        <metaitem:plateStainlessSteel>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<opencomputers:component:16>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Accelerated Processing Unit - Tier 3
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <opencomputers:material:10> * 64,
        <opencomputers:material:11> * 8,
        <ore:circuitEv>,
        <metaitem:plateTitanium>
    ])
    .fluidInputs(<liquid:tin> * 288)
    .outputs([<opencomputers:component:17>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <opencomputers:material:10> * 64,
        <opencomputers:material:11> * 8,
        <ore:circuitEv>,
        <metaitem:plateTitanium>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<opencomputers:component:17>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# ALU
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.good>,
        <metaitem:plate.integrated_logic_circuit> * 8
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:material:10>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.good>,
        <metaitem:plate.integrated_logic_circuit> * 8
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:material:10>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# CU
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:6> * 2,
        <ore:circuitLv>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:material:11>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:6> * 2,
        <ore:circuitLv>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:material:11>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Transistor
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:boltIron> * 3,
        <minecraft:redstone>
    ])
    .outputs([<opencomputers:material:6>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();

# Card Base
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:circuitLv>,
        <metaitem:circuit_board.good>,
        <metaitem:foilElectrum>
    ])
    .outputs([<opencomputers:material:5>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Data Card - Tier 1
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:7>,
        <opencomputers:material:10> * 4,
        <metaitem:boltElectrum> * 8
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:card:10>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:7>,
        <opencomputers:material:10> * 4,
        <metaitem:boltElectrum> * 8
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:card:10>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Data Card - Tier 2
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:8>,
        <opencomputers:component>,
        <metaitem:boltElectrum> * 16
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:card:11>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:8>,
        <opencomputers:component>,
        <metaitem:boltElectrum> * 16
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:card:11>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Data Card - Tier 3
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:9>,
        <opencomputers:component:1>,
        <metaitem:boltElectrum> * 32
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:card:12>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:9>,
        <opencomputers:component:1>,
        <metaitem:boltElectrum> * 32
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:card:12>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Memory Card - Tier 1
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.good>,
        <metaitem:plate.random_access_memory> * 16,
        <opencomputers:material:7> * 2,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:component:6>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.good>,
        <metaitem:plate.random_access_memory> * 16,
        <opencomputers:material:7> * 2,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:component:6>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Memory Card - Tier 1.5
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plate.random_access_memory> * 32,
        <opencomputers:material:7> * 4,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:component:7>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <metaitem:plate.random_access_memory> * 16,
        <opencomputers:material:7> * 2,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:component:7>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Memory Card - Tier 2
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:plate.random_access_memory> * 64,
        <opencomputers:material:8> * 2,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:component:8>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:plate.random_access_memory> * 64,
        <opencomputers:material:8> * 2,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:component:8>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Memory Card - Tier 2.5
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:plate.random_access_memory> * 64,
        <metaitem:plate.nand_memory_chip> * 16,
        <opencomputers:material:8> * 4,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:component:9>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <metaitem:plate.random_access_memory> * 64,
        <metaitem:plate.nand_memory_chip> * 16,
        <opencomputers:material:8> * 4,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:component:9>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Memory Card - Tier 3
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <metaitem:plate.random_access_memory> * 64,
        <metaitem:plate.nand_memory_chip> * 32,
        <opencomputers:material:9> * 2,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:component:10>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <metaitem:plate.random_access_memory> * 64,
        <metaitem:plate.nand_memory_chip> * 32,
        <opencomputers:material:9> * 2,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:component:10>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Memory Card - Tier 3.5
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <metaitem:plate.random_access_memory> * 64,
        <metaitem:plate.nand_memory_chip> * 64,
        <opencomputers:material:9> * 4,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:component:11>])
    .duration(100)
    .EUt(7680)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <metaitem:plate.random_access_memory> * 64,
        <metaitem:plate.nand_memory_chip> * 64,
        <opencomputers:material:9> * 4,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:component:11>])
    .duration(100)
    .EUt(7680)
    .buildAndRegister();

# Graphics Card - Tier 1
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:10> * 8,
        <opencomputers:material:11>,
        <opencomputers:material:7>,
        <opencomputers:component:6>
    ])
    .fluidInputs(<liquid:tin> * 288)
    .outputs([<opencomputers:card:1>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:10> * 8,
        <opencomputers:material:11>,
        <opencomputers:material:7>,
        <opencomputers:component:6>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<opencomputers:card:1>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Graphics Card - Tier 2
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:10> * 16,
        <opencomputers:material:11> * 2,
        <opencomputers:material:8> * 2,
        <opencomputers:component:8>
    ])
    .fluidInputs(<liquid:tin> * 288)
    .outputs([<opencomputers:card:2>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:10> * 16,
        <opencomputers:material:11> * 2,
        <opencomputers:material:8> * 2,
        <opencomputers:component:8>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<opencomputers:card:2>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Graphics Card - Tier 3
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:10> * 32,
        <opencomputers:material:11> * 4,
        <opencomputers:material:9> * 4,
        <opencomputers:component:10>
    ])
    .fluidInputs(<liquid:tin> * 288)
    .outputs([<opencomputers:card:3>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:10> * 32,
        <opencomputers:material:11> * 4,
        <opencomputers:material:9> * 4,
        <opencomputers:component:10>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<opencomputers:card:3>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Redstone Card - Tier 1
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:7> * 2,
        <opencomputers:cable> * 2,
        <metaitem:plate.integrated_logic_circuit> * 4,
        <metaitem:cover.activity.detector>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:card:4>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:7> * 2,
        <opencomputers:cable> * 2,
        <metaitem:plate.integrated_logic_circuit> * 4,
        <metaitem:cover.activity.detector>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:card:4>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Redstone Card - Tier 2
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:8> * 2,
        <opencomputers:cable> * 2,
        <metaitem:plate.integrated_logic_circuit> * 16,
        <metaitem:cover.activity.detector> * 2
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:card:5>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:material:8> * 2,
        <opencomputers:cable> * 2,
        <metaitem:plate.integrated_logic_circuit> * 16,
        <metaitem:cover.activity.detector> * 2
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:card:5>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Network Card
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:cable> * 2,
        <opencomputers:material:9>,
        <metaitem:boltElectrum> * 8
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:card:6>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:5>,
        <opencomputers:cable> * 2,
        <opencomputers:material:9>,
        <metaitem:boltElectrum> * 8
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:card:6>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Wireless Network Card - Tier 1
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:card:6>,
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:8>,
        <metaitem:emitter.mv>,
        <metaitem:sensor.mv>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:upgrade:31>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:card:6>,
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:8>,
        <metaitem:emitter.mv>,
        <metaitem:sensor.mv>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:upgrade:31>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Wireless Network Card - Tier 2
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:card:6>,
        <metaitem:circuit_board.advanced>,
        <opencomputers:material:9>,
        <metaitem:emitter.hv>,
        <metaitem:sensor.hv>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:card:7>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:card:6>,
        <metaitem:circuit_board.advanced>,
        <opencomputers:material:9>,
        <metaitem:emitter.hv>,
        <metaitem:sensor.hv>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:card:7>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Internet Card
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:card:7>,
        <opencomputers:material:13>,
        <opencomputers:material:9>,
        <projectred-illumination:light_button:14>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:card:8>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:card:7>,
        <opencomputers:material:13>,
        <opencomputers:material:9>,
        <projectred-illumination:light_button:14>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:card:8>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Linked Card
recipes.removeByRecipeName("opencomputers:card89");
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:card:7>,
        <opencomputers:material:11> * 2,
        <opencomputers:material:13>
    ])
    .outputs([<opencomputers:card:9>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Interweb
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:platePlastic>,
        <minecraft:string> * 8
    ])
    .fluidInputs(<liquid:glue> * 576)
    .outputs([<opencomputers:material:13>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Component Bus - Tier 1
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.good>,
        <opencomputers:material:7> * 2,
        <opencomputers:material:11>,
        <metaitem:boltRedAlloy> * 4
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:component:3>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.good>,
        <opencomputers:material:7> * 2,
        <opencomputers:material:11>,
        <metaitem:boltRedAlloy> * 4
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:component:3>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Component Bus - Tier 2
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:8> * 2,
        <opencomputers:material:11> * 4,
        <opencomputers:component:8>,
        <metaitem:boltElectrum> * 8
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:component:4>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:8> * 2,
        <opencomputers:material:11> * 4,
        <opencomputers:component:8>,
        <metaitem:boltElectrum> * 8
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:component:4>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Component Bus - Tier 3
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <opencomputers:material:9> * 2,
        <opencomputers:material:11> * 8,
        <opencomputers:component:10>,
        <metaitem:boltDiamond> * 16
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:component:5>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <opencomputers:material:9> * 2,
        <opencomputers:material:11> * 8,
        <opencomputers:component:10>,
        <metaitem:boltDiamond> * 16
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:component:5>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Microchip - Tier 1
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.good>,
        <ore:circuitLv>,
        <opencomputers:material:6> * 4,
        <metaitem:foilElectrum> * 4
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:material:7>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.good>,
        <ore:circuitLv>,
        <opencomputers:material:6> * 4,
        <metaitem:foilElectrum> * 4
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:material:7>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

# Microchip - Tier 2
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <ore:circuitMv>,
        <opencomputers:material:6> * 8,
        <metaitem:foilElectrum> * 8
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:material:8>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <ore:circuitMv>,
        <opencomputers:material:6> * 8,
        <metaitem:foilElectrum> * 8
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:material:8>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Microchip - Tier 3
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <ore:circuitHv>,
        <ore:componentTransistor> * 8,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:material:9>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <ore:circuitHv>,
        <ore:componentTransistor> * 8,
        <metaitem:foilElectrum> * 16
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs([<opencomputers:material:9>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Disk Drive
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:diskdrive>,
        <opencomputers:material:7>,
        <metaitem:circuit_board.advanced>,
        <enderio:block_dark_iron_bars> * 2,
        <metaitem:plateObsidian> * 4
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:component:20>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Terminal Server
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <opencomputers:card:7> * 2,
        <opencomputers:material:8> * 2,
        <metaitem:plateObsidian> * 4,
        <metaitem:boltElectrum> * 16
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:component:19>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();

# Server - Tier 1
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:case1>,
        <opencomputers:material:7> * 2,
        <opencomputers:material:8>,
        <opencomputers:component:9>
    ])
    .fluidInputs(<liquid:plastic> * 144)
    .outputs([<opencomputers:component:13>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Server - Tier 2
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.advanced>,
        <opencomputers:case2>,
        <opencomputers:material:8> * 2,
        <opencomputers:material:9>,
        <opencomputers:component:10>
    ])
    .fluidInputs(<liquid:plastic> * 144)
    .outputs([<opencomputers:component:14>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Server - Tier 3
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:circuit_board.extreme>,
        <opencomputers:case3>,
        <opencomputers:material:9> * 2,
        <ore:circuitEv>,
        <opencomputers:component:11>
    ])
    .fluidInputs(<liquid:plastic> * 144)
    .outputs([<opencomputers:component:15>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();


########################################
# Blocks
########################################
# OC Conduit
assembler.recipeBuilder()
    .inputs([
        <opencomputers:cable>,
        <metaitem:plateRedstoneAlloy>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_opencomputers_conduit>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Cable
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:cableGtSingleGold>,
        <metaitem:dustTinyRedAlloy>
    ])
    .outputs([<opencomputers:cable>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:cableGtSingleGold>,
        <metaitem:dustTinyEmerald>
    ])
    .outputs([<opencomputers:cable>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Adapter
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <gregtech:machine_casing:2>,
        <metaitem:circuit_board.plastic>,
        <opencomputers:cable> * 2,
        <opencomputers:material:7>
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:adapter>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Capacitor
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <gregtech:machine_casing:1>,
        <metaitem:battery.re.ulv.tantalum> * 8,
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:6>,
        <opencomputers:cable> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:capacitor>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Charger
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <gregtech:machine_casing:1>,
        <opencomputers:capacitor>,
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:9>,
        <opencomputers:cable> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:charger>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Power Distributor
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <gregtech:machine_casing:3>,
        <opencomputers:capacitor>,
        <metaitem:circuit_board.advanced>,
        <metaitem:plateStainlessSteel>,
        <opencomputers:cable> * 2,
        <ore:circuitHv>
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:powerdistributor>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Power Converter
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:transformer.mv>,
        <metaitem:circuit_board.plastic> * 2,
        <opencomputers:material:8> * 2,
        <metaitem:plateAluminium> * 2,
        <opencomputers:cable> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:powerconverter>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Waypoint
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <gregtech:machine_casing:2>,
        <opencomputers:material:13>,
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:7>,
        <opencomputers:material:6> * 2,
        <opencomputers:cable> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:waypoint>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Net Splitter
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:buffer.mv>,
        <opencomputers:upgrade:18>,
        <opencomputers:upgrade:24>,
        <metaitem:board.plastic> * 2,
        <opencomputers:cable> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:transposer> * 2])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Electronics Assembler
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <gregtech:machine_casing:2>,
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:8>,
        <metaitem:robot.arm.mv> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:assembler>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Screen - Tier 1
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <gregtech:machine_casing:2>,
        <metaitem:cover.screen>,
        <ore:circuitMv> * 2,
        <opencomputers:material:6> * 2
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:screen1>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <gregtech:machine_casing:2>,
        <metaitem:cover.screen>,
        <ore:circuitMv> * 2,
        <opencomputers:material:6> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:screen1>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Screen - Tier 2
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:screen1>,
        <ore:circuitHv> * 2,
        <ore:componentTransistor> * 2
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:screen2>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:screen1>,
        <ore:circuitHv> * 2,
        <ore:componentTransistor> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:screen2>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Screen - Tier 3
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:screen2>,
        <ore:circuitEv> * 2,
        <metaitem:component.advanced_smd.transistor>
    ])
    .fluidInputs(<liquid:tin> * 144)
    .outputs([<opencomputers:screen3>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:screen2>,
        <ore:circuitEv> * 2,
        <metaitem:component.advanced_smd.transistor>
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:screen3>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();

# Disk Drive
assembler.recipeBuilder()
    .inputs([
        <gregtech:machine_casing:2>,
        <opencomputers:material:8> * 2,
        <metaitem:electric.motor.mv>,
        <metaitem:springSmallCopper>,
        <metaitem:stickIronMagnetic>,
        <metaitem:lensGlass>
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:diskdrive>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Geolyzer
assembler.recipeBuilder()
    .inputs([
        <gregtech:machine_casing:2>,
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:8>,
        <opencomputers:tool>,
        <metaitem:sensor.mv> * 2,
        <metaitem:lensDiamond> * 2
    ])
    .outputs([<opencomputers:geolyzer>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Motion Sensor
assembler.recipeBuilder()
    .inputs([
        <metaitem:circuit_board.plastic>,
        <opencomputers:component:1>,
        <metaitem:platePlastic> * 2,
        <opencomputers:cable> * 2,
        <minecraft:daylight_detector> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:motionsensor>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Power Distributor
assembler.recipeBuilder()
    .inputs([
        <gregtech:machine_casing:2>,
        <metaitem:circuit_board.plastic>,
        <metaitem:plateAluminium> * 2,
        <opencomputers:cable> * 2,
        <ore:circuitHv>
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:motionsensor>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Raid
assembler.recipeBuilder()
    .inputs([
        <opencomputers:diskdrive>,
        <opencomputers:component:2>,
        <opencomputers:component:6>,
        <metaitem:platePlastic> * 4,
        <opencomputers:cable> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:raid>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Redstone I/O
assembler.recipeBuilder()
    .inputs([
        <gregtech:machine_casing:2>,
        <metaitem:circuit_board.plastic> * 2,
        <opencomputers:material:8> * 2,
        <metaitem:plateRedstone> * 2,
        <opencomputers:card:4>,
        <metaitem:cover.activity.detector>
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:redstone>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Relay
assembler.recipeBuilder()
    .inputs([
        <gregtech:machine_casing:2>,
        <metaitem:circuit_board.plastic> * 2,
        <metaitem:platePlastic> * 2,
        <opencomputers:card:7>,
        <opencomputers:material:8>,
        <opencomputers:cable> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:relay>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Rack
assembler.recipeBuilder()
    .inputs([
        <opencomputers:relay>,
        <opencomputers:powerdistributor>,
        <opencomputers:card:7>,
        <metaitem:circuit_board.plastic> * 2,
        <metaitem:rotorSteel> * 4,
        <metaitem:plateSteel> * 4
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:rack>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Computer Case - Tier 1
assembler.recipeBuilder()
    .inputs([
        <gregtech:machine_casing:2>,
        <metaitem:plateAluminium> * 4,
        <metaitem:circuit_board.plastic>,
        <opencomputers:material:7>,
        <metaitem:rotorSteel> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:case1>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Computer Case - Tier 2
assembler.recipeBuilder()
    .inputs([
        <gregtech:machine_casing:3>,
        <metaitem:plateStainlessSteel> * 4,
        <metaitem:circuit_board.advanced>,
        <opencomputers:material:8>,
        <metaitem:rotorSteel> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:case2>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Computer Case - Tier 3
assembler.recipeBuilder()
    .inputs([
        <gregtech:machine_casing:4>,
        <metaitem:plateTitanium> * 4,
        <metaitem:circuit_board.extreme>,
        <opencomputers:material:9>,
        <metaitem:rotorSteel> * 2
    ])
    .fluidInputs(<liquid:plastic> * 72)
    .outputs([<opencomputers:case3>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();
