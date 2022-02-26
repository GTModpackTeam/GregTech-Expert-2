# Imports
import mods.jei.JEI;
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;
import mods.zenutils.I18n;



########################################
# Applied Energistics 2
########################################
<appliedenergistics2:part:469>.addTooltip(format.green(I18n.format("modpack.tooltip.ae2.p2p.conduit")));
JEI.addDescription(<appliedenergistics2:part:469>, I18n.format("modpack.tooltip.ae2.p2p.conduit"));

<appliedenergistics2:part:463>.addTooltip(format.green(I18n.format("modpack.tooltip.ae2.p2p.bucket")));
JEI.addDescription(<appliedenergistics2:part:463>, I18n.format("modpack.tooltip.ae2.p2p.bucket"));

<appliedenergistics2:part:470>.addTooltip(format.green(I18n.format("modpack.tooltip.ae2.p2p.gtceu")));
JEI.addDescription(<appliedenergistics2:part:470>, I18n.format("modpack.tooltip.ae2.p2p.gtceu"));

<appliedenergistics2:part:462>.addTooltip(format.green(I18n.format("modpack.tooltip.ae2.p2p.chest")));
JEI.addDescription(<appliedenergistics2:part:462>, I18n.format("modpack.tooltip.ae2.p2p.chest"));

<appliedenergistics2:part:467>.addTooltip(format.green(I18n.format("modpack.tooltip.ae2.p2p.torch")));
JEI.addDescription(<appliedenergistics2:part:467>, I18n.format("modpack.tooltip.ae2.p2p.torch"));

<appliedenergistics2:part:461>.addTooltip(format.green(I18n.format("modpack.tooltip.ae2.p2p.redstone")));
JEI.addDescription(<appliedenergistics2:part:461>, I18n.format("modpack.tooltip.ae2.p2p.redstone"));

val ae2 as IMod = loadedMods["appliedenergistics2"];
if (!isNull(ae2)) {
    val ae2Items as IItemStack[] = ae2.items;

    for item in ae2Items {
        if(item.displayName has "Cable Facade") {
            if(item.displayName has "TNT") {
                item.addTooltip(format.darkAqua(I18n.format("modpack.tooltip.ec2.facade")));
                JEI.addDescription(item, I18n.format("modpack.tooltip.ec2.facade"));
            }
            else {
                JEI.hide(item); 
            }
        }
    }
}


########################################
# Extra Cells
########################################
val ec as IMod = loadedMods["extracells"];
if (!isNull(ec)) {
    val ecItems as IItemStack[] = ec.items;

    for item in ecItems {
        if(item.displayName has "ME Fluid Pattern") {
            if(item.hasTag) {
                JEI.hide(item);
            }
            else {
               item.addTooltip(format.darkAqua(I18n.format("modpack.tooltip.ec2.pattern")));
               JEI.addDescription(item, I18n.format("modpack.tooltip.ec2.pattern"));
            }
        }
    }
}
