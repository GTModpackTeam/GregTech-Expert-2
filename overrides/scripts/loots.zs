# Imports
import loottweaker.LootContext;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootFunction;
import loottweaker.vanilla.loot.Functions;
import loottweaker.vanilla.loot.Conditions;



########################################
# Minecraft
########################################
# Creeper
val creeper = LootTweaker.getTable("minecraft:entities/creeper").getPool("main");
creeper.addItemEntry(<minecraft:skull:4>, 1, 0, [
{
    "count": {
        "min": 1.0,
        "max": 1.0
    },
    "function": "minecraft:set_count"
}
], [
    {
        "inverse": false,
        "condition": "minecraft:killed_by_player"
    },
    {
        "chance": 0.025,
        "looting_multiplier": 0.01,
        "condition": "minecraft:random_chance"
    }
]);

# Enderman
val enderman = LootTweaker.getTable("minecraft:entities/enderman").getPool("main");
enderman.addItemEntry(<enderio:block_enderman_skull>, 1, 0, [
{
    "count": {
        "min": 1.0,
        "max": 1.0
    },
    "function": "minecraft:set_count"
}
], [
    {
        "inverse": false,
        "condition": "minecraft:killed_by_player"
    },
    {
        "chance": 0.025,
        "looting_multiplier": 0.01,
        "condition": "minecraft:random_chance"
    }
]);

# Skeleton
val skeleton = LootTweaker.getTable("minecraft:entities/skeleton").getPool("main");
skeleton.addItemEntry(<minecraft:skull>, 1, 0, [
{
    "count": {
        "min": 1.0,
        "max": 1.0
    },
    "function": "minecraft:set_count"
}
], [
    {
        "inverse": false,
        "condition": "minecraft:killed_by_player"
    },
    {
        "chance": 0.025,
        "looting_multiplier": 0.01,
        "condition": "minecraft:random_chance"
    }
]);

# Zombie
val zombie = LootTweaker.getTable("minecraft:entities/zombie").getPool("main");
zombie.addItemEntry(<minecraft:skull:2>, 1, 0, [
{
    "count": {
        "min": 1.0,
        "max": 1.0
    },
    "function": "minecraft:set_count"
}
], [
    {
        "inverse": false,
        "condition": "minecraft:killed_by_player"
    },
    {
        "chance": 0.025,
        "looting_multiplier": 0.01,
        "condition": "minecraft:random_chance"
    }
]);



########################################
# EnderIO
########################################
# Gears
// LootTable.removeGlobalItem(<enderio:item_material:9>);
// LootTable.removeGlobalItem(<enderio:item_material:10>);
// LootTable.removeGlobalItem(<enderio:item_material:11>);
// LootTable.removeGlobalItem(<enderio:item_material:12>);
// LootTable.removeGlobalItem(<enderio:item_material:13>);
