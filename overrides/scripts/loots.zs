# Imports
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.entity.IEntityDrop;
import crafttweaker.entity.IEntityDefinition;



########################################
# Minecraft
########################################
# Creeper
<entity:minecraft:creeper>.addPlayerOnlyDrop(<minecraft:skull:4>.weight(0.025), 1, 1);

# Enderman
<entity:minecraft:enderman>.addPlayerOnlyDrop(<enderio:block_enderman_skull>.weight(0.025), 1, 1);

# Skeleton
<entity:minecraft:skeleton>.addPlayerOnlyDrop(<minecraft:skull:0>.weight(0.025), 1, 1);

# Zombie
<entity:minecraft:zombie>.addPlayerOnlyDrop(<minecraft:skull:2>.weight(0.025), 1, 1);
