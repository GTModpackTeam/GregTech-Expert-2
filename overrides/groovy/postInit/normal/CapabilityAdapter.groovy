////////////////////////////////////////
// Blocks
////////////////////////////////////////
// Capability Adapter
mods.minecraft.crafting.removeByOutput(item('rf-capability-adapter:aecapabilityadapter'))
mods.minecraft.crafting.shapedBuilder()
    .output(item('rf-capability-adapter:aecapabilityadapter'))
    .shape([
        [mi('plateTitanium'), ore('crystalPureFluix'), mi('plateTitanium')],
        [ore('crystalPureFluix'), ore('craftInterfaceDual'), ore('crystalPureFluix')],
        [mi('plateTitanium'), ore('crystalPureFluix'), mi('plateTitanium')]
    ])
    .register()
