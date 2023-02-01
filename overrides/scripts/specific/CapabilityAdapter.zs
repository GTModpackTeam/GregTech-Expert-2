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
    [<ore:crystalPureFluix>, <ore:ae2.interface.dual>, <ore:crystalPureFluix>],
    [<metaitem:plateTitanium>, <ore:crystalPureFluix>, <metaitem:plateTitanium>]
]);
