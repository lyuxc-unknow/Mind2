import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import math.Functions;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;

<recipetype:ytech:block_hit>.removeAll();

val removeItem as IItemStack[] = [
    <item:ytech:grass_twine>,
    <item:ytech:antler_pickaxe>,
    <item:ytech:crushed_cassiterite>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:ytech:ingot_sand_mold>:[
        [<tag:item:c:bricks>],
        [<tag:item:minecraft:sand>]
    ],
    <item:minecraft:crafting_table>: [
        [<tag:item:c:hammers>.asIIngredient().anyDamage().transformDamage(1),<tag:item:c:saws>.asIIngredient().anyDamage().transformDamage(1)],
        [<tag:item:minecraft:planks>,<tag:item:minecraft:planks>],
        [<tag:item:minecraft:planks>,<tag:item:minecraft:planks>]
    ]
};

val shapelessRecipes as IIngredient[][IItemStack] = {
    <item:ytech:grass_twine>: [
        <tag:item:ytech:grass_fibers>, <tag:item:ytech:grass_fibers>, <tag:item:ytech:grass_fibers>
    ],
    <item:ytech:antler_pickaxe>.withJsonComponent(<componenttype:minecraft:max_damage>, 10): [
        <item:ytech:antler>,<item:ytech:sharp_flint>.transformDamage().anyDamage()
    ],
    <item:ytech:crushed_cassiterite>: [
        <tag:item:c:mortar_and_pestles>, <tag:item:c:raw_materials/tin>
    ],
    <item:ytech:raw_galena>: [
        <tag:item:c:mortar_and_pestles>, <tag:item:c:raw_materials/lead>
    ]
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

craftingTable.addShapeless("fix_flint_axe",<item:ytech:flint_axe>,[
    <item:ytech:flint_axe>.anyDamage(),<item:minecraft:flint>
],
(usualOut as IItemStack, inputs as IItemStack[]) => {
    return inputs[0].withDamage(Functions.max(0, inputs[0].damage - 50));
});
<recipetype:ytech:block_hit>.remove(<item:ytech:sharp_flint>);

YTechAlloying.addRecipe(<item:naturesaura:gold_fiber>, <item:ytech:grass_fibers>, <item:minecraft:gold_nugget> * 4, 1100, 300);
YTechHammering.remove(<item:immersiveengineering:plate_iron>);

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_clicking>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:flint>)
    .blockIn(<tag:block:c:stones>)
    .post(LycheePosts.dropItem(<item:ytech:sharp_flint>))
);

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:item:ytech:unlit_torch>)
    .blockIn(<tag:block:ytech:fire_source>)
    .post(LycheePosts.dropItem(<item:minecraft:torch>))
);

<item:ytech:iron_hammer>.definition.setJsonComponent(<componenttype:minecraft:unbreakable>, {});
