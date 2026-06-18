import net.minecraft.item.ItemStack
import net.minecraftforge.fml.common.Loader
import net.minecraftforge.fml.common.registry.ForgeRegistries

/**
 * Utility functions shared across GregTech Expert 2 GroovyScript files.
 */
class Common {

    /**
     * Collects every registered item belonging to the given mod as meta-0 ItemStacks.
     * Returns an empty list when the mod is not loaded, so callers can iterate unconditionally.
     *
     * @param modid the namespace to filter registered items by
     */
    static List<ItemStack> itemsOf(String modid) {
        if (!Loader.isModLoaded(modid)) return []

        return ForgeRegistries.ITEMS.valuesCollection
            .findAll { regItem -> regItem.registryName?.namespace == modid }
            .collect { regItem -> new ItemStack(regItem, 1, 0) }
    }

}
