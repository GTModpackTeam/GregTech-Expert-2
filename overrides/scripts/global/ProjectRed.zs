# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Electrotine
JEI.hide(<projectred-core:resource_item:105>);
<ore:dustElectrotine>.remove(<projectred-core:resource_item:105>);

# Sandy Compound
JEI.removeAndHide(<projectred-core:resource_item:250>);

# Silicon Boule
furnace.remove(<projectred-core:resource_item:300>);
JEI.hide(<projectred-core:resource_item:300>);

# Silicon
JEI.removeAndHide(<projectred-core:resource_item:301>);

# Red Silicon Compound
recipes.remove(<projectred-core:resource_item:310>);
recipes.addShaped(<projectred-core:resource_item:310>, [
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
    [<ore:dustRedstone>, <gregtech:meta_item_1:371>, <ore:dustRedstone>],
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]
]);

# Glowing Silicon Compound
recipes.remove(<projectred-core:resource_item:311>);
recipes.addShaped(<projectred-core:resource_item:311>, [
    [<ore:dustGlowstone>, <ore:dustGlowstone>, <ore:dustGlowstone>],
    [<ore:dustGlowstone>, <gregtech:meta_item_1:371>, <ore:dustGlowstone>],
    [<ore:dustGlowstone>, <ore:dustGlowstone>, <ore:dustGlowstone>]
]);

# Electrotine Silicon Compound
JEI.removeAndHide(<projectred-core:resource_item:312>);

# Electro Silicon
furnace.remove(<projectred-core:resource_item:342>);
JEI.hide(<projectred-core:resource_item:342>);

# Copper Ingot
JEI.hide(<projectred-core:resource_item:100>);
<ore:ingotCopper>.remove(<projectred-core:resource_item:100>);

# Tin Ingot
JEI.hide(<projectred-core:resource_item:101>);
<ore:ingotTin>.remove(<projectred-core:resource_item:101>);

# Silver Ingot
JEI.hide(<projectred-core:resource_item:102>);
<ore:ingotSilver>.remove(<projectred-core:resource_item:102>);

# RedAlloy Ingot
furnace.remove(<projectred-core:resource_item:103>);
JEI.hide(<projectred-core:resource_item:103>);
<ore:ingotRedAlloy>.remove(<projectred-core:resource_item:103>);

# ElectrotineAlloy Ingot
furnace.remove(<projectred-core:resource_item:104>);
JEI.hide(<projectred-core:resource_item:104>);
<ore:ingotElectrotineAlloy>.remove(<projectred-core:resource_item:104>);

# Ruby
JEI.hide(<projectred-core:resource_item:200>);
<ore:gemRuby>.remove(<projectred-core:resource_item:200>);

# Sapphire
JEI.hide(<projectred-core:resource_item:201>);
<ore:gemSapphire>.remove(<projectred-core:resource_item:201>);

# Peridot
JEI.hide(<projectred-core:resource_item:202>);
<ore:gemPeridot>.remove(<projectred-core:resource_item:202>);

# Red Iron Compound
JEI.removeAndHide(<projectred-core:resource_item:251>);

# Electrotine Iron Compound
JEI.removeAndHide(<projectred-core:resource_item:252>);

# Woven Cloth
JEI.removeAndHide(<projectred-core:resource_item:420>);

# Sail
JEI.removeAndHide(<projectred-core:resource_item:421>);

# Motor
JEI.removeAndHide(<projectred-core:resource_item:410>);

# Copper Coil
JEI.removeAndHide(<projectred-core:resource_item:400>);

# Iron Coil
JEI.removeAndHide(<projectred-core:resource_item:401>);

# Gold Coil
JEI.removeAndHide(<projectred-core:resource_item:402>);
