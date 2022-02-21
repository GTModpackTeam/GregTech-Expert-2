#packmode normal
# Imports
import mods.jei.JEI;
import mods.enderio.AlloySmelter; // 1
import mods.enderio.CombustionGen; // no
import mods.enderio.Enchanter; // no
import mods.enderio.SagMill; // 2
import mods.enderio.SliceNSplice; // 3
import mods.enderio.SoulBinder; // 4
import mods.enderio.Vat; // 5
import mods.enderio.Tank; // no



# Broken Spawners
for i, entitieMob in entitieMobs {
    SoulBinder.addRecipe(brokenSpawners[i], <ore:brokenSpawners>, [entitieMob], 2500000, 8);
}
