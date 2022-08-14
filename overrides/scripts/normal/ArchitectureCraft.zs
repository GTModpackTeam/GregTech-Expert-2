# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Circular Saw Blade
JEI.removeAndHide(<architecturecraft:sawblade>);

# Large Pulley
JEI.removeAndHide(<architecturecraft:largepulley>);

# Chisel
recipes.remove(<architecturecraft:chisel>);
recipes.addShapeless(<architecturecraft:chisel>, [<chisel:chisel_iron>]);

# Hammer
recipes.remove(<architecturecraft:hammer>);
recipes.addShaped(<architecturecraft:hammer>, [
    [<metaitem:toolHeadHammerIron>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<ore:gtce.tool.files>, <minecraft:stick>, <ore:gtce.tool.hard.hammers>],
    [null, <minecraft:stick>, null]
]);



########################################
# Blocks
########################################
# Sawbench
recipes.remove(<architecturecraft:sawbench>);
recipes.addShaped(<architecturecraft:sawbench>, [
    [<metaitem:plateDoubleIron>, <metaitem:toolHeadBuzzSawIron>, <metaitem:plateDoubleIron>],
    [<ore:fenceWood>, <metaitem:gearWood>, <ore:fenceWood>],
    [<ore:fenceWood>, <minecraft:wooden_pressure_plate>, <ore:fenceWood>]
]);
