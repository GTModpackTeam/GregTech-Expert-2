


if (isLoaded('ae2stuff')) {
    /* 
    * ########################################
    * Blocks
    * ########################################
    */

    // Pattern Encoder
    mods.jei.removeAndHide(item('ae2stuff:encoder'))

    // Crystal Growth Chamber
    mods.jei.removeAndHide(item('ae2stuff:grower'))

    // Advanced Inscriber
    mods.jei.removeAndHide(item('ae2stuff:inscriber'))

    // Wireless Connector
    crafting.removeByOutput(item('ae2stuff:wireless'))
    mods.gregtech.assembler.recipeBuilder()
        .circuitMeta(2)
        .inputs(
            item('appliedenergistics2:material', 24) * 4,
            item('gtexpert:meta_item_1', 1) * 2,
            item('appliedenergistics2:material', 41),
            item('gregtech:machine_casing', 6)
        )
        .fluidInputs(fluid('fluix_alloy') * 1152)
        .outputs(item('ae2stuff:wireless'))
        .duration(20)
        .EUt(30720)
        .buildAndRegister()

}
