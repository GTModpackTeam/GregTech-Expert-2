#packmode normal
# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Blowtorch
recipes.remove(<catwalks:blowtorch>);
recipes.addShaped(<catwalks:blowtorch>, [
    [null, <ore:screwSteel>, <minecraft:flint_and_steel>],
    [<ore:gtce.tool.screwdrivers>, <ore:stickLongSteel>, <ore:screwSteel>],
    [<ore:stickLongSteel>, <ore:gtce.tool.wrenches>, null]
]);



########################################
# Blocks
########################################
# Classic Catwalk
recipes.remove(<catwalks:catwalk>);
recipes.addShaped(<catwalks:catwalk>.withTag({material: "classic"}) * 4, [
    [<ore:stickLongSteel>, <catwalks:blowtorch>.giveBack(), <ore:stickLongSteel>],
    [<ore:screwSteel>, <ore:frameGtSteel>, <ore:screwSteel>],
    [<ore:gtce.tool.screwdrivers>, <ore:stickLongSteel>, <ore:gtce.tool.wrenches>]
]);
recipes.addShaped(<catwalks:catwalk>.withTag({material: "classic"}) * 16, [
    [<ore:stickLongDarkSteel>, <catwalks:blowtorch>.giveBack(), <ore:stickLongDarkSteel>],
    [<ore:screwDarkSteel>, <ore:frameGtDarkSteel>, <ore:screwDarkSteel>],
    [<ore:gtce.tool.screwdrivers>, <ore:stickLongDarkSteel>, <ore:gtce.tool.wrenches>]
]);

# Glass Catwalk
recipes.remove(<catwalks:catwalk>.withTag({material: "glass"}));
recipes.addShaped(<catwalks:catwalk>.withTag({material: "glass"}) * 4, [
    [<ore:stickLongSteel>, <catwalks:blowtorch>.giveBack(), <ore:stickLongSteel>],
    [<ore:paneGlass>, <ore:frameGtSteel>, <ore:paneGlass>],
    [<ore:stickLongSteel>, <ore:paneGlass>, <ore:stickLongSteel>]
]);
recipes.addShaped(<catwalks:catwalk>.withTag({material: "glass"}) * 16, [
    [<ore:stickLongDarkSteel>, <catwalks:blowtorch>.giveBack(), <ore:stickLongDarkSteel>],
    [<ore:paneGlass>, <ore:frameGtDarkSteel>, <ore:paneGlass>],
    [<ore:stickLongDarkSteel>, <ore:paneGlass>, <ore:stickLongDarkSteel>]
]);

# Classic Ladder
recipes.remove(<catwalks:ladder>);
recipes.addShaped(<catwalks:ladder> * 6, [
    [<ore:stickLongSteel>, <catwalks:blowtorch>.giveBack(), <ore:stickLongSteel>],
    [<ore:screwSteel>, <minecraft:ladder>, <ore:screwSteel>],
    [<ore:gtce.tool.screwdrivers>, <ore:stickLongSteel>, <ore:gtce.tool.wrenches>]
]);
recipes.addShaped(<catwalks:ladder> * 32, [
    [<ore:stickLongDarkSteel>, <catwalks:blowtorch>.giveBack(), <ore:stickLongDarkSteel>],
    [<ore:screwDarkSteel>, <enderio:block_dark_steel_ladder>, <ore:screwDarkSteel>],
    [<ore:gtce.tool.screwdrivers>, <ore:stickLongDarkSteel>, <ore:gtce.tool.wrenches>]
]);

# Wood Catwalk
recipes.remove(<catwalks:catwalk>.withTag({material: "treated_wood"}));
recipes.addShaped(<catwalks:catwalk>.withTag({material: "treated_wood"}) * 4, [
    [<ore:stickLongSteel>, <catwalks:blowtorch>.giveBack(), <ore:stickLongSteel>],
    [<ore:plateWood>, <ore:frameGtWood>, <ore:plateWood>],
    [<ore:stickLongSteel>, <ore:plateWood>, <ore:stickLongSteel>]
]);
recipes.addShaped(<catwalks:catwalk>.withTag({material: "treated_wood"}) * 16, [
    [<ore:stickLongDarkSteel>, <catwalks:blowtorch>.giveBack(), <ore:stickLongDarkSteel>],
    [<ore:plateWood>, <ore:frameGtWood>, <ore:plateWood>],
    [<ore:stickLongDarkSteel>, <ore:plateWood>, <ore:stickLongDarkSteel>]
]);

# Classic Ladder
recipes.remove(<catwalks:cable>);
recipes.addShaped(<catwalks:cable> * 6, [
    [null, <ore:stickLongSteel>, null],
    [null, <ore:stickLongSteel>, <catwalks:blowtorch>.giveBack()],
    [null, <ore:stickLongSteel>, null]
]);
recipes.addShaped(<catwalks:cable> * 32, [
    [null, <ore:stickLongDarkSteel>, null],
    [null, <ore:stickLongDarkSteel>, <catwalks:blowtorch>.giveBack()],
    [null, <ore:stickLongDarkSteel>, null]
]);
