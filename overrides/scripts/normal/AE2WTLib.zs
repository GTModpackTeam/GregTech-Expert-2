#packmode normal
# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Wireless Crafting Terminal
recipes.remove(<wct:wct>);
recipes.addShaped(<wct:wct>, [
    [<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:wireless_terminal>, <appliedenergistics2:dense_energy_cell>],
    [<metaitem:sensor.luv>, <appliedenergistics2:part:360>, <metaitem:sensor.luv>],
    [<ore:stickOsmiridium>, <metaitem:emitter.luv>, <ore:stickOsmiridium>]
]);

# Wireless Fluid Terminal
recipes.remove(<wft:wft>);
recipes.addShaped(<wft:wft>, [
    [<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:wireless_terminal>, <appliedenergistics2:dense_energy_cell>],
    [<metaitem:sensor.iv>, <appliedenergistics2:part:520>, <metaitem:sensor.iv>],
    [<ore:stickOsmiridium>, <metaitem:emitter.iv>, <ore:stickOsmiridium>]
]);
recipes.addShapeless(<wft:wft>, [<extracells:terminal.fluid.wireless>]);

# Wireless Interface Terminal
recipes.remove(<wit:wit>);
recipes.addShaped(<wit:wit>, [
    [<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:wireless_terminal>, <appliedenergistics2:dense_energy_cell>],
    [<metaitem:sensor.iv>, <appliedenergistics2:part:480>, <metaitem:sensor.iv>],
    [<ore:stickOsmiridium>, <metaitem:emitter.iv>, <ore:stickOsmiridium>]
]);

# Wireless Pattern Terminal
recipes.remove(<wpt:wpt>);
recipes.addShaped(<wpt:wpt>, [
    [<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:wireless_terminal>, <appliedenergistics2:dense_energy_cell>],
    [<metaitem:sensor.iv>, <appliedenergistics2:part:340>, <metaitem:sensor.iv>],
    [<ore:stickOsmiridium>, <metaitem:emitter.iv>, <ore:stickOsmiridium>]
]);

# Wireless Universal Terminal
recipes.addShapeless(<ae2wtlib:wut>, [<extracells:terminal.universal.wireless>]);

# Wireless Booster Card
recipes.remove(<ae2wtlib:infinity_booster_card>);
recipes.addShaped(<ae2wtlib:infinity_booster_card>, [
    [<metaitem:sensor.iv>, <appliedenergistics2:material:42>, <metaitem:sensor.iv>],
    [<appliedenergistics2:material:42>, <metaitem:cover.digital.wireless>.withEmptyTag(), <appliedenergistics2:material:42>],
    [<metaitem:sensor.iv>, <appliedenergistics2:material:42>, <metaitem:sensor.iv>]
]);

# Magnet Card
recipes.remove(<wct:magnet_card>);
recipes.addShaped(<wct:magnet_card>, [
    [<ore:plateRedstone>, <appliedenergistics2:part:300>, <ore:plateLapis>],
    [<ore:stickNeodymiumMagnetic>, <appliedenergistics2:material:28>, <ore:stickNeodymiumMagnetic>],
    [<ore:stickNeodymiumMagnetic>, <ore:ingotNeodymiumMagnetic>, <ore:stickNeodymiumMagnetic>]
]);
