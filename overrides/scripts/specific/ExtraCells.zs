#modloaded extracells
# Imports
import mods.jei.JEI;
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;

val ec2 as IMod = loadedMods["extracells"];
if (!isNull(ec2)) {
    val ec2Items as IItemStack[] = ec2.items;

    for item in ec2Items {
        recipes.remove(item);
        item.addTooltip(format.red("ExtraCells is out of support, please migration AE Additions!!"));
        JEI.addDescription(item, "ExtraCells is out of support, please migration AE Additions!!");
    }
}



########################################
# Items
########################################
# Fluid Storage Housing
recipes.addShapeless(<aeadditions:storage.casing:0>, [<extracells:storage.casing:0>]);

# Advanced Storage Housing
recipes.addShapeless(<aeadditions:storage.casing:1>, [<extracells:storage.casing:1>]);

# 256k ME Storage Component
recipes.addShapeless(<aeadditions:storage.component:0>, [<extracells:storage.component:0>]);

# 1024k ME Storage Component
recipes.addShapeless(<aeadditions:storage.component:1>, [<extracells:storage.component:1>]);

# 4096k ME Storage Component
recipes.addShapeless(<aeadditions:storage.component:2>, [<extracells:storage.component:2>]);

# 16384k ME Storage Component
recipes.addShapeless(<aeadditions:storage.component:3>, [<extracells:storage.component:3>]);

# 256k ME Fluid Storage Component
recipes.addShapeless(<aeadditions:storage.component:4>, [<extracells:storage.component:8>]);

# 1024k ME Fluid Storage Component
recipes.addShapeless(<aeadditions:storage.component:5>, [<extracells:storage.component:9>]);

# 4096k ME Fluid Storage Component
recipes.addShapeless(<aeadditions:storage.component:6>, [<extracells:storage.component:10>]);

# ME Portable Fluid Cell
recipes.addShapeless(<aeadditions:storage.fluid.portable>, [<extracells:storage.fluid.portable>]);

# Wireless Universal Terminal
recipes.addShapeless(<aeadditions:terminal.universal.wireless>, [<extracells:terminal.universal.wireless>]);

# Wireless Fluid Terminal
recipes.addShapeless(<aeadditions:terminal.fluid.wireless>, [<extracells:terminal.fluid.wireless>]);

# ME Upgrade (Tier 1)
recipes.addShapeless(<aeadditions:oc.upgrade:2>, [<extracells:oc.upgrade:2>]);

# ME Upgrade (Tier 2)
recipes.addShapeless(<aeadditions:oc.upgrade:1>, [<extracells:oc.upgrade:1>]);

# ME Upgrade (Tier 3)
recipes.addShapeless(<aeadditions:oc.upgrade:0>, [<extracells:oc.upgrade:0>]);



########################################
# Blocks
########################################
# ME Fluid Assembler
recipes.addShapeless(<aeadditions:fluidcrafter>, [<extracells:fluidcrafter>]);

# ME Fluid Auto Filler
recipes.addShapeless(<aeadditions:fluidfiller>, [<extracells:fluidfiller>]);

# Fluid Vibration Chamber
recipes.addShapeless(<aeadditions:vibrantchamberfluid>, [<extracells:vibrantchamberfluid>]);

# Blast resistant ME Drive
recipes.addShapeless(<aeadditions:hardmedrive>, [<extracells:hardmedrive>]);

# ME Drive Fixture
recipes.addShapeless(<aeadditions:part.base>, [<extracells:part.base:7>]);

# ME Energy Cell Fixture
recipes.addShapeless(<aeadditions:part.base:1>, [<extracells:part.base:8>]);
