# Imports
import mods.jei.JEI;
import mods.gtexpert.I18n;



########################################
# Items
########################################
# Wireless Crafting Terminal
recipes.remove(<wct:wct>);
recipes.addShapeless(<wct:wct>, [<appliedenergistics2:wireless_crafting_terminal>]);
<wct:wct>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

# Wireless Fluid Terminal
recipes.remove(<wft:wft>);
recipes.addShapeless(<wft:wft>, [<appliedenergistics2:wireless_fluid_terminal>]);
<wft:wft>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

# Wireless Interface Terminal
recipes.remove(<wit:wit>);
recipes.addShaped(<wit:wit>, [
    [<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:wireless_terminal>, <appliedenergistics2:dense_energy_cell>],
    [<metaitem:sensor.iv>, <appliedenergistics2:part:480>, <metaitem:sensor.iv>],
    [<metaitem:stickOsmiridium>, <metaitem:emitter.iv>, <metaitem:stickOsmiridium>]
]);

# Wireless Pattern Terminal
recipes.remove(<wpt:wpt>);
recipes.addShapeless(<wpt:wpt>, [<appliedenergistics2:wireless_pattern_terminal>]);
<wpt:wpt>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

# Infinity Booster Card
recipes.remove(<ae2wtlib:infinity_booster_card>);
recipes.addShaped(<ae2wtlib:infinity_booster_card>, [
    [<metaitem:sensor.iv>, <appliedenergistics2:material:42>, <metaitem:sensor.iv>],
    [<appliedenergistics2:material:42>, <metaitem:cover.digital.wireless>, <appliedenergistics2:material:42>],
    [<metaitem:sensor.iv>, <appliedenergistics2:material:42>, <metaitem:sensor.iv>]
]);

# Magnet Card
recipes.remove(<wct:magnet_card>);
recipes.addShapeless(<wct:magnet_card>, [<appliedenergistics2:material:60>]);
<wct:magnet_card>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
