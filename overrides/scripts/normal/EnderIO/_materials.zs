#packmode normal
#loader gregtech
#priority 10000
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;



# Electrical Steel
MaterialBuilder(32100, "electrical_steel")
    .ingot().fluid()
    .color(0x949494)
    .blastTemp(1750, "LOW", 480, 120)
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
    .cableProperties(128, 2, 0, false)
    .build();

# Energetic Alloy
MaterialBuilder(32101, "energetic_alloy")
    .ingot().fluid()
    .color(0xED8009)
    .blastTemp(1750, "LOW", 480, 120)
    .flags([
        "generate_plate"
    ])
    .components([
        <material:redstone> * 1,
        <material:gold> * 1,
        <material:glowstone> * 1
    ])
    .cableProperties(128, 2, 0, false)
    .build();

# Vibrant Alloy
MaterialBuilder(32102, "vibrant_alloy")
    .ingot().fluid()
    .color(0xBAC63F)
    .blastTemp(1750, "LOW", 480, 120)
    .flags([
        "generate_plate",
        "generate_rod",
        "generate_gear"
    ])
    .components([
        <material:energetic_alloy> * 1,
        <material:ender_pearl> * 1
    ])
    .cableProperties(512, 2, 0, false)
    .build();

# Redstone Alloy
MaterialBuilder(32103, "redstone_alloy")
    .ingot()
    .color(0x942323)
    .blastTemp(1750, "LOW", 480, 120)
    .components([
        <material:copper> * 1,
        <material:redstone> * 4,
        <material:silicon> * 1
    ])
    .build();

# Conductive Iron
MaterialBuilder(32104, "conductive_iron")
    .ingot()
    .color(0xD1A79B)
    .blastTemp(1750, "LOW", 480, 120)
    .flags([
        "generate_plate"
    ])
    .components([
        <material:iron> * 1,
        <material:redstone> * 1
    ])
    .cableProperties(512, 2, 0, false)
    .build();

# Pulsating Iron
MaterialBuilder(32105, "pulsating_iron")
    .ingot().fluid()
    .color(0x6EAC7D)
    .blastTemp(1750, "LOW", 480, 120)
    .flags([
        "generate_plate"
    ])
    .components([
        <material:iron> * 1,
        <material:ender_pearl> * 1
    ])
    .cableProperties(512, 3, 0, false)
    .build();

# Dark Steel
MaterialBuilder(32106, "dark_steel")
    .ingot().fluid()
    .color(0x5F5F5F)
    .blastTemp(1750, "LOW", 480, 120)
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

# Soularium
MaterialBuilder(32107, "soularium")
    .ingot()
    .color(0x5A4226)
    .blastTemp(2700, "LOW", 480, 600)
    .build();

# End Steel
MaterialBuilder(32108, "end_steel")
    .ingot()
    .color(0xBCB682)
    .blastTemp(3600, "LOW", 1920, 1072)
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

# Construction Alloy(Iron Alloy)
MaterialBuilder(32109, "construction_alloy")
    .ingot()
    .color(0x524C53)
    .blastTemp(4500, "LOW", 1920, 1072)
    .components([
        <material:platinum> * 1,
        <material:iron> * 1,
        <material:aluminium> * 1
    ])
    .build();

# Crude Steel
MaterialBuilder(32110, "crude_steel")
    .ingot()
    .color(0x8C8682)
    .blastTemp(2700, "LOW", 480, 600)
    .build();

# Crystalline Alloy
MaterialBuilder(32111, "crystalline_alloy")
    .ingot()
    .color(0x9FE4E4)
    .blastTemp(2700, "LOW", 480, 600)
    .build();

# Melodic Alloy
MaterialBuilder(32112, "melodic_alloy")
    .ingot()
    .color(0xA877A8)
    .blastTemp(2700, "LOW", 480, 600)
    .build();

# Stellar Alloy
MaterialBuilder(32113, "stellar_alloy")
    .ingot()
    .color(0xDBDECC)
    .blastTemp(2700, "LOW", 480, 600)
    .build();

# Crystalline Pink Slime
MaterialBuilder(32114, "crystalline_pink_slime")
    .ingot()
    .color(0xE79EDB)
    .blastTemp(2700, "LOW", 480, 600)
    .build();

# Energetic Silver
MaterialBuilder(32115, "energetic_silver")
    .ingot()
    .color(0x598DB3)
    .blastTemp(3600, "LOW", 1920, 1072)
    .build();

# Vivid Alloy
MaterialBuilder(32116, "vivid_alloy")
    .ingot()
    .color(0x469BB1)
    .blastTemp(4500, "LOW", 1920, 1072)
    .build();
