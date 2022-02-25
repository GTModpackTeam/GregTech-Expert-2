#loader gregtech
# Imports
import mods.gregtech.material.FluidTypes;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;



########################################
# Fluid
########################################
# Naquadah Rocket Fuel
MaterialBuilder(32200, "naquadah_rocket_fuel")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x2E4C00)
    .build();

# Certus Quartz
<material:certus_quartz>.addFluid(FluidTypes.LIQUID, false);



########################################
# Items
########################################
# EIO - Electrical Steel
MaterialBuilder(32100, "electrical_steel")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x949494)
    .blastTemp(2700, "LOW", 480, 120)
    .flags([
        "generate_plate",
        "generate_rod",
        "generate_gear"
    ])
    .components([
        <material:steel> * 1,
        <material:coal> * 1,
        <material:silicon> * 1
    ])
    .build();

# EIO - Energetic Alloy
MaterialBuilder(32101, "energetic_alloy")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0xED8009)
    .blastTemp(2700, "LOW", 480, 120)
    .flags([
        "generate_plate",
        "generate_rod",
        "generate_gear"
    ])
    .components([
        <material:redstone> * 1,
        <material:gold> * 1,
        <material:glowstone> * 1
    ])
    .build();

# EIO - Vibrant Alloy
MaterialBuilder(32102, "vibrant_alloy")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0xBAC63F)
    .blastTemp(2700, "LOW", 480, 120)
    .flags([
        "generate_plate",
        "generate_rod",
        "generate_gear"
    ])
    .components([
        <material:energetic_alloy> * 1,
        <material:ender_pearl> * 1
    ])
    .build();

# EIO - Redstone Alloy
MaterialBuilder(32103, "redstone_alloy")
    .ingot()
    .color(0x942323)
    .blastTemp(2700, "LOW", 480, 120)
    .flags([
        "generate_plate"
    ])
    .components([
        <material:copper> * 1,
        <material:redstone> * 4,
        <material:silicon> * 1
    ])
    .build();

# EIO - Conductive Iron
MaterialBuilder(32104, "conductive_iron")
    .ingot()
    .color(0xD1A79B)
    .blastTemp(2700, "LOW", 480, 120)
    .flags([
        "generate_plate"
    ])
    .components([
        <material:iron> * 1,
        <material:redstone> * 1
    ])
    .build();

# EIO - Pulsating Iron
MaterialBuilder(32105, "pulsating_iron")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x6EAC7D)
    .blastTemp(2700, "LOW", 480, 120)
    .flags([
        "generate_plate",
        "generate_rod",
        "generate_gear"
    ])
    .components([
        <material:iron> * 1,
        <material:ender_pearl> * 1
    ])
    .build();

# EIO - Dark Steel
MaterialBuilder(32106, "dark_steel")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x5F5F5F)
    .blastTemp(2700, "LOW", 480, 120)
    .flags([
        "generate_plate",
        "generate_rod",
        "generate_long_rod",
        "generate_gear",
        "generate_ring",
        "generate_bolt_screw"
    ])
    .components([
        <material:iron> * 1,
        <material:coal> * 1,
        <material:obsidian> * 1
    ])
    .build();

# EIO - Soularium
MaterialBuilder(32107, "soularium")
    .ingot()
    .color(0x5A4226)
    .fluidTemp(1200)
    .flags([
        "generate_plate"
    ])
    .blastTemp(3600, "LOW", 480, 600)
    .build();

# EIO - End Steel
MaterialBuilder(32108, "end_steel")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0xBCB682)
    .blastTemp(4500, "LOW", 1920, 1072)
    .flags([
        "generate_plate",
        "generate_rod",
        "generate_long_rod",
        "generate_ring",
        "generate_bolt_screw"
    ])
    .components([
        <material:endstone> * 1,
        <material:dark_steel> * 1,
        <material:obsidian> * 1
    ])
    .build();

# EIO - Construction Alloy(Iron Alloy)
MaterialBuilder(32109, "construction_alloy")
    .ingot()
    .color(0x524C53)
    .blastTemp(5400, "LOW", 1920, 1072)
    .flags([
        "generate_plate",
    ])
    .components([
        <material:platinum> * 1,
        <material:iron> * 1,
        <material:aluminium> * 1
    ])
    .build();

# EIO - Crude Steel
MaterialBuilder(32110, "crude_steel")
    .ingot()
    .color(0x8C8682)
    .blastTemp(3600, "LOW", 480, 600)
    .build();

# EIO - Crystalline Alloy
MaterialBuilder(32111, "crystalline_alloy")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x9FE4E4)
    .blastTemp(3600, "LOW", 480, 600)
    .build();

# EIO - Melodic Alloy
MaterialBuilder(32112, "melodic_alloy")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0xA877A8)
    .blastTemp(3600, "LOW", 480, 600)
    .build();

# EIO - Stellar Alloy
MaterialBuilder(32113, "stellar_alloy")
    .ingot()
    .color(0xDBDECC)
    .blastTemp(3600, "LOW", 480, 600)
    .build();

# EIO - Crystalline Pink Slime
MaterialBuilder(32114, "crystalline_pink_slime")
    .ingot()
    .color(0xE79EDB)
    .blastTemp(3600, "LOW", 480, 600)
    .build();

# EIO - Energetic Silver
MaterialBuilder(32115, "energetic_silver")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x598DB3)
    .blastTemp(4500, "LOW", 1920, 1072)
    .build();

# EIO - Vivid Alloy
MaterialBuilder(32116, "vivid_alloy")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x469BB1)
    .blastTemp(5400, "LOW", 1920, 1072)
    .build();

# AE2 - Fluix Dust (Override)
MaterialBuilder(32117, "fluix")
    .dust()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x846994)
    .build();

# AE2 - Charged Certus Quartz Dust
MaterialBuilder(32118, "charged_certus_quartz")
    .dust()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0xCFDAFF)
    .build();
