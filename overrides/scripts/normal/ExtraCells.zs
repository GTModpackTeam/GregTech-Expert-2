#packmode normal
# Imports
import mods.jei.JEI;
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;
import mods.zenutils.I18n;

val ec as IMod = loadedMods["extracells"];
if (!isNull(ec)) {
    val ecItems as IItemStack[] = ec.items;

    for item in ecItems {
        if(item.displayName has "ME Fluid Pattern") {
            JEI.hide(item);
        }
    }
}



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

# Wireless Universal Terminal
JEI.removeAndHide(<extracells:terminal.universal.wireless>);

# Advanced Storage Housing
recipes.remove(<extracells:storage.casing>);
recipes.addShaped(<extracells:storage.casing>, [
    [<ore:gtce.tool.screwdrivers>, <metaitem:plateTungstenSteel>, <metaitem:screwTungstenSteel>],
    [<metaitem:plateTungstenSteel>, null, <metaitem:plateTungstenSteel>],
    [<metaitem:screwTungstenSteel>, <metaitem:plateTungstenSteel>, <ore:gtce.tool.hard.hammers>]
]);
recipes.addShaped(<extracells:storage.casing>, [
    [<ore:gtce.tool.hard.hammers>, <metaitem:plateTungstenSteel>, <metaitem:screwTungstenSteel>],
    [<metaitem:plateTungstenSteel>, null, <metaitem:plateTungstenSteel>],
    [<metaitem:screwTungstenSteel>, <metaitem:plateTungstenSteel>, <ore:gtce.tool.screwdrivers>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <metaitem:plateTungstenSteel> * 2,
        <metaitem:screwTungstenSteel> * 2
    ])
    .outputs([<extracells:storage.casing>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Fluid Housing
recipes.remove(<extracells:storage.casing:1>);
recipes.addShaped(<extracells:storage.casing:1>, [
    [<ore:gtce.tool.screwdrivers>, <metaitem:plateStainlessSteel>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, null, <metaitem:plateStainlessSteel>],
    [<metaitem:screwStainlessSteel>, <metaitem:plateStainlessSteel>, <ore:gtce.tool.hard.hammers>]
]);
recipes.addShaped(<extracells:storage.casing:1>, [
    [<ore:gtce.tool.hard.hammers>, <metaitem:plateStainlessSteel>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, null, <metaitem:plateStainlessSteel>],
    [<metaitem:screwStainlessSteel>, <metaitem:plateStainlessSteel>, <ore:gtce.tool.screwdrivers>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <metaitem:plateStainlessSteel> * 2,
        <metaitem:screwStainlessSteel> * 2
    ])
    .outputs([<extracells:storage.casing:1>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# 256k Storage Cell
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/256k");
recipes.removeByRecipeName("extracells:storagecells/item/extracasing/256k");
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:0>,
        <extracells:storage.component:0>
    ])
    .outputs([<extracells:storage.physical:0>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<extracells:storage.physical:0>])
//     .outputs([
//         <extracells:storage.casing:0>,
//         <extracells:storage.component:0>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 1024k Storage Cell
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/1024k");
recipes.removeByRecipeName("extracells:storagecells/item/extracasing/1024k");
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:0>,
        <extracells:storage.component:1>
    ])
    .outputs([<extracells:storage.physical:1>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<extracells:storage.physical:1>])
//     .outputs([
//         <extracells:storage.casing:0>,
//         <extracells:storage.component:1>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 4096k Storage Cell
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/4096k");
recipes.removeByRecipeName("extracells:storagecells/item/extracasing/4096k");
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:0>,
        <extracells:storage.component:2>
    ])
    .outputs([<extracells:storage.physical:2>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<extracells:storage.physical:2>])
//     .outputs([
//         <extracells:storage.casing:0>,
//         <extracells:storage.component:2>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 16384k Storage Cell
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/16384k");
recipes.removeByRecipeName("extracells:storagecells/item/extracasing/16384k");
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:0>,
        <extracells:storage.component:3>
    ])
    .outputs([<extracells:storage.physical:3>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<extracells:storage.physical:3>])
//     .outputs([
//         <extracells:storage.casing:0>,
//         <extracells:storage.component:3>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 256k Fluid Cell
recipes.removeByRecipeName("extracells:storagecells/fluid/owncasing/256k");
recipes.removeByRecipeName("extracells:storagecells/fluid/extracasing/256k");
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:1>,
        <extracells:storage.component:8>
    ])
    .outputs([<extracells:storage.fluid:4>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<extracells:storage.fluid:4>])
//     .outputs([
//         <extracells:storage.casing:1>,
//         <extracells:storage.component:8>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 1024k Fluid Cell
recipes.removeByRecipeName("extracells:storagecells/fluid/owncasing/1024k");
recipes.removeByRecipeName("extracells:storagecells/fluid/extracasing/1024k");
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:1>,
        <extracells:storage.component:9>
    ])
    .outputs([<extracells:storage.fluid:5>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<extracells:storage.fluid:5>])
//     .outputs([
//         <extracells:storage.casing:1>,
//         <extracells:storage.component:9>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 4096k Fluid Cell
recipes.removeByRecipeName("extracells:storagecells/fluid/owncasing/4096k");
recipes.removeByRecipeName("extracells:storagecells/fluid/extracasing/4096k");
packer.recipeBuilder()
    .inputs([
        <extracells:storage.casing:1>,
        <extracells:storage.component:10>
    ])
    .outputs([<extracells:storage.fluid:6>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<extracells:storage.fluid:6>])
