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

# Energy Conduit
JEI.hide(<enderio:item_power_conduit>);
// assembler.recipeBuilder()
//     .inputs([
//         <ore:wireGtSingleGold>,
//         <ore:plateConductiveIron>
//     ])
//     .fluidInputs([<liquid:plastic> * 144])
//     .outputs([<enderio:item_power_conduit>])
//     .duration(100)
//     .EUt(480)
//     .buildAndRegister();

# Enhaned Energy Conduit
JEI.hide(<enderio:item_power_conduit:1>);
// assembler.recipeBuilder()
//     .inputs([
//         <ore:wireGtSingleAluminium>,
//         <ore:plateEnergeticAlloy>
//     ])
//     .fluidInputs([<liquid:plastic> * 144])
//     .outputs([<enderio:item_power_conduit:1>])
//     .duration(100)
//     .EUt(1920)
//     .buildAndRegister();

# Ender Energy Conduit
JEI.hide(<enderio:item_power_conduit:2>);
// assembler.recipeBuilder()
//     .inputs([
//         <ore:wireGtSingleOsmium>,
//         <ore:plateVibrantAlloy>
//     ])
//     .fluidInputs([<liquid:plastic> * 144])
//     .outputs([<enderio:item_power_conduit:2>])
//     .duration(100)
//     .EUt(7680)
//     .buildAndRegister();

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
JEI.hide(<enderio:item_endergy_conduit>);
JEI.hide(<enderio:item_endergy_conduit:1>);
JEI.hide(<enderio:item_endergy_conduit:2>);
JEI.hide(<enderio:item_endergy_conduit:3>);
JEI.hide(<enderio:item_endergy_conduit:4>);
JEI.hide(<enderio:item_endergy_conduit:5>);
JEI.hide(<enderio:item_endergy_conduit:6>);
JEI.hide(<enderio:item_endergy_conduit:7>);

# Crystalline Alloy Endergy Conduit
JEI.hide(<enderio:item_endergy_conduit:8>);
// assembler.recipeBuilder()
//     .inputs([
//         <ore:wireGtSingleHssg>,
//         <ore:plateCrystallineAlloy>
//     ])
//     .fluidInputs([<liquid:plastic> * 144])
//     .outputs([<enderio:item_endergy_conduit:8>])
//     .duration(100)
//     .EUt(1920)
//     .buildAndRegister();

# Crystalline Pink Slime Endergy Conduit
JEI.hide(<enderio:item_endergy_conduit:9>);
// assembler.recipeBuilder()
//     .inputs([
//         <ore:wireGtSingleNiobiumTitanium>,
//         <ore:plateCrystallinePinkSlime>
//     ])
//     .fluidInputs([<liquid:plastic> * 144])
//     .outputs([<enderio:item_endergy_conduit:9>])
//     .duration(100)
//     .EUt(1920)
//     .buildAndRegister();

# Melodic Alloy Endergy Conduit
JEI.hide(<enderio:item_endergy_conduit:10>);
// assembler.recipeBuilder()
//     .inputs([
//         <ore:wireGtSingleNaquadah>,
//         <ore:plateMelodicAlloy>
//     ])
//     .fluidInputs([<liquid:plastic> * 144])
//     .outputs([<enderio:item_endergy_conduit:10>])
//     .duration(100)
//     .EUt(7680)
//     .buildAndRegister();

# Stellar Alloy Endergy Conduit
JEI.hide(<enderio:item_endergy_conduit:11>);
