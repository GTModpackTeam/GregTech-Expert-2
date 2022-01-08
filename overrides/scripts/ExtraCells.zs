# Imoprts
import mods.jei.JEI;



########################################
# Items
########################################
# Fluid Storage Cells(deprecated)
mods.jei.JEI.hide(<extracells:storage.fluid>);
mods.jei.JEI.hide(<extracells:storage.fluid:1>);
mods.jei.JEI.hide(<extracells:storage.fluid:2>);
mods.jei.JEI.hide(<extracells:storage.fluid:3>);

# Fluid Storage Component(deprecated)
mods.jei.JEI.hide(<extracells:storage.component:4>);
mods.jei.JEI.hide(<extracells:storage.component:5>);
mods.jei.JEI.hide(<extracells:storage.component:6>);
mods.jei.JEI.hide(<extracells:storage.component:7>);

# Advanced Storage Housing
recipes.remove(<extracells:storage.casing>);
recipes.addShaped(<extracells:storage.casing>, [
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
    [<ore:plateTungstenSteel>, null, <ore:plateTungstenSteel>],
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>]
]);
recipes.addShaped(<extracells:storage.casing>, [
    [<ore:craftingToolScrewdriver>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
    [<ore:plateTungstenSteel>, null, <ore:plateTungstenSteel>],
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<extracells:storage.casing>, [
    [<ore:craftingToolHardHammer>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
    [<ore:plateTungstenSteel>, null, <ore:plateTungstenSteel>],
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:craftingToolScrewdriver>]
]);

# Fluid Housing
recipes.remove(<extracells:storage.casing:1>);
recipes.addShaped(<extracells:storage.casing:1>, [
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>]
]);
recipes.addShaped(<extracells:storage.casing:1>, [
    [<ore:craftingToolScrewdriver>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<extracells:storage.casing:1>, [
    [<ore:craftingToolHardHammer>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
    [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>],
    [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]
]);

# 256k Storage Cell
recipes.removeShaped(<extracells:storage.physical>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component>, <ore:dustFluix>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);
recipes.addShaped(<extracells:storage.physical>, [
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
    [<ore:plateTungstenSteel>, <extracells:storage.component>, <ore:plateTungstenSteel>],
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>]
]);
recipes.addShaped(<extracells:storage.physical>, [
    [<ore:craftingToolScrewdriver>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
    [<ore:plateTungstenSteel>, <extracells:storage.component>, <ore:plateTungstenSteel>],
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<extracells:storage.physical>, [
    [<ore:craftingToolHardHammer>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
    [<ore:plateTungstenSteel>, <extracells:storage.component>, <ore:plateTungstenSteel>],
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:craftingToolScrewdriver>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitExtreme> * 4,
        <ore:plateTitanium> * 4,
        <ore:dustCertusQuartz> * 16,
        <appliedenergistics2:material:24>
    ]).
    outputs([<extracells:storage.component>]).
    duration(200).
    EUt(1920).
    buildAndRegister();

# 1024k Storage Cell
recipes.removeShaped(<extracells:storage.physical:1>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component:1>, <ore:dustFluix>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);
recipes.addShaped(<extracells:storage.physical:1>, [
    [<ore:screwChrome>, <ore:plateChrome>, <ore:screwChrome>],
    [<ore:plateChrome>, <extracells:storage.component:1>, <ore:plateChrome>],
    [<ore:screwChrome>, <ore:plateChrome>, <ore:screwChrome>]
]);
recipes.addShaped(<extracells:storage.physical:1>, [
    [<ore:craftingToolScrewdriver>, <ore:plateChrome>, <ore:screwChrome>],
    [<ore:plateChrome>, <extracells:storage.component:1>, <ore:plateChrome>],
    [<ore:screwChrome>, <ore:plateChrome>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<extracells:storage.physical:1>, [
    [<ore:craftingToolHardHammer>, <ore:plateChrome>, <ore:screwChrome>],
    [<ore:plateChrome>, <extracells:storage.component:1>, <ore:plateChrome>],
    [<ore:screwChrome>, <ore:plateChrome>, <ore:craftingToolScrewdriver>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitElite> * 4,
        <ore:plateTungstenSteel> * 4,
        <ore:dustCertusQuartz> * 16,
        <appliedenergistics2:material:24>
    ]).
    outputs([<extracells:storage.component:1>]).
    duration(200).
    EUt(7680).
    buildAndRegister();

# 4096k Storage Cell
recipes.removeShaped(<extracells:storage.physical:2>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component:2>, <ore:dustFluix>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);
recipes.addShaped(<extracells:storage.physical:2>, [
    [<ore:screwOsmium>, <ore:plateOsmium>, <ore:screwOsmium>],
    [<ore:plateOsmium>, <extracells:storage.component:2>, <ore:plateOsmium>],
    [<ore:screwOsmium>, <ore:plateOsmium>, <ore:screwOsmium>]
]);
recipes.addShaped(<extracells:storage.physical:2>, [
    [<ore:craftingToolScrewdriver>, <ore:plateOsmium>, <ore:screwOsmium>],
    [<ore:plateOsmium>, <extracells:storage.component:2>, <ore:plateOsmium>],
    [<ore:screwOsmium>, <ore:plateOsmium>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<extracells:storage.physical:2>, [
    [<ore:craftingToolHardHammer>, <ore:plateOsmium>, <ore:screwOsmium>],
    [<ore:plateOsmium>, <extracells:storage.component:2>, <ore:plateOsmium>],
    [<ore:screwOsmium>, <ore:plateOsmium>, <ore:craftingToolScrewdriver>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitMaster> * 4,
        <ore:plateTungstenSteel> * 4,
        <ore:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ]).
    outputs([<extracells:storage.component:2>]).
    duration(200).
    EUt(30720).
    buildAndRegister();

# 16384k Storage Cell
recipes.removeShaped(<extracells:storage.physical:3>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component:3>, <ore:dustFluix>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);
recipes.addShaped(<extracells:storage.physical:3>, [
    [<ore:screwNeutronium>, <ore:plateNeutronium>, <ore:screwNeutronium>],
    [<ore:plateNeutronium>, <extracells:storage.component:3>, <ore:plateNeutronium>],
    [<ore:screwNeutronium>, <ore:plateNeutronium>, <ore:screwNeutronium>]
]);
recipes.addShaped(<extracells:storage.physical:3>, [
    [<ore:craftingToolScrewdriver>, <ore:plateNeutronium>, <ore:screwNeutronium>],
    [<ore:plateNeutronium>, <extracells:storage.component:3>, <ore:plateNeutronium>],
    [<ore:screwNeutronium>, <ore:plateNeutronium>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<extracells:storage.physical:3>, [
    [<ore:craftingToolHardHammer>, <ore:plateNeutronium>, <ore:screwNeutronium>],
    [<ore:plateNeutronium>, <extracells:storage.component:3>, <ore:plateNeutronium>],
    [<ore:screwNeutronium>, <ore:plateNeutronium>, <ore:craftingToolScrewdriver>]
]);
assembler.recipeBuilder().
    inputs([
        <ore:circuitUltimate> * 4,
        <ore:plateNeutronium> * 4,
        <ore:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ]).
    outputs([<extracells:storage.component:3>]).
    duration(200).
    EUt(122880).
    buildAndRegister();

# 256k Fluid Cell
recipes.removeShaped(<extracells:storage.fluid:4>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component:8>, <ore:dustFluix>],
    [<extracells:certustank>, <extracells:certustank>, <extracells:certustank>]
]);
recipes.addShaped(<extracells:storage.fluid:4>, [
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
    [<ore:plateTungstenSteel>, <extracells:storage.component:8>, <ore:plateTungstenSteel>],
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>]
]);
recipes.addShaped(<extracells:storage.fluid:4>, [
    [<ore:craftingToolScrewdriver>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
    [<ore:plateTungstenSteel>, <extracells:storage.component:8>, <ore:plateTungstenSteel>],
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<extracells:storage.fluid:4>, [
    [<ore:craftingToolHardHammer>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
    [<ore:plateTungstenSteel>, <extracells:storage.component:8>, <ore:plateTungstenSteel>],
    [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:craftingToolScrewdriver>]
]);

# 1024k Fluid Cell
recipes.removeShaped(<extracells:storage.fluid:5>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.component:9>, <ore:dustFluix>],
    [<extracells:certustank>, <extracells:certustank>, <extracells:certustank>]
]);
recipes.addShaped(<extracells:storage.fluid:5>, [
    [<ore:screwChrome>, <ore:plateChrome>, <ore:screwChrome>],
    [<ore:plateChrome>, <extracells:storage.component:9>, <ore:plateChrome>],
    [<ore:screwChrome>, <ore:plateChrome>, <ore:screwChrome>]
]);
recipes.addShaped(<extracells:storage.fluid:5>, [
    [<ore:craftingToolScrewdriver>, <ore:plateChrome>, <ore:screwChrome>],
    [<ore:plateChrome>, <extracells:storage.component:9>, <ore:plateChrome>],
    [<ore:screwChrome>, <ore:plateChrome>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<extracells:storage.fluid:5>, [
    [<ore:craftingToolHardHammer>, <ore:plateChrome>, <ore:screwChrome>],
    [<ore:plateChrome>, <extracells:storage.component:9>, <ore:plateChrome>],
    [<ore:screwChrome>, <ore:plateChrome>, <ore:craftingToolScrewdriver>]
]);

# 4096k Fluid Cell
recipes.removeShaped(<extracells:storage.fluid:6>, [
    [<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>],
    [<ore:dustFluix>, <extracells:storage.physical:10>, <ore:dustFluix>],
    [<extracells:certustank>, <extracells:certustank>, <extracells:certustank>]
]);
recipes.addShaped(<extracells:storage.fluid:6>, [
    [<ore:screwOsmium>, <ore:plateOsmium>, <ore:screwOsmium>],
    [<ore:plateOsmium>, <extracells:storage.physical:10>, <ore:plateOsmium>],
    [<ore:screwOsmium>, <ore:plateOsmium>, <ore:screwOsmium>]
]);
recipes.addShaped(<extracells:storage.fluid:6>, [
    [<ore:craftingToolScrewdriver>, <ore:plateOsmium>, <ore:screwOsmium>],
    [<ore:plateOsmium>, <extracells:storage.physical:10>, <ore:plateOsmium>],
    [<ore:screwOsmium>, <ore:plateOsmium>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<extracells:storage.fluid:6>, [
    [<ore:craftingToolHardHammer>, <ore:plateOsmium>, <ore:screwOsmium>],
    [<ore:plateOsmium>, <extracells:storage.physical:10>, <ore:plateOsmium>],
    [<ore:screwOsmium>, <ore:plateOsmium>, <ore:craftingToolScrewdriver>]
]);

# 256k Storage Component
recipes.remove(<extracells:storage.component>);
recipes.addShaped(<extracells:storage.component>, [
    [<ore:circuitExtreme>, <appliedenergistics2:material:38>, <ore:circuitExtreme>],
    [<appliedenergistics2:material:38>, <appliedenergistics2:material:23>, <appliedenergistics2:material:38>],
    [<ore:circuitExtreme>, <appliedenergistics2:material:38>, <ore:circuitExtreme>]
]);

# 1024k Storage Component
recipes.remove(<extracells:storage.component:1>);
recipes.addShaped(<extracells:storage.component:1>, [
    [<ore:circuitElite>, <extracells:storage.component>, <ore:circuitElite>],
    [<extracells:storage.component>, <appliedenergistics2:material:23>, <extracells:storage.component>],
    [<ore:circuitElite>, <extracells:storage.component>, <ore:circuitElite>]
]);

# 4096k Storage Component
recipes.remove(<extracells:storage.component:2>);
recipes.addShaped(<extracells:storage.component:2>, [
    [<ore:circuitMaster>, <extracells:storage.component:1>, <ore:circuitMaster>],
    [<extracells:storage.component:1>, <appliedenergistics2:material:24>, <extracells:storage.component:1>],
    [<ore:circuitMaster>, <extracells:storage.component:1>, <ore:circuitMaster>]
]);

# 16384k Storage Component
recipes.remove(<extracells:storage.component:3>);
recipes.addShaped(<extracells:storage.component:3>, [
    [<ore:circuitUltimate>, <extracells:storage.component:2>, <ore:circuitUltimate>],
    [<extracells:storage.component:2>, <appliedenergistics2:material:24>, <extracells:storage.component:2>],
    [<ore:circuitUltimate>, <extracells:storage.component:2>, <ore:circuitUltimate>]
]);

# 256k Fluid Component
recipes.remove(<extracells:storage.component:8>);
recipes.addShaped(<extracells:storage.component:8>, [
    [<ore:circuitExtreme>, <appliedenergistics2:material:57>, <ore:circuitExtreme>],
    [<appliedenergistics2:material:57>, <appliedenergistics2:material:23>, <appliedenergistics2:material:57>],
    [<ore:circuitExtreme>, <appliedenergistics2:material:57>, <ore:circuitExtreme>]
]);

# 1024k Fluid Component
recipes.remove(<extracells:storage.component:9>);
recipes.addShaped(<extracells:storage.component:9>, [
    [<ore:circuitElite>, <extracells:storage.component:8>, <ore:circuitElite>],
    [<extracells:storage.component:8>, <appliedenergistics2:material:23>, <extracells:storage.component:8>],
    [<ore:circuitElite>, <extracells:storage.component:8>, <ore:circuitElite>]
]);

# 4096k Fluid Component
recipes.remove(<extracells:storage.component:10>);
recipes.addShaped(<extracells:storage.component:10>, [
    [<ore:circuitMaster>, <extracells:storage.component:9>, <ore:circuitMaster>],
    [<extracells:storage.component:9>, <appliedenergistics2:material:24>, <extracells:storage.component:9>],
    [<ore:circuitMaster>, <extracells:storage.component:9>, <ore:circuitMaster>]
]);



########################################
# Blocks
########################################
# Fluid Interface
mods.jei.JEI.hide(<extracells:ecbaseblock>);

# Deprecated panels
mods.jei.JEI.hide(<extracells:part.base>);
mods.jei.JEI.hide(<extracells:part.base:1>);
mods.jei.JEI.hide(<extracells:part.base:2>);
mods.jei.JEI.hide(<extracells:part.base:3>);
mods.jei.JEI.hide(<extracells:part.base:4>);
mods.jei.JEI.hide(<extracells:part.base:5>);
mods.jei.JEI.hide(<extracells:part.base:6>);
mods.jei.JEI.hide(<extracells:part.base:9>);

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
recipes.addShaped(<extracells:vibrantchamberfluid>, [
    [<ore:plateStainlessSteel>, <gregtech:meta_item_1:144>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <extracells:certustank>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:vibration_chamber>, <ore:plateStainlessSteel>]
]);

# Obsidian ME Drive
recipes.remove(<extracells:hardmedrive>);
recipes.addShaped(<extracells:hardmedrive>, [
    [<enderio:block_reinforced_obsidian>, <ore:ae2.cable.dense.normal>, <enderio:block_reinforced_obsidian>],
    [<enderio:block_reinforced_obsidian>, <appliedenergistics2:drive>, <enderio:block_reinforced_obsidian>],
    [<enderio:block_reinforced_obsidian>, <minecraft:obsidian>, <enderio:block_reinforced_obsidian>]
]);
