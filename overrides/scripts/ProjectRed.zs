# Imoprts
import mods.jei.JEI;



########################################
# Items
########################################
# Copper Ingot
mods.jei.JEI.hide(<projectred-core:resource_item:100>);
<ore:ingotCopper>.remove(<projectred-core:resource_item:100>);

# Tin Ingot
mods.jei.JEI.hide(<projectred-core:resource_item:101>);
<ore:ingotTin>.remove(<projectred-core:resource_item:101>);

# Silver Ingot
mods.jei.JEI.hide(<projectred-core:resource_item:102>);
<ore:ingotSilver>.remove(<projectred-core:resource_item:102>);

# RedAlloy Ingot
furnace.remove(<projectred-core:resource_item:103>);
mods.jei.JEI.hide(<projectred-core:resource_item:103>);
<ore:ingotRedAlloy>.remove(<projectred-core:resource_item:103>);

# ElectrotineAlloy Ingot
furnace.remove(<projectred-core:resource_item:104>);
mods.jei.JEI.hide(<projectred-core:resource_item:104>);
<ore:ingotElectrotineAlloy>.remove(<projectred-core:resource_item:104>);

# Ruby
mods.jei.JEI.hide(<projectred-core:resource_item:200>);
<ore:gemRuby>.remove(<projectred-core:resource_item:200>);

# Sapphire
mods.jei.JEI.hide(<projectred-core:resource_item:201>);
<ore:gemSapphire>.remove(<projectred-core:resource_item:201>);

# Peridot
mods.jei.JEI.hide(<projectred-core:resource_item:202>);
<ore:gemPeridot>.remove(<projectred-core:resource_item:202>);

# Red Iron Compound
recipes.remove(<projectred-core:resource_item:251>);
mods.jei.JEI.hide(<projectred-core:resource_item:251>);

# Electrotine Iron Compound
recipes.remove(<projectred-core:resource_item:252>);
mods.jei.JEI.hide(<projectred-core:resource_item:252>);

# Woven Cloth
recipes.remove(<projectred-core:resource_item:420>);
mods.jei.JEI.hide(<projectred-core:resource_item:420>);

# Sail
recipes.remove(<projectred-core:resource_item:421>);
mods.jei.JEI.hide(<projectred-core:resource_item:421>);
