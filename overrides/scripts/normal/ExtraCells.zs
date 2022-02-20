#packmode normal
# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Fluid Storage Cells(deprecated)
JEI.hide(<extracells:storage.fluid>);
JEI.hide(<extracells:storage.fluid:1>);
JEI.hide(<extracells:storage.fluid:2>);
JEI.hide(<extracells:storage.fluid:3>);

# Fluid Storage Component(deprecated)
JEI.hide(<extracells:storage.component:4>);
JEI.hide(<extracells:storage.component:5>);
JEI.hide(<extracells:storage.component:6>);
JEI.hide(<extracells:storage.component:7>);

# Wireless Fluid Terminal
JEI.removeAndHide(<extracells:terminal.fluid.wireless>);
JEI.addDescription(<extracells:terminal.fluid.wireless>, "To change in a single craft.");
<extracells:terminal.fluid.wireless>.addTooltip(format.green("To change in a single craft."));

# Wireless Universal Terminal
JEI.removeAndHide(<extracells:terminal.universal.wireless>);
JEI.addDescription(<extracells:terminal.universal.wireless>, "To change in a single craft.");
<extracells:terminal.universal.wireless>.addTooltip(format.green("To change in a single craft."));

# Advanced Storage Housing
recipes.remove(<extracells:storage.casing>);
recipes.addShaped(<extracells:storage.casing>, [
    [<ore:gtce.tool.screwdrivers>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
    [<ore:plateTungstenSteel>, null, <ore:plateTungstenSteel>],
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:gtce.tool.hard.hammers>]
]);
recipes.addShaped(<extracells:storage.casing>, [
    [<ore:gtce.tool.hard.hammers>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
    [<ore:plateTungstenSteel>, null, <ore:plateTungstenSteel>],
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:gtce.tool.screwdrivers>]
]);

# Fluid Housing
recipes.remove(<extracells:storage.casing:1>);
recipes.addShaped(<extracells:storage.casing:1>, [
    [<ore:gtce.tool.screwdrivers>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:gtce.tool.hard.hammers>]
]);
recipes.addShaped(<extracells:storage.casing:1>, [
    [<ore:gtce.tool.hard.hammers>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:gtce.tool.screwdrivers>]
]);

# 256k Storage Cell
recipes.removeShaped(<extracells:storage.physical>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component>, <ore:dustFluix>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);

# 1024k Storage Cell
recipes.removeShaped(<extracells:storage.physical:1>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component:1>, <ore:dustFluix>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);

# 4096k Storage Cell
recipes.removeShaped(<extracells:storage.physical:2>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component:2>, <ore:dustFluix>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);

# 16384k Storage Cell
recipes.removeShaped(<extracells:storage.physical:3>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component:3>, <ore:dustFluix>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);

# 256k Fluid Cell
recipes.removeShaped(<extracells:storage.fluid:4>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component:8>, <ore:dustFluix>],
    [<extracells:certustank>, <extracells:certustank>, <extracells:certustank>]
]);

# 1024k Fluid Cell
recipes.removeShaped(<extracells:storage.fluid:5>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component:9>, <ore:dustFluix>],
    [<extracells:certustank>, <extracells:certustank>, <extracells:certustank>]
]);

# 4096k Fluid Cell
recipes.removeShaped(<extracells:storage.fluid:6>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component:10>, <ore:dustFluix>],
    [<extracells:certustank>, <extracells:certustank>, <extracells:certustank>]
]);

# 256k Storage Component
recipes.remove(<extracells:storage.component>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitExtreme> * 4,
        <ore:plateTitanium> * 4,
        <ore:dustCertusQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitExtreme> * 4,
        <appliedenergistics2:material:38> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component>])
    .duration(400)
    .EUt(7680)
    .buildAndRegister();

# 1024k Storage Component
recipes.remove(<extracells:storage.component:1>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitElite> * 4,
        <ore:plateTungstenSteel> * 4,
        <ore:dustCertusQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:1>])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitElite> * 4,
        <extracells:storage.component> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:1>])
    .duration(400)
    .EUt(7680)
    .buildAndRegister();

# 4096k Storage Component
recipes.remove(<extracells:storage.component:2>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitMaster> * 4,
        <ore:plateTungstenSteel> * 4,
        <ore:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:2>])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitMaster> * 4,
        <extracells:storage.component:1> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:2>])
    .duration(400)
    .EUt(30720)
    .buildAndRegister();

