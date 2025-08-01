import crafttweaker.api.util.math.BlockPos;

craftingTable.remove(<item:melter:melter>);

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>,new LycheeRecipeBuilder()
    .itemIn(<item:naturesaura:gold_powder>)
    .blockIn(<block:minecraft:cauldron>)
    .condition([
        LycheeConditions.smokey(true),
        LycheeConditions.isSneaking()
    ])
    .post([
        LycheePosts.placeBlock(<block:melter:melter>),
        LycheePosts.placeBlock(<block:minecraft:air>,new BlockPos(0,-1,0))
    ])
);