#packmode normal
# Imoprts
import mods.extendedcrafting.TableCrafting;



########################################
# Items
########################################
# GTE ME Storage Fake Component
TableCrafting.addShaped(0, <contenttweaker:creativecomponent>, [
    [<ore:screwNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:screwNeutronium>], 
    [<ore:plateDenseNeutronium>, <enderio:block_cap_bank>.withEmptyTag(), <gregtech:machine:1344>, <gregtech:machine:1344>, <gregtech:machine:1344>, <gregtech:machine:1344>, <gregtech:machine:1344>, <enderio:block_cap_bank>.withEmptyTag(), <ore:plateDenseNeutronium>], 
    [<ore:plateDenseNeutronium>, <gregtech:machine:1344>, <appliedenergistics2:creative_energy_cell>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <appliedenergistics2:creative_energy_cell>, <gregtech:machine:1344>, <ore:plateDenseNeutronium>], 
    [<ore:plateDenseNeutronium>, <gregtech:machine:1344>, <ore:plateDenseNeutronium>, <extracells:storage.component:3>, <extracells:storage.component:10>, <extracells:storage.component:3>, <ore:plateDenseNeutronium>, <gregtech:machine:1344>, <ore:plateDenseNeutronium>], 
    [<ore:plateDenseNeutronium>, <gregtech:machine:1344>, <ore:plateDenseNeutronium>, <extracells:storage.component:10>, <extracells:storage.component:3>, <extracells:storage.component:10>, <ore:plateDenseNeutronium>, <gregtech:machine:1344>, <ore:plateDenseNeutronium>], 
    [<ore:plateDenseNeutronium>, <gregtech:machine:1344>, <ore:plateDenseNeutronium>, <extracells:storage.component:3>, <extracells:storage.component:10>, <extracells:storage.component:3>, <ore:plateDenseNeutronium>, <gregtech:machine:1344>, <ore:plateDenseNeutronium>], 
    [<ore:plateDenseNeutronium>, <gregtech:machine:1344>, <appliedenergistics2:creative_energy_cell>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <appliedenergistics2:creative_energy_cell>, <gregtech:machine:1344>, <ore:plateDenseNeutronium>], 
    [<ore:plateDenseNeutronium>, <enderio:block_cap_bank>.withEmptyTag(), <gregtech:machine:1344>, <gregtech:machine:1344>, <gregtech:machine:1344>, <gregtech:machine:1344>, <gregtech:machine:1344>, <enderio:block_cap_bank>.withEmptyTag(), <ore:plateDenseNeutronium>], 
    [<ore:screwNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:plateDenseNeutronium>, <ore:screwNeutronium>]
]);
<contenttweaker:creativecomponent>.addTooltip(format.red("Congratulations! You've defeated the first!"));
<contenttweaker:creativecomponent>.addTooltip(format.red("Then let's go take out the second generation."));
