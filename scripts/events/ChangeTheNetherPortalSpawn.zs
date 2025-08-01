import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.world.Level;
import crafttweaker.api.util.math.BlockPos;
import crafttweaker.neoforge.api.event.block.PortalSpawnEvent;
import crafttweaker.neoforge.api.event.interact.RightClickBlockEvent;

events.register<PortalSpawnEvent>(event => {
    event.cancel();
});

events.register<RightClickBlockEvent>(event => {
    val pos: BlockPos = event.blockPos;
    val player: Player = event.entity;
    val level: Level = player.level;
    val item: IItemStack = player.getItemInHand(event.hand).asIItemStack();
    if (!level.isClientSide) {
        if (Utils.getBlock(level,pos) == <block:minecraft:lodestone> && player.getItemInHand(event.hand).asIIngredient() == <item:minecraft:fire_charge>) {
            if (validX(level,pos)) {
                setblocksX(level,pos);
            }
            if (validZ(level,pos)) {
                setblocksZ(level,pos);
            }
            item.grow();
            player.setItemInHand(event.hand,item);
            event.cancel();
        }
    }
});

// 判断X轴是否成型
public function validX(level: Level, blockPos: BlockPos):bool {
    return Utils.getBlock(level,blockPos.offset(1,0,0)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(-1,0,0)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(2,1,0)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(-2,1,0)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(2,2,0)) == <block:minecraft:lodestone> &&
            Utils.getBlock(level,blockPos.offset(-2,2,0)) == <block:minecraft:lodestone> &&
            Utils.getBlock(level,blockPos.offset(2,3,0)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(-2,3,0)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(1,4,0)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(-1,4,0)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(0,4,0)) == <block:minecraft:lodestone>
            ;
}

// 判断Z轴是否成型
public function validZ(level: Level, blockPos: BlockPos):bool {
    return Utils.getBlock(level,blockPos.offset(0,0,1)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(0,0,-1)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(0,1,2)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(0,1,-2)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(0,2,2)) == <block:minecraft:lodestone> &&
            Utils.getBlock(level,blockPos.offset(0,2,-2)) == <block:minecraft:lodestone> &&
            Utils.getBlock(level,blockPos.offset(0,3,2)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(0,3,-2)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(0,4,1)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(0,4,-1)) == <block:minecraft:crying_obsidian> &&
            Utils.getBlock(level,blockPos.offset(0,4,0)) == <block:minecraft:lodestone>
            ;
}

// 放置X轴传送门方块
public function setblocksX(level: Level, blockPos: BlockPos):void {
    Utils.setBlock(level,blockPos.offset(0,1,0),<block:minecraft:nether_portal>);
    Utils.setBlock(level,blockPos.offset(1,1,0),<block:minecraft:nether_portal>);
    Utils.setBlock(level,blockPos.offset(-1,1,0),<block:minecraft:nether_portal>);
    Utils.setBlock(level,blockPos.offset(0,2,0),<block:minecraft:nether_portal>);
    Utils.setBlock(level,blockPos.offset(1,2,0),<block:minecraft:nether_portal>);
    Utils.setBlock(level,blockPos.offset(-1,2,0),<block:minecraft:nether_portal>);
    Utils.setBlock(level,blockPos.offset(0,3,0),<block:minecraft:nether_portal>);
    Utils.setBlock(level,blockPos.offset(1,3,0),<block:minecraft:nether_portal>);
    Utils.setBlock(level,blockPos.offset(-1,3,0),<block:minecraft:nether_portal>);
}

// 放置Z轴传送门方块
public function setblocksZ(level: Level, blockPos: BlockPos):void {
    Utils.setBlock(level,blockPos.offset(0,1,0),<blockstate:minecraft:nether_portal:axis=z>);
    Utils.setBlock(level,blockPos.offset(0,1,1),<blockstate:minecraft:nether_portal:axis=z>);
    Utils.setBlock(level,blockPos.offset(0,1,-1),<blockstate:minecraft:nether_portal:axis=z>);
    Utils.setBlock(level,blockPos.offset(0,2,0),<blockstate:minecraft:nether_portal:axis=z>);
    Utils.setBlock(level,blockPos.offset(0,2,1),<blockstate:minecraft:nether_portal:axis=z>);
    Utils.setBlock(level,blockPos.offset(0,2,-1),<blockstate:minecraft:nether_portal:axis=z>);
    Utils.setBlock(level,blockPos.offset(0,3,0),<blockstate:minecraft:nether_portal:axis=z>);
    Utils.setBlock(level,blockPos.offset(0,3,1),<blockstate:minecraft:nether_portal:axis=z>);
    Utils.setBlock(level,blockPos.offset(0,3,-1),<blockstate:minecraft:nether_portal:axis=z>);
}