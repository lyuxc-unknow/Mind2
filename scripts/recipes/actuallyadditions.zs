import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:actuallyadditions:tiny_torch>,
    <item:actuallyadditions:lens_of_the_miner>,
    <item:actuallyadditions:wood_casing>,
    <item:actuallyadditions:feeder>,
    <item:actuallyadditions:iron_casing>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:actuallyadditions:wood_casing>: [
        [<tag:item:minecraft:planks>,<item:immersiveengineering:stick_treated>,<tag:item:minecraft:planks>],
        [<item:immersiveengineering:stick_treated>,<item:naturesaura:ancient_bark>,<item:immersiveengineering:stick_treated>],
        [<tag:item:minecraft:planks>,<item:immersiveengineering:stick_treated>,<tag:item:minecraft:planks>]
    ]
};

val shapelessRecipes as IIngredient[][IItemStack] = {
    
};

for item in removeItem {
    craftingTable.remove(item);
}

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}

for output,inputs in shapelessRecipes {
    CraftingTableRecipe.addShapeless(output,inputs);
}

<recipetype:actuallyadditions:crushing>.removeAll();

furnace.remove(<item:actuallyadditions:black_quartz>);

<recipetype:extendedcrafting:table>.addShaped("6fe58eff-de32-4b94-aad4-74f6f0878b3d", 1, <item:actuallyadditions:iron_casing>, [
	[<item:minecraft:iron_ingot>, <item:actuallyadditions:black_quartz>, <item:minecraft:iron_ingot>], 
	[<item:actuallyadditions:black_quartz>, <item:industrialforegoing:machine_frame_pity>, <item:actuallyadditions:black_quartz>], 
	[<item:minecraft:iron_ingot>, <item:actuallyadditions:black_quartz>, <item:minecraft:iron_ingot>]
]);

LycheeRecipeManager.addRecipe(<recipetype:lychee:random_block_ticking>, new LycheeRecipeBuilder()
    .blockIn(<block:minecraft:nether_quartz_ore>)
    .condition(LycheeConditions.dimension("hunting_dimension_remake:huntingdimension"))
    .post([LycheePosts.placeBlock(<block:actuallyadditions:black_quartz_ore>)])
);

LycheeRecipeManager.addRecipe(<recipetype:lychee:random_block_ticking>, new LycheeRecipeBuilder()
    .blockIn(<block:minecraft:quartz_block>)
    .condition(LycheeConditions.dimension("hunting_dimension_remake:huntingdimension"))
    .post([LycheePosts.placeBlock(<block:actuallyadditions:black_quartz_ore>)])
);