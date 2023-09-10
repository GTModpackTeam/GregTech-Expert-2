


if (isLoaded('rf-capability-adapter')) {
    /* 
    * ########################################
    * Blocks
    * ########################################
    */

    // Capability Adapter
    crafting.removeByOutput(item('rf-capability-adapter:aecapabilityadapter'))
    crafting.addShapeless('capability_adapter_from_part', item('rf-capability-adapter:aecapabilityadapter'), [
        item('rf-capability-adapter:aecapabilityadapter_part')
    ])
    crafting.addShaped('capability_adapter', item('rf-capability-adapter:aecapabilityadapter'), [
        [metaitem('plateTitanium'), ore('crystalPureFluix'), metaitem('plateTitanium')],
        [ore('crystalPureFluix'), ore('craftInterfaceDual'), ore('crystalPureFluix')],
        [metaitem('plateTitanium'), ore('crystalPureFluix'), metaitem('plateTitanium')]
    ])

}
