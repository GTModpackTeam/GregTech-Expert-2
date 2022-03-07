#packmode normal
# Imports
import mods.jei.JEI;
import mods.zenutils.I18n;



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
JEI.addDescription(<extracells:terminal.fluid.wireless>, I18n.format("modpack.ec2.wireless_terminal.tooltip.1"));
<extracells:terminal.fluid.wireless>.addTooltip(format.green(I18n.format("modpack.ec2.wireless_terminal.tooltip.1")));

# Wireless Universal Terminal
JEI.removeAndHide(<extracells:terminal.universal.wireless>);
JEI.addDescription(<extracells:terminal.universal.wireless>, I18n.format("modpack.ec2.wireless_terminal.tooltip.1"));
<extracells:terminal.universal.wireless>.addTooltip(format.green(I18n.format("modpack.ec2.wireless_terminal.tooltip.1")));

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
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/256k");
recipes.removeByRecipeName("extracells:storagecells/item/extracasing/256k");
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUltimate> * 4,
        <ore:plateNaquadahAlloy> * 4,
        <ore:dustCertusQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component>])
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitUltimate> * 4,
        <appliedenergistics2:material:38> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:0>,
        <extracells:storage.component:0>
    ])
    .outputs([<extracells:storage.physical:0>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracells:storage.physical:0>])
    .outputs([
        <extracells:storage.casing:0>,
        <extracells:storage.component:0>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# 1024k Storage Cell
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/1024k");
recipes.removeByRecipeName("extracells:storagecells/item/extracasing/1024k");
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUltimate> * 4,
        <ore:plateAmericium> * 4,
        <ore:dustCertusQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:1>])
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitUltimate> * 4,
        <extracells:storage.component> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:1>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:0>,
        <extracells:storage.component:1>
    ])
    .outputs([<extracells:storage.physical:1>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracells:storage.physical:1>])
    .outputs([
        <extracells:storage.casing:0>,
        <extracells:storage.component:1>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# 4096k Storage Cell
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/4096k");
recipes.removeByRecipeName("extracells:storagecells/item/extracasing/4096k");
assembler.recipeBuilder()
    .inputs([
        <ore:circuitSuper> * 4,
        <ore:plateDarmstadtium> * 4,
        <ore:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:2>])
    .duration(200)
    .EUt(491520)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitSuper> * 4,
        <extracells:storage.component:1> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:2>])
    .duration(400)
    .EUt(491520)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:0>,
        <extracells:storage.component:2>
    ])
    .outputs([<extracells:storage.physical:2>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracells:storage.physical:2>])
    .outputs([
        <extracells:storage.casing:0>,
        <extracells:storage.component:2>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# 16384k Storage Cell
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/16384k");
recipes.removeByRecipeName("extracells:storagecells/item/extracasing/16384k");
assembler.recipeBuilder()
    .inputs([
        <ore:circuitSuper> * 4,
        <ore:plateNeutronium> * 4,
        <ore:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:3>])
    .duration(200)
    .EUt(491520)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitSuper> * 4,
        <extracells:storage.component:2> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:3>])
    .duration(400)
    .EUt(491520)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:0>,
        <extracells:storage.component:3>
    ])
    .outputs([<extracells:storage.physical:3>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracells:storage.physical:3>])
    .outputs([
        <extracells:storage.casing:0>,
        <extracells:storage.component:3>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# 256k Fluid Cell
recipes.removeByRecipeName("extracells:storagecells/fluid/owncasing/256k");
recipes.removeByRecipeName("extracells:storagecells/fluid/extracasing/256k");
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUltimate> * 4,
        <ore:plateNaquadahAlloy> * 4,
        <ore:dustNetherQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:8>])
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitUltimate> * 4,
        <appliedenergistics2:material:57> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:8>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:1>,
        <extracells:storage.component:8>
    ])
    .outputs([<extracells:storage.fluid:4>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracells:storage.fluid:4>])
    .outputs([
        <extracells:storage.casing:1>,
        <extracells:storage.component:8>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# 1024k Fluid Component
recipes.removeByRecipeName("extracells:storagecells/fluid/owncasing/1024k");
recipes.removeByRecipeName("extracells:storagecells/fluid/extracasing/1024k");
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUltimate> * 4,
        <ore:plateAmericium> * 4,
        <ore:dustNetherQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:9>])
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitUltimate> * 4,
        <extracells:storage.component:8> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:9>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:1>,
        <extracells:storage.component:9>
    ])
    .outputs([<extracells:storage.fluid:5>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracells:storage.fluid:5>])
    .outputs([
        <extracells:storage.casing:1>,
        <extracells:storage.component:9>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# 4096k Fluid Component
recipes.removeByRecipeName("extracells:storagecells/fluid/owncasing/4096k");
recipes.removeByRecipeName("extracells:storagecells/fluid/extracasing/4096k");
assembler.recipeBuilder()
    .inputs([
        <ore:circuitSuper> * 4,
        <ore:plateDarmstadtium> * 4,
        <ore:dustNetherQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:10>])
    .duration(200)
    .EUt(491520)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitSuper> * 4,
        <extracells:storage.component:9> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:10>])
    .duration(400)
    .EUt(491520)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:1>,
        <extracells:storage.component:10>
    ])
    .outputs([<extracells:storage.fluid:6>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<extracells:storage.fluid:6>])
    .outputs([
        <extracells:storage.casing:1>,
        <extracells:storage.component:10>
    ])
    .duration(10)
    .EUt(7)
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

# ME Ore Dictionary Export Bus
JEI.removeAndHide(<extracells:part.base:12>);
JEI.addDescription(<extracells:part.base:12>, "Lag device. Use OreDict Storage bus.");
<extracells:part.base:12>.addTooltip(format.green("Lag device. Use OreDict Storage bus."));

# ME Fluid Assembler
recipes.remove(<extracells:fluidcrafter>);
assembler.recipeBuilder()
    .inputs([
        <ore:paneGlassColorless> * 2,
        <ore:circuitAdvanced> * 2,
        <metaitem:conveyor.module.hv> * 2,
        <metaitem:fluid.regulator.hv> * 2,
        <ore:plateSteel> * 4
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<extracells:fluidcrafter>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

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
