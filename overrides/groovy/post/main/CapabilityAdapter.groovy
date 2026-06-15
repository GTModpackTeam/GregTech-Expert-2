package post.main

////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Capability Adapter
mods.minecraft.crafting.removeByOutput(item('rf-capability-adapter:aecapabilityadapter'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('rf-capability-adapter:aecapabilityadapter'))
    .shape([
        [metaitem('plateTitanium'), ore('crystalPureFluix'), metaitem('plateTitanium')],
        [ore('crystalPureFluix'), ore('craftInterfaceDual'), ore('crystalPureFluix')],
        [metaitem('plateTitanium'), ore('crystalPureFluix'), metaitem('plateTitanium')],
    ])
    .register()
