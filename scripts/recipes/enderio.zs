#modloaded enderio

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:enderio:wood_gear>,
    <item:enderio:primitive_alloy_smelter>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:enderio:primitive_alloy_smelter>: [
        [<item:ytech:reinforced_brick_chimney>,<item:ytech:primitive_alloy_smelter>,<item:ytech:reinforced_brick_chimney>],
        [<item:minecraft:deepslate>,<item:enderio:grains_of_infinity>,<item:minecraft:deepslate>],
        [<item:minecraft:deepslate>,<item:minecraft:deepslate>,<item:minecraft:deepslate>]
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

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .blockIn(<tag:block:minecraft:planks>)
    .itemIn(<item:chisel:chisel>)
    .condition(
        [
            LycheeConditions.isSneaking()
        ]
    )
    .post(
        [
            LycheePosts.dropItem(<item:enderio:wood_gear>),
            LycheePosts.placeBlock(<block:minecraft:air>),
            LycheePosts.preventDefault()
        ]
    )
);

MetalPress.remove(<item:enderio:iron_gear>);

MetalPress.addRecipe(<item:enderio:iron_gear>,<item:enderio:grains_of_infinity> * 4,10000,<item:industrialforegoing:iron_gear>);