#packmode normal
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
    [<ore:toolHeadHammerIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:gtce.tool.files>, <ore:stickWood>, <ore:gtce.tool.hard.hammers>],
    [null, <ore:stickWood>, null]
]);



########################################
# Blocks
########################################
# Sawbench
recipes.remove(<architecturecraft:sawbench>);
recipes.addShaped(<architecturecraft:sawbench>, [
    [<ore:plateDoubleIron>, <ore:toolHeadBuzzSawIron>, <ore:plateDoubleIron>],
    [<ore:fenceWood>, <ore:gearWood>, <ore:fenceWood>],
    [<ore:fenceWood>, <minecraft:wooden_pressure_plate>, <ore:fenceWood>]
]);
