import gregtech.integration.groovy.GroovyScriptModule
import net.minecraftforge.fml.common.Loader

mi = { String name, int count = 1 ->
    def stack = GroovyScriptModule.getMetaItem(name)
    if (stack == null) {
        log.warn("MetaItem not found: ${name}")
        return null
    }
    stack.setCount(count)
    return stack
}

////////////////////////////////////////
// Applied Energistics 2
////////////////////////////////////////
// Extended Crafting Terminal
mods.minecraft.ore_dict.add('craftExtendedTerminal', item('appliedenergistics2:part', 341))
mods.minecraft.ore_dict.add('craftExtendedTerminal', item('ae2fc:part_fluid_pattern_ex_terminal'))

// Fluid Assembler
mods.minecraft.ore_dict.add('craftAssemblerFluid', item('ae2fc:fluid_assembler'))
mods.minecraft.ore_dict.add('craftAssemblerFluid', item('aeadditions:fluidcrafter'))


////////////////////////////////////////
// Minecraft
////////////////////////////////////////
// Grass
mods.minecraft.ore_dict.add('grass', item('minecraft:double_plant', 2))
mods.minecraft.ore_dict.add('grass', item('minecraft:double_plant', 3))
mods.minecraft.ore_dict.add('grass', item('minecraft:tallgrass', 32767))

// Colors
colors = [
    'white', 'orange', 'magenta', 'light_blue', 'yellow', 'lime',
    'pink', 'gray', 'silver', 'cyan', 'purple', 'blue',
    'brown', 'green', 'red', 'black'
]
colorLiquid = [
    fluid('dye_white'), fluid('dye_orange'), fluid('dye_magenta'),
    fluid('dye_light_blue'), fluid('dye_yellow'), fluid('dye_lime'),
    fluid('dye_pink'), fluid('dye_gray'), fluid('dye_light_gray'),
    fluid('dye_cyan'), fluid('dye_purple'), fluid('dye_blue'),
    fluid('dye_brown'), fluid('dye_green'), fluid('dye_red'),
    fluid('dye_black')
]


////////////////////////////////////////
// Other
////////////////////////////////////////
// Wrench
mods.minecraft.ore_dict.add('wrench', item('appliedenergistics2:certus_quartz_wrench'))
mods.minecraft.ore_dict.add('wrench', item('appliedenergistics2:nether_quartz_wrench'))
mods.minecraft.ore_dict.add('wrench', item('enderio:item_yeta_wrench'))

// Wools
mods.minecraft.ore_dict.add('wool', item('chisel:wool_black', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_red', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_green', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_brown', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_blue', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_purple', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_cyan', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_lightgray', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_gray', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_pink', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_lime', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_yellow', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_lightblue', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_magenta', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_orange', 32767))
mods.minecraft.ore_dict.add('wool', item('chisel:wool_white', 32767))
