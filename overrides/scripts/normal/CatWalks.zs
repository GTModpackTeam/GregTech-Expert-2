#packmode normal
# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Blowtorch
recipes.remove(<catwalks:blowtorch>);
recipes.addShaped(<catwalks:blowtorch>, [
    [null, <metaitem:screwSteel>, <minecraft:flint_and_steel>],
    [<ore:gtce.tool.screwdrivers>, <metaitem:stickLongSteel>, <metaitem:screwSteel>],
    [<metaitem:stickLongSteel>, <ore:gtce.tool.wrenches>, null]
]);



########################################
# Blocks
########################################
# Classic Catwalk
recipes.remove(<catwalks:catwalk>);
assembler.recipeBuilder()
    .circuit(6)
    .inputs([
        <ore:frameGtSteel>,
        <metaitem:screwSteel> * 2,
        <metaitem:stickLongSteel> * 4
    ])
    .outputs([<catwalks:catwalk>.withTag({material: "classic"}) * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(7)
    .inputs([
        <ore:frameGtDarkSteel>,
        <metaitem:screwDarkSteel> * 2,
        <metaitem:stickLongDarkSteel> * 4
    ])
    .outputs([<catwalks:catwalk>.withTag({material: "classic"}) * 16])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(6)
    .inputs([<catwalks:catwalk>.withTag({material: "classic"})])
    .notConsumable([<minecraft:record_cat>])
    .outputs([<catwalks:catwalk>.withTag({material: "nyanwalk"})])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Glass Catwalk
recipes.remove(<catwalks:catwalk>.withTag({material: "glass"}));
assembler.recipeBuilder()
    .circuit(6)
    .inputs([
        <ore:frameGtSteel>,
        <ore:paneGlass> * 3,
        <metaitem:stickLongSteel> * 4
    ])
    .outputs([<catwalks:catwalk>.withTag({material: "glass"}) * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(7)
    .inputs([
        <ore:frameGtDarkSteel>,
        <ore:paneGlass> * 3,
        <metaitem:stickLongDarkSteel> * 4
    ])
    .outputs([<catwalks:catwalk>.withTag({material: "glass"}) * 16])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Wood Catwalk
recipes.remove(<catwalks:catwalk>.withTag({material: "treated_wood"}));
assembler.recipeBuilder()
    .circuit(6)
    .inputs([
        <ore:frameGtTreatedWood>,
        <metaitem:plateTreatedWood> * 3,
        <metaitem:stickLongSteel> * 4
    ])
    .outputs([<catwalks:catwalk>.withTag({material: "treated_wood"}) * 4])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(7)
    .inputs([
        <ore:frameGtTreatedWood>,
        <metaitem:plateTreatedWood> * 3,
        <metaitem:stickLongDarkSteel> * 4
    ])
    .outputs([<catwalks:catwalk>.withTag({material: "treated_wood"}) * 16])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
recipes.addShapeless(<catwalks:catwalk>.withTag({material: "treated_wood"}), [<catwalks:catwalk>.withTag({material: "custom_0"})]);
recipes.addShapeless(<catwalks:catwalk>.withTag({material: "custom_0"}), [<catwalks:catwalk>.withTag({material: "treated_wood"})]);

# Classic Ladder
recipes.remove(<catwalks:ladder>);
assembler.recipeBuilder()
    .circuit(6)
    .inputs([
        <minecraft:ladder>,
        <metaitem:stickLongSteel> * 4
    ])
    .outputs([<catwalks:ladder> * 6])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(7)
    .inputs([
        <enderio:block_dark_steel_ladder>,
        <metaitem:stickLongDarkSteel> * 4
    ])
    .outputs([<catwalks:ladder> * 32])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Classic Support Cables
recipes.remove(<catwalks:cable>);
assembler.recipeBuilder()
    .circuit(6)
    .inputs([<metaitem:stickLongSteel> * 3])
    .outputs([<catwalks:cable> * 6])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(7)
    .inputs([<metaitem:stickLongDarkSteel> * 3])
    .outputs([<catwalks:cable> * 32])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
