#packmode normal
# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Wrench
recipes.remove(<opencomputers:wrench>);
recipes.addShaped(<opencomputers:wrench>, [
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [null, <opencomputers:material:8>, null],
    [null, <ore:ingotIron>, null]
]);

# Memory Tier1
recipes.remove(<opencomputers:component:6>);
assembler.recipeBuilder()
    .circuit(0)
    .inputs([
        <opencomputers:material:7> * 3,
        <gregtech:meta_item_1:401> * 3
    ])
    .outputs([<opencomputers:component:6>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();

# Transistor
recipes.remove(<opencomputers:material:6>);
assembler.recipeBuilder()
    .circuit(0)
    .inputs([
        <ore:boltIron> * 3,
        <ore:dustRedstone>
    ])
    .outputs([<opencomputers:material:6>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();

# Microchip Tier1
recipes.remove(<opencomputers:material:7>);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <opencomputers:material:6> * 4,
        <ore:circuitBasic>
    ])
    .outputs([<opencomputers:material:7>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();

# Microchip Tier2
recipes.remove(<opencomputers:material:8>);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <opencomputers:material:6> * 8,
        <ore:circuitGood>
    ])
    .outputs([<opencomputers:material:8>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

# Microchip Tier3
recipes.remove(<opencomputers:material:9>);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <opencomputers:material:6> * 16,
        <ore:circuitAdvanced>
    ])
    .outputs([<opencomputers:material:9>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# ALU
recipes.remove(<opencomputers:material:10>);
assembler.recipeBuilder()
    .circuit(0)
    .inputs([
        <projectred-integration:gate:26> * 3,
        <ore:circuitBasic>
    ])
    .outputs([<opencomputers:material:10>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();

# CU
recipes.remove(<opencomputers:material:11>);
assembler.recipeBuilder()
    .circuit(0)
    .inputs([
        <opencomputers:material:6> * 6,
        <ore:circuitBasic>
    ])
    .outputs([<opencomputers:material:11>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();



########################################
# Blocks
########################################
# Disassembler
JEI.removeAndHide(<opencomputers:disassembler>);

# Cable
recipes.remove(<opencomputers:cable>);
assembler.recipeBuilder()
    .inputs([
        <ore:wireGtSingleCopper> * 8,
        <ore:dustEmerald>
    ])
    .outputs([<opencomputers:cable>])
    .duration(200)
    .EUt(30)
    .buildAndRegister();
