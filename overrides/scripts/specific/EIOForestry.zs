# Imports
import mods.jei.JEI;



########################################
# Items
########################################
<ore:craftPropolis>.addItems([
    <forestry:propolis:0>,
    <forestry:propolis:1>,
    <forestry:propolis:3>
]);

# Fluid Storage Housing
recipes.addShaped(<enderio:item_species_item_filter>, [
    [null, null, null],
    [<ore:craftPropolis>, <enderio:item_advanced_item_filter>, <ore:craftPropolis>],
    [null, null, null]
]);
