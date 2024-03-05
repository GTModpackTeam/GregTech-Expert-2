# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Food Journal
recipes.remove(<spiceoflife:bookfoodjournal>);
recipes.addShapeless(<spiceoflife:bookfoodjournal>, [<minecraft:book>, <minecraft:wheat>]);

# Lunchbag
recipes.remove(<spiceoflife:lunchbag>);
recipes.addShaped(<spiceoflife:lunchbag>, [
    [<minecraft:paper>, null, <minecraft:paper>],
    [<metaitem:rubber_drop>, <minecraft:paper>, <metaitem:rubber_drop>],
    [null, null, null]
]);

# Lunchbox
recipes.remove(<spiceoflife:lunchbox>);
recipes.addShaped(<spiceoflife:lunchbox>, [
    [<metaitem:plateDoubleIron>, <ore:craftingToolScrewdriver>, <metaitem:plateDoubleIron>],
    [<metaitem:screwIron>, <metaitem:plateDoubleIron>, <metaitem:screwIron>],
    [null, null, null]
]);
