#priority 2000

import crafttweaker.api.block.Block;
import crafttweaker.api.block.BlockState;
import crafttweaker.api.world.Level;
import crafttweaker.api.util.math.BlockPos;

public class Utils {
    public static getBlock(level: Level, blockPos: BlockPos): Block {
        return level.getBlockState(blockPos).block;
    }

    public static setBlock(level: Level, blockPos: BlockPos, block: Block): void {
        level.setBlockAndUpdate(blockPos, block.defaultState);
    }

    public static setBlock(level: Level, blockPos: BlockPos, blockState: BlockState): void {
        level.setBlockAndUpdate(blockPos, blockState);
    }
}