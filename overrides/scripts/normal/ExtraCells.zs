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

# Advanced Storage Housing
recipes.remove(<extracells:storage.casing>);
// recipes.addShaped(<extracells:storage.casing>, [
//     [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
//     [<ore:plateTungstenSteel>, null, <ore:plateTungstenSteel>],
//     [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>]
// ]);
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
// recipes.addShaped(<extracells:storage.casing:1>, [
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>],
//     [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>],
//     [<ore:screwStainlessSteel>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>]
// ]);
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
    [<appliedenergistics2:quartz_glass>, <contenttweaker:dustfluix>, <appliedenergistics2:quartz_glass>],
    [<contenttweaker:dustfluix>, <extracells:storage.component>, <contenttweaker:dustfluix>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);
// recipes.addShaped(<extracells:storage.physical>, [
//     [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
//     [<ore:plateTungstenSteel>, <extracells:storage.component>, <ore:plateTungstenSteel>],
//     [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>]
// ]);
// recipes.addShaped(<extracells:storage.physical>, [
//     [<ore:gtce.tool.screwdrivers>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
//     [<ore:plateTungstenSteel>, <extracells:storage.component>, <ore:plateTungstenSteel>],
//     [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:gtce.tool.hard.hammers>]
// ]);
// recipes.addShaped(<extracells:storage.physical>, [
//     [<ore:gtce.tool.hard.hammers>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
//     [<ore:plateTungstenSteel>, <extracells:storage.component>, <ore:plateTungstenSteel>],
//     [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:gtce.tool.screwdrivers>]
// ]);

