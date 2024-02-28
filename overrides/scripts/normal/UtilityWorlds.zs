# Imports
import mods.jei.JEI;



########################################
# Blocks
########################################
# Mining Portal
JEI.hide(<utilityworlds:portal_mining>);

# Void Portal
recipes.addShapeless(<utilityworlds:portal_void>, [<utilityworlds:portal_void>.withEmptyTag()]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:frameAluminium>,
        <metaitem:plateRedstone>,
        <metaitem:plateObsidian> * 3
    ])
    .outputs([<utilityworlds:portal_void>])
    .duration(2000)
    .EUt(480)
    .buildAndRegister();

# Garden Portal
recipes.addShapeless(<utilityworlds:portal_garden>, [<utilityworlds:portal_garden>.withEmptyTag()]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:frameTitanium>,
        <metaitem:plateEmerald>,
        <metaitem:plateObsidian> * 3
    ])
    .outputs([<utilityworlds:portal_garden>])
    .duration(2000)
    .EUt(1920)
    .buildAndRegister();
