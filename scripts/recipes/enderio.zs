#modloaded enderio

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:enderio:wood_gear>,
    <item:enderio:primitive_alloy_smelter>,
    <item:enderio:void_chassis>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:enderio:primitive_alloy_smelter>: [
        [<item:ytech:reinforced_brick_chimney>,<item:ytech:primitive_alloy_smelter>,<item:ytech:reinforced_brick_chimney>],
        [<item:minecraft:deepslate>,<item:enderio:grains_of_infinity>,<item:minecraft:deepslate>],
        [<item:minecraft:deepslate>,<item:minecraft:deepslate>,<item:minecraft:deepslate>]
    ],
    <item:enderio:basic_capacitor>: [
        [IIngredientEmpty.getInstance(), <tag:item:c:nuggets/gold>, <tag:item:c:dusts/grains_of_infinity>], 
        [<tag:item:c:nuggets/gold>, <item:pneumaticcraft:capacitor>, <tag:item:c:nuggets/gold>], 
        [<tag:item:c:dusts/grains_of_infinity>, <tag:item:c:nuggets/gold>, IIngredientEmpty.getInstance()]
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

// --------------    YTech原始合金炉配方迁移     ----------------

AlloySmelter.addRecipe(<item:minecraft:iron_ingot>,[<item:ytech:crushed_iron>,<item:minecraft:charcoal>],4800,1.0);
AlloySmelter.addRecipe(<item:minecraft:glass>,[<tag:item:c:sands>,<tag:item:c:crushed_materials/galena>],4800,1.0);

// -------------------------------------------------------------
<recipetype:extendedcrafting:table>.addShaped("545e9987-7083-43dd-8fc4-a31a1c26dd26", 3, <item:enderio:void_chassis>, [
	[<item:minecraft:iron_bars>, <item:immersiveengineering:stick_iron>, <item:immersiveengineering:stick_iron>, <item:immersiveengineering:stick_iron>, <item:immersiveengineering:stick_iron>, <item:immersiveengineering:stick_iron>, <item:minecraft:iron_bars>], 
	[<item:immersiveengineering:stick_iron>, <item:minecraft:iron_bars>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:minecraft:iron_bars>, <item:immersiveengineering:stick_iron>], 
	[<item:immersiveengineering:stick_iron>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:immersiveengineering:stick_iron>], 
	[<item:immersiveengineering:stick_iron>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:industrialforegoing:machine_frame_advanced>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:immersiveengineering:stick_iron>], 
	[<item:immersiveengineering:stick_iron>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:immersiveengineering:stick_iron>], 
	[<item:immersiveengineering:stick_iron>, <item:minecraft:iron_bars>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:mind:infinity_iron_mixed>, <item:minecraft:iron_bars>, <item:immersiveengineering:stick_iron>], 
	[<item:minecraft:iron_bars>, <item:immersiveengineering:stick_iron>, <item:immersiveengineering:stick_iron>, <item:immersiveengineering:stick_iron>, <item:immersiveengineering:stick_iron>, <item:immersiveengineering:stick_iron>, <item:minecraft:iron_bars>]
]);