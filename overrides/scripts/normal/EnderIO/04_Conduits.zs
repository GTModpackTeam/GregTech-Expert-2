# Imports
import mods.jei.JEI;



# Item Conduit
assembler.recipeBuilder()
    .inputs([
        <metaitem:pipeSmallItemElectrum>,
        <metaitem:platePulsatingIron>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_item_conduit>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Fluid Conduit
assembler.recipeBuilder()
    .inputs([
        <metaitem:pipeNormalFluidCopper>,
        <metaitem:plateElectricalSteel>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_liquid_conduit>])
    .duration(100)
    .EUt(120)
    .buildAndRegister();

# Pressurized Fluid Conduit
assembler.recipeBuilder()
    .inputs([
        <metaitem:pipeNormalFluidSteel>,
        <metaitem:plateDarkSteel>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_liquid_conduit:1>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Ender Fluid Conduit
assembler.recipeBuilder()
    .inputs([
        <metaitem:pipeTinyFluidPolytetrafluoroethylene>,
        <metaitem:plateVibrantAlloy>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_liquid_conduit:2>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Energy Conduit
assembler.recipeBuilder()
    .inputs([
        <metaitem:wireGtSingleGold>,
        <metaitem:plateConductiveIron>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_power_conduit>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Enhaned Energy Conduit
assembler.recipeBuilder()
    .inputs([
        <metaitem:wireGtSingleAluminium>,
        <metaitem:plateEnergeticAlloy>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_power_conduit:1>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Ender Energy Conduit
assembler.recipeBuilder()
    .inputs([
        <metaitem:wireGtSingleOsmium>,
        <metaitem:plateVibrantAlloy>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_power_conduit:2>])
    .duration(100)
    .EUt(7680)
    .buildAndRegister();

# Redstone Conduit
assembler.recipeBuilder()
    .inputs([
        <metaitem:wireGtSingleRedAlloy>,
        <metaitem:plateRedstoneAlloy>
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
        <metaitem:plateTitanium>
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
        <metaitem:plateTitanium>
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
        <metaitem:plateRedstoneAlloy>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_opencomputers_conduit>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Endergy Conduit
JEI.hide(<enderio:item_endergy_conduit>);
JEI.hide(<enderio:item_endergy_conduit:1>);
JEI.hide(<enderio:item_endergy_conduit:2>);
JEI.hide(<enderio:item_endergy_conduit:3>);
JEI.hide(<enderio:item_endergy_conduit:4>);
JEI.hide(<enderio:item_endergy_conduit:5>);
JEI.hide(<enderio:item_endergy_conduit:6>);
JEI.hide(<enderio:item_endergy_conduit:7>);

# Crystalline Alloy Endergy Conduit
assembler.recipeBuilder()
    .inputs([
        <metaitem:wireGtSingleHssg>,
        <metaitem:plateCrystallineAlloy>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_endergy_conduit:8>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Crystalline Pink Slime Endergy Conduit
assembler.recipeBuilder()
    .inputs([
        <metaitem:wireGtSingleNiobiumTitanium>,
        <metaitem:plateCrystallinePinkSlime>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_endergy_conduit:9>])
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

# Melodic Alloy Endergy Conduit
assembler.recipeBuilder()
    .inputs([
        <metaitem:wireGtSingleNaquadah>,
        <metaitem:plateMelodicAlloy>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<enderio:item_endergy_conduit:10>])
    .duration(100)
    .EUt(7680)
    .buildAndRegister();

# Stellar Alloy Endergy Conduit
JEI.hide(<enderio:item_endergy_conduit:11>);
