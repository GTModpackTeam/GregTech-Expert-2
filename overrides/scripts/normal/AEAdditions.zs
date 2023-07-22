# Imports
import mods.jei.JEI;
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;
import mods.zenutils.I18n;

val ec as IMod = loadedMods["aeadditions"];
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
# Fluid Pattern
recipes.remove(<aeadditions:pattern.fluid>);
recipes.addShaped(<aeadditions:pattern.fluid>, [
    [<metaitem:screwStainlessSteel>, <metaitem:plateStainlessSteel>, <ore:craftingToolHardHammer>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:quartz_glass>, <metaitem:plateStainlessSteel>],
    [<ore:craftingToolScrewdriver>, <metaitem:plateStainlessSteel>, <metaitem:screwStainlessSteel>]
]);
JEI.addDescription(<aeadditions:pattern.fluid>, I18n.format("modpack.aeadditions.fluid_pattern.tooltip.1"));
<aeadditions:pattern.fluid>.addTooltip(format.green(I18n.format("modpack.aeadditions.fluid_pattern.tooltip.1")));

# Wireless Universal Terminal
JEI.removeAndHide(<aeadditions:terminal.universal.wireless>);

# Wireless Fluid Terminal
JEI.removeAndHide(<aeadditions:terminal.fluid.wireless>);

# Advanced Storage Housing
recipes.remove(<aeadditions:storage.casing>);
recipes.addShaped(<aeadditions:storage.casing>, [
    [<ore:craftingToolScrewdriver>, <metaitem:plateTungstenSteel>, <metaitem:screwTungstenSteel>],
    [<metaitem:plateTungstenSteel>, null, <metaitem:plateTungstenSteel>],
    [<metaitem:screwTungstenSteel>, <metaitem:plateTungstenSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<aeadditions:storage.casing>, [
    [<ore:craftingToolHardHammer>, <metaitem:plateTungstenSteel>, <metaitem:screwTungstenSteel>],
    [<metaitem:plateTungstenSteel>, null, <metaitem:plateTungstenSteel>],
    [<metaitem:screwTungstenSteel>, <metaitem:plateTungstenSteel>, <ore:craftingToolScrewdriver>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <metaitem:plateTungstenSteel> * 2,
        <metaitem:screwTungstenSteel> * 2
    ])
    .outputs([<aeadditions:storage.casing>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Fluid Housing
recipes.remove(<aeadditions:storage.casing:1>);
recipes.addShaped(<aeadditions:storage.casing:1>, [
    [<ore:craftingToolScrewdriver>, <metaitem:plateStainlessSteel>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, null, <metaitem:plateStainlessSteel>],
    [<metaitem:screwStainlessSteel>, <metaitem:plateStainlessSteel>, <ore:craftingToolHardHammer>]
]);
recipes.addShaped(<aeadditions:storage.casing:1>, [
    [<ore:craftingToolHardHammer>, <metaitem:plateStainlessSteel>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, null, <metaitem:plateStainlessSteel>],
    [<metaitem:screwStainlessSteel>, <metaitem:plateStainlessSteel>, <ore:craftingToolScrewdriver>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <metaitem:plateStainlessSteel> * 2,
        <metaitem:screwStainlessSteel> * 2
    ])
    .outputs([<aeadditions:storage.casing:1>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# 256k Storage Component
recipes.remove(<aeadditions:storage.component>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitZpm> * 4,
        <metaitem:plateNaquadahAlloy> * 4,
        <metaitem:dustCertusQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component>])
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
    .outputs([<aeadditions:storage.component>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 1024k Storage Component
recipes.remove(<aeadditions:storage.component:1>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitZpm> * 4,
        <metaitem:plateAmericium> * 4,
        <metaitem:dustCertusQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component:1>])
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitZpm> * 4,
        <aeadditions:storage.component> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component:1>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 4096k Storage Component
recipes.remove(<aeadditions:storage.component:2>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUv> * 4,
        <metaitem:plateDarmstadtium> * 4,
        <metaitem:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component:2>])
    .duration(200)
    .EUt(491520)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitUv> * 4,
        <aeadditions:storage.component:1> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component:2>])
    .duration(400)
    .EUt(491520)
    .buildAndRegister();

# 16384k Storage Component
recipes.remove(<aeadditions:storage.component:3>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUv> * 4,
        <metaitem:plateNeutronium> * 4,
        <metaitem:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component:3>])
    .duration(200)
    .EUt(491520)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitUv> * 4,
        <aeadditions:storage.component:2> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component:3>])
    .duration(400)
    .EUt(491520)
    .buildAndRegister();

# 256k Fluid Component
recipes.remove(<aeadditions:storage.component:4>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitZpm> * 4,
        <metaitem:plateNaquadahAlloy> * 4,
        <metaitem:dustNetherQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<aeadditions:storage.component:4>])
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
    .outputs([<aeadditions:storage.component:4>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 1024k Fluid Component
recipes.remove(<aeadditions:storage.component:5>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitZpm> * 4,
        <metaitem:plateAmericium> * 4,
        <metaitem:dustNetherQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<aeadditions:storage.component:5>])
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitZpm> * 4,
        <aeadditions:storage.component:4> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<aeadditions:storage.component:5>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 4096k Fluid Component
recipes.remove(<aeadditions:storage.component:6>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUv> * 4,
        <metaitem:plateDarmstadtium> * 4,
        <metaitem:dustNetherQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<aeadditions:storage.component:6>])
    .duration(200)
    .EUt(491520)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitUv> * 4,
        <aeadditions:storage.component:5> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<aeadditions:storage.component:6>])
    .duration(400)
    .EUt(491520)
    .buildAndRegister();



