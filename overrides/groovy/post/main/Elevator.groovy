// ########################################
// Blocks
// ########################################
def elevators = [
    item('elevatorid:elevator_white'),
    item('elevatorid:elevator_orange'),
    item('elevatorid:elevator_magenta'),
    item('elevatorid:elevator_light_blue'),
    item('elevatorid:elevator_yellow'),
    item('elevatorid:elevator_lime'),
    item('elevatorid:elevator_pink'),
    item('elevatorid:elevator_gray'),
    item('elevatorid:elevator_silver'),
    item('elevatorid:elevator_cyan'),
    item('elevatorid:elevator_purple'),
    item('elevatorid:elevator_blue'),
    item('elevatorid:elevator_brown'),
    item('elevatorid:elevator_green'),
    item('elevatorid:elevator_red'),
    item('elevatorid:elevator_black'),
]
elevators.each { elevator ->
    mods.minecraft.crafting.removeByOutput(elevator)
}
mods.minecraft.crafting.shapedBuilder()
    .output(item('elevatorid:elevator_black'))
    .shape([
        [metaitem('plateSteel'), metaitem('plateSteel'), metaitem('plateSteel')],
        [metaitem('gearSmallSteel'), metaitem('frameSteel'), metaitem('gearSmallSteel')],
        [metaitem('plateSteel'), metaitem('plateSteel'), metaitem('plateSteel')],
    ])
    .register()
chemicalBath.recipeBuilder()
    .inputs(ore('blockElevator'))
    .fluidInputs(fluid('chlorine') * 50)
    .outputs(item('elevatorid:elevator_black'))
    .duration(400)
    .EUt(7)
    .buildAndRegister()
elevators.eachWithIndex { elevator, i ->
    chemicalBath.recipeBuilder()
        .inputs(ore('blockElevator'))
        .fluidInputs(colorLiquid[i] * 18)
        .outputs(elevator)
        .duration(20)
        .EUt(7)
        .buildAndRegister()
}
