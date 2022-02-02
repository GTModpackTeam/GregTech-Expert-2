#loader gregtech
# Imoprts
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMapBuilder;
import mods.gregtech.machine.MachineBuilder;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;



# 
// Builder.start("glass_smelter") // automatic allocation ID
//     .withPattern(function(controller as IControllerTile) as IBlockPattern {
//         val glass = CTPredicate.states(<blockstate:minecraft:glass>).setMinGlobalLimited(15).addTooltips("glass_smelter.glass.tooltips");
//         return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
//             .aisle(
//                 "KKK",
//                 "KKK",
//                 "KSK",
//                 "D D")
//             .aisle(
//                 "CCC",
//                 "CLC",
//                 "CCC",
//                 "   ").setRepeatable(2)
//             .aisle(
//                 "CCC",
//                 "CCC",
//                 "CCC",
//                 "D D")
//             .where("K", glass | controller.autoAbilities()) // same as glass.or(controller.autoAbilities())
//             .where("C", glass)
//             .where("L", CTPredicate.liquids(<liquid:lava>)) // same as CTPredicate.blocks(<block:minecraft:lava>) == CTPredicate.states(<blockstate:minecraft:lava>) == <blockstate:minecraft:lava>
//             .where("S", controller.self())
//             .where("D", <blockstate:minecraft:fence>)
//             .where(" ", CTPredicate.getAny())
//             .build();
//     } as IPatternBuilderFunction)
//     .withRecipeMap(RecipeMap.getByName("bender")) // Just use an already existing recipe map. same as <recipemap:bender>
//     .withBaseTexture(<blockstate:minecraft:glass>)
//     .buildAndRegister();

// // These are best specified in .lang files, since these may not work properly.
// game.setLocalization(
//     "glass_smelter.glass.tooltips",
//     "Wait!!! It's made of glass?"
// );
// game.setLocalization(
//     "multiblocktweaker.machine.glass_smelter.name",
//     "Multiblock Glass Smelter"
// );
// game.setLocalization(
//     "multiblocktweaker.multiblock.glass_smelter.description",
//     "The Glass Smelter is a multiblock that does smelter recipes. Hello, world!"
// );


// Don't forget to add a recipe!