//     .outputs([
//         <extracells:storage.casing:1>,
//         <extracells:storage.component:10>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();


# 256k Storage Component
recipes.remove(<extracells:storage.component>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitZpm> * 4,
        <metaitem:plateNaquadahAlloy> * 4,
        <metaitem:dustCertusQuartz> * 16,
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
        <ore:circuitZpm> * 4,
        <appliedenergistics2:material:38> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 1024k Storage Component
recipes.remove(<extracells:storage.component:1>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitZpm> * 4,
        <metaitem:plateAmericium> * 4,
        <metaitem:dustCertusQuartz> * 16,
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
        <ore:circuitZpm> * 4,
        <extracells:storage.component> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:1>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 4096k Storage Component
recipes.remove(<extracells:storage.component:2>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUv> * 4,
        <metaitem:plateDarmstadtium> * 4,
        <metaitem:dustCertusQuartz> * 32,
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
        <ore:circuitUv> * 4,
        <extracells:storage.component:1> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:2>])
    .duration(400)
    .EUt(491520)
    .buildAndRegister();

# 16384k Storage Component
recipes.remove(<extracells:storage.component:3>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUv> * 4,
        <metaitem:plateNeutronium> * 4,
        <metaitem:dustCertusQuartz> * 32,
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
        <ore:circuitUv> * 4,
        <extracells:storage.component:2> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<extracells:storage.component:3>])
    .duration(400)
    .EUt(491520)
    .buildAndRegister();

# 256k Fluid Component
recipes.remove(<extracells:storage.component:8>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitZpm> * 4,
        <metaitem:plateNaquadahAlloy> * 4,
        <metaitem:dustNetherQuartz> * 16,
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
        <ore:circuitZpm> * 4,
        <appliedenergistics2:material:57> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:8>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 1024k Fluid Component
recipes.remove(<extracells:storage.component:9>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitZpm> * 4,
        <metaitem:plateAmericium> * 4,
        <metaitem:dustNetherQuartz> * 16,
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
        <ore:circuitZpm> * 4,
        <extracells:storage.component:8> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:9>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 4096k Fluid Component
recipes.remove(<extracells:storage.component:10>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUv> * 4,
        <metaitem:plateDarmstadtium> * 4,
        <metaitem:dustNetherQuartz> * 32,
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
        <ore:circuitUv> * 4,
        <extracells:storage.component:9> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<extracells:storage.component:10>])
    .duration(400)
    .EUt(491520)
    .buildAndRegister();

# Recycle - Advanced Storage Housing
macerator.recipeBuilder()
    .inputs([<extracells:storage.casing>])
    .outputs([
        <metaitem:dustTungstenSteel> * 2,
        <metaitem:dustTinyTungstenSteel> * 2
    ])
    .duration(100)
    .EUt(16)
    .buildAndRegister();
arc_furnace.recipeBuilder()
    .inputs([<extracells:storage.casing>])
    .fluidInputs([<liquid:oxygen> * 56])
    .outputs([
        <metaitem:ingotTungstenSteel> * 2,
        <metaitem:nuggetTungstenSteel> * 2
    ])
    .duration(56)
    .EUt(30)
    .buildAndRegister();

# Recycle - Fluid Housing
macerator.recipeBuilder()
    .inputs([<extracells:storage.casing:1>])
    .outputs([
        <metaitem:dustStainlessSteel> * 2,
        <metaitem:dustTinyStainlessSteel> * 2
    ])
    .duration(100)
    .EUt(16)
    .buildAndRegister();
arc_furnace.recipeBuilder()
    .inputs([<extracells:storage.casing:1>])
    .fluidInputs([<liquid:oxygen> * 56])
    .outputs([
        <metaitem:ingotStainlessSteel> * 2,
        <metaitem:nuggetStainlessSteel> * 2
    ])
    .duration(56)
    .EUt(30)
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
        <metaitem:plateGlass> * 2,
        <ore:circuitHv> * 2,
        <metaitem:conveyor.module.hv> * 2,
        <metaitem:fluid.regulator.hv> * 2,
        <metaitem:plateSteel> * 4
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
        <ore:circuitHv> * 2,
        <ore:cableGtSingleGold> * 2,
        <metaitem:electric.pump.hv> * 2,
        <metaitem:wireGtDoubleKanthal> * 4,
        <metaitem:plateStainlessSteel> * 7
    ])
    .outputs([<extracells:vibrantchamberfluid>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Fluid Storage Monitor
recipes.remove(<extracells:part.base:10>);
recipes.addShapeless(<extracells:part.base:10>, [
    <appliedenergistics2:part:281>, <ore:itemIlluminatedPanel>
]);

# Obsidian ME Drive
recipes.remove(<extracells:hardmedrive>);
recipes.addShaped(<extracells:hardmedrive>, [
    [<enderio:block_reinforced_obsidian>, <ore:ae2.cable.dense.covered>, <enderio:block_reinforced_obsidian>],
    [<enderio:block_reinforced_obsidian>, <appliedenergistics2:drive>, <enderio:block_reinforced_obsidian>],
    [<enderio:block_reinforced_obsidian>, <minecraft:obsidian>, <enderio:block_reinforced_obsidian>]
]);
