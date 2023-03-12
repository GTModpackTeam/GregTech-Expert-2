# Imports
import mods.jei.JEI;



########################################
# Liquid
########################################
# Unheated Cane Syrup
mixer.findRecipe(80, [<minecraft:sugar> * 24], [<liquid:water> * 2000]).remove();
mixer.recipeBuilder()
    .circuit(1)
    .inputs([<minecraft:sugar> * 24])
    .fluidInputs([<liquid:water> * 2000])
    .fluidOutputs([<liquid:gtfo_unheated_cane_syrup> * 2000])
    .duration(260)
    .EUt(80)
    .buildAndRegister();