# 1024k Storage Cell
recipes.removeShaped(<extracells:storage.physical:1>, [
    [<appliedenergistics2:quartz_glass>, <contenttweaker:dustfluix>, <appliedenergistics2:quartz_glass>],
    [<contenttweaker:dustfluix>, <extracells:storage.component:1>, <contenttweaker:dustfluix>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);
// recipes.addShaped(<extracells:storage.physical:1>, [
//     [<ore:screwChrome>, <ore:plateChrome>, <ore:screwChrome>],
//     [<ore:plateChrome>, <extracells:storage.component:1>, <ore:plateChrome>],
//     [<ore:screwChrome>, <ore:plateChrome>, <ore:screwChrome>]
// ]);
// recipes.addShaped(<extracells:storage.physical:1>, [
//     [<ore:gtce.tool.screwdrivers>, <ore:plateChrome>, <ore:screwChrome>],
//     [<ore:plateChrome>, <extracells:storage.component:1>, <ore:plateChrome>],
//     [<ore:screwChrome>, <ore:plateChrome>, <ore:gtce.tool.hard.hammers>]
// ]);
// recipes.addShaped(<extracells:storage.physical:1>, [
//     [<ore:gtce.tool.hard.hammers>, <ore:plateChrome>, <ore:screwChrome>],
//     [<ore:plateChrome>, <extracells:storage.component:1>, <ore:plateChrome>],
//     [<ore:screwChrome>, <ore:plateChrome>, <ore:gtce.tool.screwdrivers>]
// ]);

# 4096k Storage Cell
recipes.removeShaped(<extracells:storage.physical:2>, [
    [<appliedenergistics2:quartz_glass>, <contenttweaker:dustfluix>, <appliedenergistics2:quartz_glass>],
    [<contenttweaker:dustfluix>, <extracells:storage.component:2>, <contenttweaker:dustfluix>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);
// recipes.addShaped(<extracells:storage.physical:2>, [
//     [<ore:screwOsmium>, <ore:plateOsmium>, <ore:screwOsmium>],
//     [<ore:plateOsmium>, <extracells:storage.component:2>, <ore:plateOsmium>],
//     [<ore:screwOsmium>, <ore:plateOsmium>, <ore:screwOsmium>]
// ]);
// recipes.addShaped(<extracells:storage.physical:2>, [
//     [<ore:gtce.tool.screwdrivers>, <ore:plateOsmium>, <ore:screwOsmium>],
//     [<ore:plateOsmium>, <extracells:storage.component:2>, <ore:plateOsmium>],
//     [<ore:screwOsmium>, <ore:plateOsmium>, <ore:gtce.tool.hard.hammers>]
// ]);
// recipes.addShaped(<extracells:storage.physical:2>, [
//     [<ore:gtce.tool.hard.hammers>, <ore:plateOsmium>, <ore:screwOsmium>],
//     [<ore:plateOsmium>, <extracells:storage.component:2>, <ore:plateOsmium>],
//     [<ore:screwOsmium>, <ore:plateOsmium>, <ore:gtce.tool.screwdrivers>]
// ]);

# 16384k Storage Cell
recipes.removeShaped(<extracells:storage.physical:3>, [
    [<appliedenergistics2:quartz_glass>, <contenttweaker:dustfluix>, <appliedenergistics2:quartz_glass>],
    [<contenttweaker:dustfluix>, <extracells:storage.component:3>, <contenttweaker:dustfluix>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
]);
// recipes.addShaped(<extracells:storage.physical:3>, [
//     [<ore:screwNeutronium>, <ore:plateNeutronium>, <ore:screwNeutronium>],
//     [<ore:plateNeutronium>, <extracells:storage.component:3>, <ore:plateNeutronium>],
//     [<ore:screwNeutronium>, <ore:plateNeutronium>, <ore:screwNeutronium>]
// ]);
// recipes.addShaped(<extracells:storage.physical:3>, [
//     [<ore:gtce.tool.screwdrivers>, <ore:plateNeutronium>, <ore:screwNeutronium>],
//     [<ore:plateNeutronium>, <extracells:storage.component:3>, <ore:plateNeutronium>],
//     [<ore:screwNeutronium>, <ore:plateNeutronium>, <ore:gtce.tool.hard.hammers>]
// ]);
// recipes.addShaped(<extracells:storage.physical:3>, [
//     [<ore:gtce.tool.hard.hammers>, <ore:plateNeutronium>, <ore:screwNeutronium>],
//     [<ore:plateNeutronium>, <extracells:storage.component:3>, <ore:plateNeutronium>],
//     [<ore:screwNeutronium>, <ore:plateNeutronium>, <ore:gtce.tool.screwdrivers>]
// ]);

# 256k Fluid Cell
recipes.removeShaped(<extracells:storage.fluid:4>, [
    [<appliedenergistics2:quartz_glass>, <contenttweaker:dustfluix>, <appliedenergistics2:quartz_glass>],
    [<contenttweaker:dustfluix>, <extracells:storage.component:8>, <contenttweaker:dustfluix>],
    [<extracells:certustank>, <extracells:certustank>, <extracells:certustank>]
]);
// recipes.addShaped(<extracells:storage.fluid:4>, [
//     [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
//     [<ore:plateTungstenSteel>, <extracells:storage.component:8>, <ore:plateTungstenSteel>],
//     [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>]
// ]);
// recipes.addShaped(<extracells:storage.fluid:4>, [
//     [<ore:gtce.tool.screwdrivers>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
//     [<ore:plateTungstenSteel>, <extracells:storage.component:8>, <ore:plateTungstenSteel>],
//     [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:gtce.tool.hard.hammers>]
// ]);
// recipes.addShaped(<extracells:storage.fluid:4>, [
//     [<ore:gtce.tool.hard.hammers>, <ore:plateTungstenSteel>, <ore:screwTungstenSteel>],
//     [<ore:plateTungstenSteel>, <extracells:storage.component:8>, <ore:plateTungstenSteel>],
//     [<ore:screwTungstenSteel>, <ore:plateTungstenSteel>, <ore:gtce.tool.screwdrivers>]
// ]);

# 1024k Fluid Cell
recipes.removeShaped(<extracells:storage.fluid:5>, [
    [<appliedenergistics2:quartz_glass>, <contenttweaker:dustfluix>, <appliedenergistics2:quartz_glass>],
    [<contenttweaker:dustfluix>, <extracells:storage.component:9>, <contenttweaker:dustfluix>],
    [<extracells:certustank>, <extracells:certustank>, <extracells:certustank>]
]);
// recipes.addShaped(<extracells:storage.fluid:5>, [
//     [<ore:screwChrome>, <ore:plateChrome>, <ore:screwChrome>],
//     [<ore:plateChrome>, <extracells:storage.component:9>, <ore:plateChrome>],
//     [<ore:screwChrome>, <ore:plateChrome>, <ore:screwChrome>]
// ]);
// recipes.addShaped(<extracells:storage.fluid:5>, [
//     [<ore:gtce.tool.screwdrivers>, <ore:plateChrome>, <ore:screwChrome>],
//     [<ore:plateChrome>, <extracells:storage.component:9>, <ore:plateChrome>],
//     [<ore:screwChrome>, <ore:plateChrome>, <ore:gtce.tool.hard.hammers>]
// ]);
// recipes.addShaped(<extracells:storage.fluid:5>, [
//     [<ore:gtce.tool.hard.hammers>, <ore:plateChrome>, <ore:screwChrome>],
//     [<ore:plateChrome>, <extracells:storage.component:9>, <ore:plateChrome>],
//     [<ore:screwChrome>, <ore:plateChrome>, <ore:gtce.tool.screwdrivers>]
// ]);

# 4096k Fluid Cell
recipes.removeShaped(<extracells:storage.fluid:6>, [
    [<appliedenergistics2:quartz_glass>, <contenttweaker:dustfluix>, <appliedenergistics2:quartz_glass>],
    [<contenttweaker:dustfluix>, <extracells:storage.component:10>, <contenttweaker:dustfluix>],
    [<extracells:certustank>, <extracells:certustank>, <extracells:certustank>]
]);
// recipes.addShaped(<extracells:storage.fluid:6>, [
//     [<ore:screwOsmium>, <ore:plateOsmium>, <ore:screwOsmium>],
//     [<ore:plateOsmium>, <extracells:storage.component:10>, <ore:plateOsmium>],
//     [<ore:screwOsmium>, <ore:plateOsmium>, <ore:screwOsmium>]
// ]);
// recipes.addShaped(<extracells:storage.fluid:6>, [
//     [<ore:gtce.tool.screwdrivers>, <ore:plateOsmium>, <ore:screwOsmium>],
//     [<ore:plateOsmium>, <extracells:storage.component:10>, <ore:plateOsmium>],
//     [<ore:screwOsmium>, <ore:plateOsmium>, <ore:gtce.tool.hard.hammers>]
// ]);
// recipes.addShaped(<extracells:storage.fluid:6>, [
//     [<ore:gtce.tool.hard.hammers>, <ore:plateOsmium>, <ore:screwOsmium>],
//     [<ore:plateOsmium>, <extracells:storage.component:10>, <ore:plateOsmium>],
//     [<ore:screwOsmium>, <ore:plateOsmium>, <ore:gtce.tool.screwdrivers>]
// ]);

# 256k Storage Component
recipes.remove(<extracells:storage.component>);
// recipes.addShaped(<extracells:storage.component>, [
//     [<ore:circuitExtreme>, <appliedenergistics2:material:38>, <ore:circuitExtreme>],
//     [<appliedenergistics2:material:38>, <appliedenergistics2:material:23>, <appliedenergistics2:material:38>],
//     [<ore:circuitExtreme>, <appliedenergistics2:material:38>, <ore:circuitExtreme>]
// ]);
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
// recipes.addShaped(<extracells:storage.component:1>, [
//     [<ore:circuitElite>, <extracells:storage.component>, <ore:circuitElite>],
//     [<extracells:storage.component>, <appliedenergistics2:material:23>, <extracells:storage.component>],
//     [<ore:circuitElite>, <extracells:storage.component>, <ore:circuitElite>]
// ]);
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
// recipes.addShaped(<extracells:storage.component:2>, [
//     [<ore:circuitMaster>, <extracells:storage.component:1>, <ore:circuitMaster>],
//     [<extracells:storage.component:1>, <appliedenergistics2:material:24>, <extracells:storage.component:1>],
//     [<ore:circuitMaster>, <extracells:storage.component:1>, <ore:circuitMaster>]
// ]);
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
// recipes.addShaped(<extracells:storage.component:3>, [
//     [<ore:circuitUltimate>, <extracells:storage.component:2>, <ore:circuitUltimate>],
//     [<extracells:storage.component:2>, <appliedenergistics2:material:24>, <extracells:storage.component:2>],
//     [<ore:circuitUltimate>, <extracells:storage.component:2>, <ore:circuitUltimate>]
// ]);
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
// recipes.addShaped(<extracells:storage.component:8>, [
//     [<ore:circuitExtreme>, <appliedenergistics2:material:57>, <ore:circuitExtreme>],
//     [<appliedenergistics2:material:57>, <appliedenergistics2:material:23>, <appliedenergistics2:material:57>],
//     [<ore:circuitExtreme>, <appliedenergistics2:material:57>, <ore:circuitExtreme>]
// ]);
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
// recipes.addShaped(<extracells:storage.component:9>, [
//     [<ore:circuitElite>, <extracells:storage.component:8>, <ore:circuitElite>],
//     [<extracells:storage.component:8>, <appliedenergistics2:material:23>, <extracells:storage.component:8>],
//     [<ore:circuitElite>, <extracells:storage.component:8>, <ore:circuitElite>]
// ]);
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
// recipes.addShaped(<extracells:storage.component:10>, [
//     [<ore:circuitMaster>, <extracells:storage.component:9>, <ore:circuitMaster>],
//     [<extracells:storage.component:9>, <appliedenergistics2:material:24>, <extracells:storage.component:9>],
//     [<ore:circuitMaster>, <extracells:storage.component:9>, <ore:circuitMaster>]
// ]);
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
    .outputs([<gregtech:meta_dust:2013>])
    .duration(100)
    .EUt(16)
    .buildAndRegister();

# Recycle - Fluid Housing
macerator.recipeBuilder()
    .inputs([<extracells:storage.casing:1>])
    .outputs([<gregtech:meta_dust:323>])
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
    [<ore:plateStainlessSteel>, <metaitem:electric.pump.hv>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <metaitem:super_tank.hv>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:vibration_chamber>, <ore:plateStainlessSteel>]
]);

# Obsidian ME Drive
recipes.remove(<extracells:hardmedrive>);
recipes.addShaped(<extracells:hardmedrive>, [
    [<enderio:block_reinforced_obsidian>, <ore:ae2.cable.dense.covered>, <enderio:block_reinforced_obsidian>],
    [<enderio:block_reinforced_obsidian>, <appliedenergistics2:drive>, <enderio:block_reinforced_obsidian>],
    [<enderio:block_reinforced_obsidian>, <minecraft:obsidian>, <enderio:block_reinforced_obsidian>]
]);
