import crafttweaker.api.util.math.BlockPos;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:naturesaura:gold_fiber>,
    <item:naturesaura:wood_stand>
];

val removeTreeRitualItem as IItemStack[] = [
    <item:naturesaura:nature_altar>
];

val ancientRecipes as IIngredient[][IItemStack] = {
    <item:minecraft:crying_obsidian> * 8 : [
        <tag:item:c:gems/lapis>,<tag:item:c:obsidians>,<tag:item:c:gems/lapis>,<tag:item:c:obsidians>,<tag:item:c:gems/lapis>,<tag:item:c:obsidians>,<tag:item:c:gems/lapis>,<tag:item:c:obsidians>
    ],
    <item:naturesaura:nature_altar> : [
        <item:naturesaura:gold_leaf>,<item:naturesaura:token_joy>,<tag:item:c:stones>,<tag:item:c:stones>,<item:naturesaura:token_sorrow>,<tag:item:c:ingots/gold>
    ]
};

val normalRecipes as IIngredient[][IItemStack] = {
    
};

for item in removeItem {
    craftingTable.remove(item);
}

for item in removeTreeRitualItem {
    TreeRitual.remove(item);
}

for output, input in ancientRecipes {
    TreeRitual.addRecipe(output,<item:naturesaura:ancient_sapling>,input,300);
}

for output, input in normalRecipes {
    TreeRitual.addRecipe(output,<item:naturesaura:ancient_sapling>,input,180);
}

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>,new LycheeRecipeBuilder()
    .itemIn(<item:naturesaura:gold_powder>)
    .blockIn(<tag:block:minecraft:logs>)
    .post(LycheePosts.placeBlock(<block:naturesaura:wood_stand>))
);

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>,new LycheeRecipeBuilder()
    .itemIn(<item:naturesaura:bottle_two_the_rebottling>)
    .blockIn(<block:minecraft:soul_soil>)
    .post([
        LycheePosts.dropItem(<item:naturesaura:aura_bottle>.withJsonComponent(<componenttype:naturesaura:aura_bottle_data>, {aura_type: "naturesaura:nether"})),
        LycheePosts.placeBlock(<block:minecraft:air>)
    ])
);

NatureAlter.remove(<item:naturesaura:infused_iron>);
NatureAlter.addRecipe(<item:naturesaura:infused_iron>,<item:mind:rough_grinding_iron_ingot>,2000,80);

NatureAlter.remove(<item:naturesaura:infused_iron_block>);
NatureAlter.addRecipe(<item:naturesaura:infused_iron_block>,<tag:item:c:storage_blocks/iron>,2000,80,<item:naturesaura:conversion_catalyst>);

NatureAlter.addRecipe(<item:naturesaura:infused_iron>,<tag:item:c:ingots>,2000,80,<item:naturesaura:conversion_catalyst>);

Offering.addRecipe(<item:naturesaura:sky_ingot_block>,<item:naturesaura:calling_spirit>,<item:naturesaura:infused_iron_block>);

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .setHideInJEI(true)
    .blockIn(<block:mind:annihilation_dye_with_dirt>)
    .itemIn(<item:minecraft:bone_meal>)
    .condition(LycheeConditions.block(<block:minecraft:podzol>, new BlockPos(0,-1,0)))
    .post([LycheePosts.placeBlock(<block:naturesaura:end_flower>),LycheePosts.placeBlock(<block:minecraft:end_stone>, new BlockPos(0,-1,0))])
);

LycheeRecipeManager.addRecipe(<recipetype:lychee:random_block_ticking>, new LycheeRecipeBuilder()
    .blockIn(<block:mind:annihilation_dye_with_dirt>)
    .condition(LycheeConditions.block(<block:minecraft:podzol>, new BlockPos(0,-1,0)))
    .post([LycheePosts.placeBlock(<block:naturesaura:end_flower>),LycheePosts.placeBlock(<block:minecraft:end_stone>, new BlockPos(0,-1,0))])
);

AlloySmelter.addRecipe(<item:naturesaura:gold_fiber>,[<item:minecraft:gold_nugget> * 4,<item:ytech:grass_fibers>],4800,1.0);