#loader gregtech
#priority 10000
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;



########################################
# Items
########################################
#
// MaterialBuilder(32117, "")
//     .dust()
//     .color(0x942323)
//     .build();

#
// MaterialBuilder(32118, "")
//     .dust()
//     .color(0x942323)
//     .build();



########################################
# Fluid
########################################
# Naquadah Rocket Fuel
MaterialBuilder(32200, "naquadah_rocket_fuel")
    .fluid("fluid", false)
    .color(0x2E4C00)
    .fluidTemp(1200)
    .build();
