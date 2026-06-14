if (!isClient()) return

import net.minecraftforge.event.entity.player.ItemTooltipEvent
import net.minecraft.client.resources.I18n

////////////////////////////////////////
// Items
////////////////////////////////////////
event_manager.listen { ItemTooltipEvent event ->
    def stack = event.itemStack
    if (stack == null || stack.isEmpty()) return

    def tooltip = event.toolTip
    def id = stack.item.registryName?.toString()
    if (id == null) return
    def meta = stack.itemDamage

    // AE2 P2P Tunnel
    if (id == 'appliedenergistics2:part') {
        switch (meta) {
            case 460: tooltip.add('§a' + I18n.format('modpack.ae2.p2p_me.tooltip.1')); break
            case 461: tooltip.add('§a' + I18n.format('modpack.ae2.p2p_redstone.tooltip.1')); break
            case 462: tooltip.add('§a' + I18n.format('modpack.ae2.p2p_chest.tooltip.1')); break
            case 463: tooltip.add('§a' + I18n.format('modpack.ae2.p2p_bucket.tooltip.1')); break
            case 467: tooltip.add('§a' + I18n.format('modpack.ae2.p2p_torch.tooltip.1')); break
            case 469: tooltip.add('§a' + I18n.format('modpack.ae2.p2p_conduit.tooltip.1')); break
            case 470: tooltip.add('§a' + I18n.format('modpack.ae2.p2p_gtceu.tooltip.1')); break
        }
    // NAE2 P2P Interface Tunnel
    } else if (id == 'nae2:part' && meta == 1) {
        tooltip.add('§a' + I18n.format('modpack.nae2.p2p_interface.tooltip.1'))
    // AEAdditions Fluid Pattern
    } else if (id == 'aeadditions:pattern.fluid') {
        tooltip.add('§a' + I18n.format('modpack.aeadditions.fluid_pattern.tooltip.1'))
    // Mega Torch
    } else if (id == 'torchmaster:mega_torch' && meta == 0) {
        tooltip.add('§a' + I18n.format('modpack.torchmaster.mega_torch.tooltip.1'))
    // Feral Flare Lantern
    } else if (id == 'torchmaster:feral_flare_lantern') {
        tooltip.add('§a' + I18n.format('modpack.torchmaster.lantern.tooltip.1'))
    // Elevator
    } else if (id.startsWith('elevatorid:elevator_') && !id.endsWith('_black')) {
        tooltip.add('§a' + I18n.format('modpack.elevator.tooltip.1'))
    // Fluid Tank
    } else if (id == 'enderio:block_tank') {
        tooltip.add('§a' + I18n.format('modpack.enderio.tank.tooltip.1'))
    }
}
