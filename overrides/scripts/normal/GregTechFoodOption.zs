# Imports
import mods.jei.JEI;



########################################
# Liquid
########################################
# Sludge * 200 (Override)
mixer.findRecipe(16, [<minecraft:porkchop:0>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:chicken:0>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:rabbit:0>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:mutton:0>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:beef:0>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:fish:0>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:fish:1>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.findRecipe(16, [<minecraft:fish:2>], [<liquid:sulfuric_acid> * 200]).remove();
mixer.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:porkchop:0> |
        <minecraft:chicken:0> |
        <minecraft:rabbit:0> |
        <minecraft:mutton:0> |
        <minecraft:beef:0> |
        <minecraft:fish:*>
    ])
    .fluidInputs([<liquid:sulfuric_acid> * 200])
    .fluidOutputs([<liquid:gtfo_sludge> * 200])
    .duration(250)
    .EUt(16)
    .buildAndRegister();

# Sludge * 100 (Override)
mixer.findRecipe(16, [<minecraft:fish:0>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:fish:1>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:fish:2>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:porkchop:0>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:chicken:0>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:rabbit:0>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:mutton:0>], [<liquid:water> * 400]).remove();
mixer.findRecipe(16, [<minecraft:beef:0>], [<liquid:water> * 400]).remove();
mixer.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:porkchop:0> |
        <minecraft:chicken:0> |
        <minecraft:rabbit:0> |
        <minecraft:mutton:0> |
        <minecraft:beef:0> |
        <minecraft:fish:*>
    ])
    .fluidInputs([<liquid:water> * 400])
    .fluidOutputs([<liquid:gtfo_sludge> * 100])
    .duration(250)
    .EUt(16)
    .buildAndRegister();

# Unheated Cane Syrup
mixer.findRecipe(80, [<minecraft:sugar:0> * 24], [<liquid:water> * 2000]).remove();
mixer.recipeBuilder()
    .circuit(1)
    .inputs([<minecraft:sugar> * 24])
    .fluidInputs([<liquid:water> * 2000])
    .fluidOutputs([<liquid:gtfo_unheated_cane_syrup> * 2000])
    .duration(260)
    .EUt(80)
    .buildAndRegister();