########################################
# Blocks
########################################
# Certus Quartz Tank
JEI.removeAndHide(<aeadditions:certustank>);

# Gas Interface
JEI.removeAndHide(<aeadditions:gas_interface>);

# ME Drive Fixture
recipes.remove(<aeadditions:part.base>);
recipes.addShaped(<aeadditions:part.base>, [
    [<ore:craftGlassCable>, <appliedenergistics2:part:120>, <ore:craftGlassCable>],
    [<appliedenergistics2:part:120>, <appliedenergistics2:drive>, <appliedenergistics2:part:120>],
    [<ore:craftGlassCable>, <appliedenergistics2:part:120>, <ore:craftGlassCable>]
]);

# ME Energy Cell Fixture
recipes.remove(<aeadditions:part.base:1>);
recipes.addShaped(<aeadditions:part.base:1>, [
    [<ore:craftGlassCable>, <appliedenergistics2:part:120>, <ore:craftGlassCable>],
    [<appliedenergistics2:part:120>, <appliedenergistics2:energy_cell>, <appliedenergistics2:part:120>],
    [<ore:craftGlassCable>, <appliedenergistics2:part:120>, <ore:craftGlassCable>]
]);

# Fluid Interface
JEI.removeAndHide(<aeadditions:part.base:2>);

# ME Ore Dictionary Export Bus
JEI.removeAndHide(<aeadditions:part.base:3>);
JEI.addDescription(<aeadditions:part.base:3>, "Lag device. Use OreDict Storage bus.");
<aeadditions:part.base:3>.addTooltip(format.green("Lag device. Use OreDict Storage bus."));

# Fluid Filler
recipes.remove(<aeadditions:fluidfiller>);
recipes.addShapeless(<aeadditions:fluidfiller>, [<appliedenergistics2:part:520>, <ore:craftAssemblerFluid>]);

# ME Fluid Assembler
recipes.remove(<aeadditions:fluidcrafter>);
recipes.addShapeless(<aeadditions:fluidcrafter>, [<ae2fc:fluid_assembler>]);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:plateGlass> * 2,
        <ore:circuitHv> * 2,
        <metaitem:electric.pump.hv> * 2,
        <metaitem:fluid.regulator.hv> * 2,
        <metaitem:plateSteel> * 4
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<aeadditions:fluidcrafter>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Fluid Vibration Chamber
recipes.remove(<aeadditions:vibrantchamberfluid>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitHv> * 2,
        <ore:cableGtSingleGold> * 2,
        <metaitem:electric.pump.hv> * 2,
        <metaitem:wireGtDoubleKanthal> * 4,
        <metaitem:plateStainlessSteel> * 7
    ])
    .outputs([<aeadditions:vibrantchamberfluid>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Obsidian ME Drive
recipes.remove(<aeadditions:hardmedrive>);
recipes.addShaped(<aeadditions:hardmedrive>, [
    [<enderio:block_reinforced_obsidian>, <ore:craftDenseCoveredCable>, <enderio:block_reinforced_obsidian>],
    [<enderio:block_reinforced_obsidian>, <appliedenergistics2:drive>, <enderio:block_reinforced_obsidian>],
    [<enderio:block_reinforced_obsidian>, <minecraft:obsidian>, <enderio:block_reinforced_obsidian>]
]);
