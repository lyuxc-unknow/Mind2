#noload

import crafttweaker.api.entity.equipment.EquipmentSlot;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;
import crafttweaker.api.world.Level;
import crafttweaker.api.util.math.BlockPos;
import crafttweaker.neoforge.api.event.block.PortalSpawnEvent;
import crafttweaker.neoforge.api.event.interact.RightClickBlockEvent;

events.register<RightClickBlockEvent>(event => {
    if (!event.entity.level.isClientSide) {
        val pos: BlockPos = event.blockPos;
        val player: Player = event.entity;
        val level: Level = player.level;
        val item: IItemStack = player.getItemInHand(event.hand).asIItemStack();
        var components = <item:naturesaura:effect_powder>.withJsonComponent(<componenttype:naturesaura:effect_powder_data>, {effect: "naturesaura:cache_recharge"});
        player.sendMessage(Component.literal(Utils.convertItemStack(components).asString()));
    }
});