# 16384k Storage Component
recipes.remove(<extracells:storage.component:3>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUltimate> * 4,
        <ore:plateNeutronium> * 4,
        <ore:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:3>])
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitUltimate> * 4,
        <extracells:storage.component:2> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:3>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 256k Fluid Component
recipes.remove(<extracells:storage.component:8>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitExtreme> * 4,
        <ore:plateTitanium> * 4,
        <ore:dustNetherQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:8>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitExtreme> * 4,
        <appliedenergistics2:material:57> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:8>])
    .duration(400)
    .EUt(7680)
    .buildAndRegister();

# 1024k Fluid Component
recipes.remove(<extracells:storage.component:9>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitElite> * 4,
        <ore:plateTungstenSteel> * 4,
        <ore:dustNetherQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:9>])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitElite> * 4,
        <extracells:storage.component:8> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:9>])
    .duration(400)
    .EUt(7680)
    .buildAndRegister();

# 4096k Fluid Component
recipes.remove(<extracells:storage.component:10>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitMaster> * 4,
        <ore:plateNeutronium> * 4,
        <ore:dustNetherQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:10>])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitMaster> * 4,
        <extracells:storage.component:9> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:10>])
    .duration(400)
    .EUt(30720)
    .buildAndRegister();

# Recycle - Advanced Storage Housing
macerator.recipeBuilder()
    .inputs([<extracells:storage.casing>])
    .outputs([<metaitem:dustTungstenCarbide>])
    .duration(100)
    .EUt(16)
    .buildAndRegister();

# Recycle - Fluid Housing
macerator.recipeBuilder()
    .inputs([<extracells:storage.casing:1>])
    .outputs([<metaitem:dustStainlessSteel>])
    .duration(100)
    .EUt(16)
    .buildAndRegister();



########################################
# Blocks
########################################
# Certus Quartz Tank
JEI.removeAndHide(<extracells:certustank>);

# Fluid Interface
JEI.hide(<extracells:ecbaseblock>);

# Deprecated panels
JEI.hide(<extracells:part.base>);
JEI.hide(<extracells:part.base:1>);
JEI.hide(<extracells:part.base:2>);
JEI.hide(<extracells:part.base:3>);
JEI.hide(<extracells:part.base:4>);
JEI.hide(<extracells:part.base:5>);
JEI.hide(<extracells:part.base:6>);
JEI.hide(<extracells:part.base:9>);

# ME Drive Fixture
JEI.removeAndHide(<extracells:part.base:12>);
JEI.addDescription(<extracells:part.base:12>, "Lag device. Use OreDict Storage bus.");
<extracells:part.base:12>.addTooltip(format.green("Lag device. Use OreDict Storage bus."));

# ME Drive Fixture
recipes.remove(<extracells:part.base:7>);
recipes.addShaped(<extracells:part.base:7>, [
    [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>],
    [<appliedenergistics2:part:120>, <appliedenergistics2:drive>, <appliedenergistics2:part:120>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>]
]);

# ME Energy Cell Fixture
recipes.remove(<extracells:part.base:8>);
recipes.addShaped(<extracells:part.base:8>, [
    [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>],
    [<appliedenergistics2:part:120>, <appliedenergistics2:energy_cell>, <appliedenergistics2:part:120>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>]
]);

# Fluid Vibration Chamber
recipes.remove(<extracells:vibrantchamberfluid>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitAdvanced> * 2,
        <ore:cableGtSingleGold> * 2,
        <metaitem:electric.pump.hv> * 2,
        <ore:wireGtDoubleKanthal> * 4,
        <ore:plateStainlessSteel> * 7
    ])
    .outputs([<extracells:vibrantchamberfluid>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Obsidian ME Drive
recipes.remove(<extracells:hardmedrive>);
recipes.addShaped(<extracells:hardmedrive>, [
    [<enderio:block_reinforced_obsidian>, <ore:ae2.cable.dense.covered>, <enderio:block_reinforced_obsidian>],
    [<enderio:block_reinforced_obsidian>, <appliedenergistics2:drive>, <enderio:block_reinforced_obsidian>],
    [<enderio:block_reinforced_obsidian>, <minecraft:obsidian>, <enderio:block_reinforced_obsidian>]
]);
