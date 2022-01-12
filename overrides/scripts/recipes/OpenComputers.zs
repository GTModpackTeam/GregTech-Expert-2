# Imoprts
import mods.jei.JEI;



########################################
# Items
########################################
# Memory Tier1
recipes.remove(<ore:oc:ram1>);
assembler.recipeBuilder().
    inputs([
        <ore:oc:circuitChip1> * 3,
        <ore:oc:materialCircuitBoard> * 3
    ]).
    outputs([<opencomputers:component:6>]).
    duration(200).
    EUt(30).
    buildAndRegister();

# Transistor
recipes.remove(<ore:oc:materialTransistor>);
assembler.recipeBuilder().
    inputs([
        <ore:stickIron> * 3,
        <ore:dustRedstone>
    ]).
    outputs([<opencomputers:material:6>]).
    duration(200).
    EUt(30).
    buildAndRegister();

# Microchip Tier1
recipes.remove(<ore:oc:circuitChip1>);
assembler.recipeBuilder().
    inputs([
        <ore:oc:materialTransistor> * 4,
        <ore:circuitBasic>
    ]).
    outputs([<opencomputers:material:7>]).
    duration(200).
    EUt(30).
    buildAndRegister();

# Microchip Tier2
recipes.remove(<ore:oc:circuitChip2>);
assembler.recipeBuilder().
    inputs([
        <ore:oc:materialTransistor> * 8,
        <ore:circuitGood>
    ]).
    outputs([<opencomputers:material:8>]).
    duration(200).
    EUt(120).
    buildAndRegister();

# Microchip Tier3
recipes.remove(<ore:oc:circuitChip3>);
assembler.recipeBuilder().
    inputs([
        <ore:oc:materialTransistor> * 16,
        <ore:circuitAdvanced>
    ]).
    outputs([<opencomputers:material:9>]).
    duration(200).
    EUt(480).
    buildAndRegister();

# ALU
recipes.remove(<ore:oc:materialALU>);
assembler.recipeBuilder().
    inputs([
        <projectred-integration:gate:26> * 3,
        <ore:circuitBasic>
    ]).
    outputs([<opencomputers:material:10>]).
    duration(200).
    EUt(30).
    buildAndRegister();

# CU
recipes.remove(<ore:oc:materialCU>);
assembler.recipeBuilder().
    inputs([
        <ore:oc:materialTransistor> * 6,
        <ore:circuitElite>
    ]).
    outputs([<opencomputers:material:11>]).
    duration(200).
    EUt(30).
    buildAndRegister();



########################################
# Blocks
########################################
# Cable
recipes.remove(<ore:oc:cable>);
assembler.recipeBuilder().
    inputs([
        <ore:wireGtSingleCopper> * 8,
        <ore:dustEmerald>
    ]).
    outputs([<opencomputers:cable>]).
    duration(200).
    EUt(30).
    buildAndRegister();
