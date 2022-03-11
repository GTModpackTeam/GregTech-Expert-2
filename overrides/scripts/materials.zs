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

# Nether Quartz
var nether_quartz = MaterialRegistry.get("nether_quartz");
nether_quartz.addFluid(FluidTypes.LIQUID, false);
nether_quartz.addFlags(["generate_lens"]);

# Certus Quartz
var certus_quartz = MaterialRegistry.get("certus_quartz");
certus_quartz.addFluid(FluidTypes.LIQUID, false);
certus_quartz.addFlags(["generate_lens"]);



########################################
# Items
########################################
# Nether Quartz Rod
MaterialRegistry.get("nether_quartz").addFlags("generate_rod");

# Certus Quartz Rod
MaterialRegistry.get("certus_quartz").addFlags("generate_rod");

# Quartzite Quartz Rod
MaterialRegistry.get("quartzite").addFlags("generate_rod");

# EIO - Electrical Steel
MaterialBuilder(32100, "electrical_steel")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x949494)
    .blastTemp(2700, "HIGH", 480, 120)
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
    .blastTemp(2700, "HIGH", 480, 120)
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
    .blastTemp(2700, "HIGH", 480, 120)
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
    .blastTemp(2700, "HIGH", 480, 120)
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
    .blastTemp(2700, "HIGH", 480, 120)
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
    .blastTemp(2700, "HIGH", 480, 120)
    .flags([
        "generate_plate",
        "generate_rod"
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
    .blastTemp(2700, "HIGH", 480, 120)
    .flags([
        "generate_plate",
        "generate_rod",
        "generate_long_rod",
        "generate_ring",
        "generate_bolt_screw",
        "generate_frame"
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
    .blastTemp(3600, "HIGH", 480, 600)
    .build();
MaterialRegistry.get("soularium").setFormula("?", true);

# EIO - End Steel
MaterialBuilder(32108, "end_steel")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0xBCB682)
    .blastTemp(4500, "HIGHER", 1920, 1072)
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
    .blastTemp(5400, "HIGHER", 1920, 1072)
    .flags([
        "generate_plate"
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
    .blastTemp(3600, "HIGHER", 1920, 600)
    .build();
MaterialRegistry.get("crude_steel").setFormula("?", true);

# EIO - Crystalline Alloy
MaterialBuilder(32111, "crystalline_alloy")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x9FE4E4)
    .blastTemp(4500, "HIGHER", 1920, 600)
    .flags([
        "generate_plate"
    ])
    .build();
MaterialRegistry.get("crystalline_alloy").setFormula("?", true);

# EIO - Melodic Alloy
MaterialBuilder(32112, "melodic_alloy")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0xA877A8)
    .blastTemp(5400, "HIGHER", 1920, 600)
    .flags([
        "generate_plate"
    ])
    .build();
MaterialRegistry.get("melodic_alloy").setFormula("?", true);

# EIO - Stellar Alloy
MaterialBuilder(32113, "stellar_alloy")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0xDBDECC)
    .blastTemp(7200, "HIGHEST", 30720, 600)
    .flags([
        "generate_plate",
        "generate_rod"
    ])
    .build();
MaterialRegistry.get("stellar_alloy").setFormula("?", true);

# EIO - Crystalline Pink Slime
MaterialBuilder(32114, "crystalline_pink_slime")
    .ingot()
    .color(0xE79EDB)
    .blastTemp(5400, "HIGHER", 1920, 600)
    .flags([
        "generate_plate"
    ])
    .build();
MaterialRegistry.get("crystalline_pink_slime").setFormula("?", true);

# EIO - Energetic Silver
MaterialBuilder(32115, "energetic_silver")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x598DB3)
    .blastTemp(5400, "HIGHER", 1920, 1072)
    .build();
MaterialRegistry.get("energetic_silver").setFormula("?", true);

# EIO - Vivid Alloy
MaterialBuilder(32116, "vivid_alloy")
    .ingot()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x469BB1)
    .blastTemp(5400, "HIGHER", 1920, 1072)
    .build();
MaterialRegistry.get("vivid_alloy").setFormula("?", true);

# AE2 - Fluix Dust (Override)
MaterialBuilder(32117, "fluix")
    .dust()
    // .gem()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x846994).iconSet("QUARTZ")
    .flags([
        // "crystallizable"
        "generate_plate",
        "generate_lens"
    ])
    .components([
        <material:silicon> * 2,
        <material:oxygen> * 4,
        <material:redstone> * 1
    ])
    .build();

# AE2 - Charged Certus Quartz Dust
MaterialBuilder(32118, "charged_certus_quartz")
    .dust()
    // .gem()
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0xCFDAFF).iconSet("QUARTZ")
    .flags([
        // "crystallizable"
        "generate_plate",
        "generate_lens"
    ])
    .components([
        <material:silicon> * 1,
        <material:oxygen> * 2
    ])
    .build();
