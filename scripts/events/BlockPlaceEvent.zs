import crafttweaker.neoforge.api.event.block.EntityPlaceBlockEvent;
import crafttweaker.api.block.Block;
import crafttweaker.api.block.BlockState;
import crafttweaker.api.block.BlockIngredient;
import crafttweaker.api.util.math.BlockPos;

events.register<EntityPlaceBlockEvent>(event => {
    var placedBlock as Block = event.placedBlock.block;
    var belowBlockPos as BlockPos = event.pos.offset(0,-1,0);
    var level = event.level;
    if (placedBlock == <block:mind:annihilation_dye_with_dirt>) {
        if (level.getBlockState(belowBlockPos).block != <block:minecraft:podzol>) {
            event.cancel();
        }
    }
});