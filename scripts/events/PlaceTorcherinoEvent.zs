import crafttweaker.api.text.Component;
import crafttweaker.api.block.Block;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.neoforge.api.event.block.EntityPlaceBlockEvent;
import stdlib.List;

events.register<EntityPlaceBlockEvent>(event => {
    val entity = event.entity;
    val level = event.level;
    val pos = event.pos;
    var torcherinoList as List<Block> = loadedMods.getMod("torcherino").blocks;
    if (event.placedBlock.block in torcherinoList) {
        for i in -3 .. 4 {
            for j in -4 .. 4 {
                for k in -4 .. 4 {
                    var newPos = pos.offset(j,i,k);
                    if (i == 0 && j == 0 && k == 0) {   
                        newPos = pos.offset(j,i+10,k);
                    }
                    if(level.getBlockState(newPos).block in torcherinoList) {
                        if (entity is Player) {
                            entity.sendMessage(Component.translatable("tips.mind.disable.multiTorcherino","X: " + newPos.x + " Y: " + newPos.y + " Z: " + newPos.z));
                        }
                        event.cancel();
                    }
                }
            }
        }
    }
});