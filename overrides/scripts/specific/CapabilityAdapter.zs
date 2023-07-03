#modloaded rf-capability-adapter
# Imports
import mods.jei.JEI;



########################################
# Blocks
########################################
# Capability Adapter
recipes.remove(<rf-capability-adapter:aecapabilityadapter>);
recipes.addShaped(<rf-capability-adapter:aecapabilityadapter>, [
    [<metaitem:plateTitanium>, <ore:crystalPureFluix>, <metaitem:plateTitanium>],
    [<ore:crystalPureFluix>, <ore:craftInterfaceDual>, <ore:crystalPureFluix>],
    [<metaitem:plateTitanium>, <ore:crystalPureFluix>, <metaitem:plateTitanium>]
]);
