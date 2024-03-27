


if (isLoaded('spiceoflife')) {
    /* 
    * ########################################
    * Items
    * ########################################
    */

    // Food Journal
    crafting.removeByOutput(item('spiceoflife:bookfoodjournal'))
    crafting.addShapeless('book_food_journal', item('spiceoflife:bookfoodjournal'), [item('minecraft:book'), item('minecraft:wheat')])

    // Lunchbag
    crafting.removeByOutput(item('spiceoflife:lunchbag'))
    crafting.addShaped('lunch_bag', item('spiceoflife:lunchbag'), [
        [item('minecraft:paper'), null, item('minecraft:paper')],
        [metaitem('rubber_drop'), item('minecraft:paper'), metaitem('rubber_drop')]
    ])

    // Lunchbox
    crafting.removeByOutput(item('spiceoflife:lunchbox'))
    crafting.addShaped('lunch_box', item('spiceoflife:lunchbox'), [
        [metaitem('plateDoubleIron'), ore('craftingToolScrewdriver'), metaitem('plateDoubleIron')],
        [metaitem('screwIron'), metaitem('plateDoubleIron'), metaitem('screwIron')]
    ])

}
