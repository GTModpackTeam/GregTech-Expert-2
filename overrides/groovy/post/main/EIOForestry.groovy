package post.main

if (!isLoaded('enderiointegrationforestry')) return

////////////////////////////////////////
// Items
////////////////////////////////////////
// OreDict: craftPropolis
mods.minecraft.ore_dict.add('craftPropolis', item('forestry:propolis', 0))
mods.minecraft.ore_dict.add('craftPropolis', item('forestry:propolis', 1))
mods.minecraft.ore_dict.add('craftPropolis', item('forestry:propolis', 3))

// Fluid Storage Housing
mods.minecraft.crafting.shapedBuilder()
    .output(item('enderio:item_species_item_filter'))
    .shape([
        [null, null, null],
        [ore('craftPropolis'), item('enderio:item_advanced_item_filter'), ore('craftPropolis')],
        [null, null, null],
    ])
    .register()
