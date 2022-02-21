#packmode normal
# Imports
import mods.jei.JEI;
import mods.enderio.AlloySmelter; // 1
import mods.enderio.CombustionGen; // no
import mods.enderio.Enchanter; // no
import mods.enderio.SagMill; // 2
import mods.enderio.SliceNSplice; // 3
import mods.enderio.SoulBinder; // 4
import mods.enderio.Vat; // 5
import mods.enderio.Tank; // no



# Item Conduit
assembler.recipeBuilder()
    .inputs([
        <ore:pipeSmallItemElectrum>,
        <ore:platePulsatingIron>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_item_conduit>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Fluid Conduit
assembler.recipeBuilder()
    .inputs([
        <ore:pipeNormalFluidCopper>,
        <ore:plateElectricalSteel>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_liquid_conduit>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Pressurized Fluid Conduit
assembler.recipeBuilder()
    .inputs([
        <ore:pipeNormalFluidSteel>,
        <ore:plateDarkSteel>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_liquid_conduit:1>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Ender Fluid Conduit
assembler.recipeBuilder()
    .inputs([
        <ore:pipeTinyFluidPolytetrafluoroethylene>,
        <ore:plateVibrantAlloy>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_liquid_conduit:2>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Power Conduit
JEI.removeAndHide(<enderio:item_power_conduit:*>);

# Redstone Conduit
assembler.recipeBuilder()
    .inputs([
        <ore:wireGtSingleRedAlloy>,
        <ore:plateRedstoneAlloy>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_redstone_conduit>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# ME Conduit
assembler.recipeBuilder()
    .inputs([
        <ore:ae2.cable.glass>,
        <ore:plateTitanium>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_me_conduit>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Dense ME Conduit
assembler.recipeBuilder()
    .inputs([
        <enderio:item_me_conduit> * 4,
        <ore:plateTitanium>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_me_conduit:1>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# OC Conduit
assembler.recipeBuilder()
    .inputs([
        <opencomputers:cable>,
        <ore:plateRedstoneAlloy>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_opencomputers_conduit>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Endergy Conduit
JEI.removeAndHide(<enderio:item_endergy_conduit:*>);
