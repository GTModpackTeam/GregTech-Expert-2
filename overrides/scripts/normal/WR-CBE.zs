# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Obsidian Stick
<ore:obsidianRod>.remove(<wrcbe:material:0>);
JEI.removeAndHide(<wrcbe:material:0>);

# Stone Bowl
recipes.remove(<wrcbe:material:1>);
recipes.addShaped(<wrcbe:material:1>, [
    [<metaitem:plateStone>, null, <metaitem:plateStone>],
    [<metaitem:plateStone>, <ore:craftingToolHardHammer>, <metaitem:plateStone>],
    [<metaitem:plateStone>, <metaitem:plateStone>, <metaitem:plateStone>]
]);
lathe.recipeBuilder()
    .inputs([<minecraft:stone_slab>])
    .outputs([
        <wrcbe:material:1>,
        <metaitem:dustSmallStone>
    ])
    .duration(500)
    .EUt(7)
    .buildAndRegister();

# REther Pearl
recipes.remove(<wrcbe:material:2>);
chemical_reactor.recipeBuilder()
    .inputs([
        <minecraft:ender_pearl>,
        <minecraft:glowstone_dust>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<wrcbe:material:2>])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

# Wirreless Transceiver
recipes.remove(<wrcbe:material:3>);
assembler.recipeBuilder()
    .inputs([
        <metaitem:stickTungstenSteel>,
        <wrcbe:material:2>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<wrcbe:material:3>])
    .duration(600)
    .EUt(120)
    .buildAndRegister();

# Blaze Transceiver
recipes.remove(<wrcbe:material:4>);
assembler.recipeBuilder()
    .inputs([
        <minecraft:blaze_rod>,
        <wrcbe:material:2>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<wrcbe:material:4>])
    .duration(600)
    .EUt(120)
    .buildAndRegister();

# Receiver Dish
recipes.remove(<wrcbe:material:5>);
assembler.recipeBuilder()
    .inputs([
        <wrcbe:material:1>,
        <wrcbe:material:3>
    ])
    .fluidInputs([<liquid:ender_pearl> * 144])
    .outputs([<wrcbe:material:5>])
    .duration(600)
    .EUt(256)
    .buildAndRegister();

# Blaze Receiver Dish
recipes.remove(<wrcbe:material:6>);
assembler.recipeBuilder()
    .inputs([
        <wrcbe:material:1>,
        <wrcbe:material:4>
    ])
    .fluidInputs([<liquid:ender_pearl> * 144])
    .outputs([<wrcbe:material:6>])
    .duration(600)
    .EUt(256)
    .buildAndRegister();

# Triangulator
recipes.remove(<wrcbe:triangulator>);
assembler.recipeBuilder()
    .inputs([
        <minecraft:compass>,
        <wrcbe:material:3>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<wrcbe:triangulator>])
    .duration(600)
    .EUt(120)
    .buildAndRegister();

# Remote
recipes.remove(<wrcbe:remote>);
recipes.addShaped(<wrcbe:remote>, [
    [<ore:craftingToolScrewdriver>, <wrcbe:material:3>, <ore:craftingToolFile>],
    [<ore:circuitHv>, <metaitem:cover.screen>, <ore:circuitHv>],
    [<metaitem:plateTungstenSteel>, <metaitem:screwTungstenSteel>, <metaitem:plateTungstenSteel>]
]);

# Sniffer
recipes.remove(<wrcbe:sniffer>);
recipes.addShaped(<wrcbe:sniffer>, [
    [<wrcbe:material:5>, <wrcbe:material:3>, <wrcbe:material:5>],
    [<metaitem:plateTungstenSteel>, <metaitem:stickTungstenSteel>, <metaitem:plateTungstenSteel>],
    [<metaitem:plateStone>, <metaitem:plateStone>, <metaitem:plateStone>]
]);

# Tracker
recipes.remove(<wrcbe:tracker>);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:plateObsidian> * 3,
        <wrcbe:material:3>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<wrcbe:tracker>])
    .duration(600)
    .EUt(120)
    .buildAndRegister();

# REP
JEI.removeAndHide(<wrcbe:rep>);

# Private Suiffer
recipes.remove(<wrcbe:p_sniffer>);
recipes.addShaped(<wrcbe:p_sniffer>, [
    [<wrcbe:material:6>, <wrcbe:material:4>, <wrcbe:material:6>],
    [<metaitem:plateTungstenSteel>, <metaitem:stickTungstenSteel>, <metaitem:plateTungstenSteel>],
    [<metaitem:plateStone>, <metaitem:plateStone>, <metaitem:plateStone>]
]);

# Map
recipes.remove(<wrcbe:empty_map>);
assembler.recipeBuilder()
    .inputs([
        <wrcbe:triangulator>,
        <minecraft:paper> * 8
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<wrcbe:map>])
    .duration(300)
    .EUt(64)
    .buildAndRegister();



########################################
# Blocks
########################################
# Wireless Transmitter
recipes.remove(<wrcbe:wireless_logic:0>);
assembler.recipeBuilder()
    .inputs([
        <metaitem:plateStone>,
        <wrcbe:material:3>
    ])
    .fluidInputs([<liquid:ender_pearl> * 144])
    .outputs([<wrcbe:wireless_logic:0>])
    .duration(600)
    .EUt(256)
    .buildAndRegister();

# Wireless Receiver
recipes.remove(<wrcbe:wireless_logic:1>);
assembler.recipeBuilder()
    .inputs([
        <metaitem:plateStone>,
        <wrcbe:material:5>
    ])
    .fluidInputs([<liquid:ender_pearl> * 144])
    .outputs([<wrcbe:wireless_logic:1>])
    .duration(600)
    .EUt(256)
    .buildAndRegister();

# Wireless Jammer
recipes.remove(<wrcbe:wireless_logic:2>);
assembler.recipeBuilder()
    .inputs([
        <metaitem:plateStone>,
        <wrcbe:material:2>
    ])
    .fluidInputs([<liquid:ender_pearl> * 144])
    .outputs([<wrcbe:wireless_logic:2>])
    .duration(600)
    .EUt(256)
    .buildAndRegister();
