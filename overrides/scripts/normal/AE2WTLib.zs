# Imports
import mods.jei.JEI;
import mods.gtexpert.I18n;



########################################
# Items
########################################
# Wireless Crafting Terminal
recipes.remove(<wct:wct>);
<wct:wct>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

# Wireless Fluid Terminal
recipes.remove(<wft:wft>);
<wft:wft>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

# Wireless Interface Terminal
recipes.remove(<wit:wit>);
<wit:wit>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

# Wireless Pattern Terminal
recipes.remove(<wpt:wpt>);
<wpt:wpt>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

# Wireless Ultimate Terminal
recipes.remove(<ae2wtlib:wut>);
<ae2wtlib:wut>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

# Infinity Booster Card
recipes.remove(<ae2wtlib:infinity_booster_card>);
<wpt:wpt>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));

# Magnet Card
recipes.remove(<wct:magnet_card>);
<wct:magnet_card>.addTooltip(format.red(I18n.format("modpack.deprecated.tooltip.1")));
