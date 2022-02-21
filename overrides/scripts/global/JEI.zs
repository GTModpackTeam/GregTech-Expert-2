# Imports
import mods.jei.JEI;
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;



########################################
# Applied Energistics 2
########################################
<appliedenergistics2:part:469>.addTooltip(format.green("Made by right-clicking ME P2P Tunnel with an energy conduit."));
JEI.addDescription(<appliedenergistics2:part:469>, "Made by right-clicking ME P2P Tunnel with an energy conduit.");

<appliedenergistics2:part:463>.addTooltip(format.green("Made by right-clicking ME P2P Tunnel with a bucket."));
JEI.addDescription(<appliedenergistics2:part:463>, "Made by right-clicking ME P2P Tunnel with a bucket.");

<appliedenergistics2:part:470>.addTooltip(format.green("Made by right-clicking ME P2P Tunnel with a GTCEu energy cable."));
JEI.addDescription(<appliedenergistics2:part:470>, "Made by right-clicking ME P2P Tunnel with a GTCEu energy cable.");

<appliedenergistics2:part:462>.addTooltip(format.green("Made by right-clicking ME P2P Tunnel with a chest."));
JEI.addDescription(<appliedenergistics2:part:462>, "Made by right-clicking ME P2P Tunnel with a chest.");

<appliedenergistics2:part:467>.addTooltip(format.green("Made by right-clicking ME P2P Tunnel with a torch."));
JEI.addDescription(<appliedenergistics2:part:467>, "Made by right-clicking ME P2P Tunnel with a torch.");

<appliedenergistics2:part:461>.addTooltip(format.green("Made by right-clicking ME P2P Tunnel with redstone dust."));
JEI.addDescription(<appliedenergistics2:part:461>, "Made by right-clicking ME P2P Tunnel with redstone dust.");

val ae2 as IMod = loadedMods["appliedenergistics2"];
if (!isNull(ae2)) {
    val ae2Items as IItemStack[] = ae2.items;

    for item in ae2Items {
        if(item.displayName has "Cable Facade") {
            if(item.displayName has "TNT") {
                item.addTooltip(format.darkAqua("Facades can be crafted from most blocks, but are hidden from JEI to reduce clutter"));
                JEI.addDescription(item, "Facades can be crafted from most blocks, but are hidden from JEI to reduce clutter");
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
               item.addTooltip(format.darkAqua("Pattern can be crafted from most blocks, but are hidden from JEI to reduce clutter"));
               JEI.addDescription(item, "Pattern can be crafted from most blocks, but are hidden from JEI to reduce clutter");
            }
        }
    }
}
