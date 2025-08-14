import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

<recipetype:create:crushing>.removeAll();

val removeById as string[] =[
    "create:crafting/materials/andesite_alloy",
    "create:crafting/materials/andesite_alloy_from_zinc",
    "create:crafting/kinetics/large_cogwheel"
];

val removeItem as IItemStack[] = [
    <item:create:belt_connector>,
    <item:create:shaft>,
    <item:create:cogwheel>,
    <item:create:millstone>,
    <item:create:sail_frame>,
    <item:create:white_sail>,
    <item:create:water_wheel>,
    <item:create:windmill_bearing>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:create:millstone>: [
        [<item:minecraft:air>,<item:create:cogwheel>,<item:minecraft:air>],
        [<item:create:cogwheel>,<item:ytech:millstone>,<item:create:cogwheel>],
        [<item:minecraft:smooth_stone_slab>,<item:minecraft:smooth_stone_slab>,<item:minecraft:smooth_stone_slab>]
    ],
    <item:create:water_wheel>: [
        [<tag:item:minecraft:planks>,<item:immersiveengineering:waterwheel_segment>,<tag:item:minecraft:planks>],
        [<item:immersiveengineering:waterwheel_segment>,<item:create:shaft>,<item:immersiveengineering:waterwheel_segment>],
        [<tag:item:minecraft:planks>,<item:immersiveengineering:waterwheel_segment>,<tag:item:minecraft:planks>]
    ]
};

val shapelessRecipes as IIngredient[][IItemStack] = {
    
};

for id in removeById {
    craftingTable.removeByName(id);
}

for item in removeItem {
    craftingTable.remove(item);
}

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}

for output,inputs in shapelessRecipes {
    CraftingTableRecipe.addShapeless(output,inputs);
}

LycheeRecipeManager.addRecipe(<recipetype:lychee:item_inside>, new LycheeRecipeBuilder()
    .itemIn([<item:minecraft:iron_ingot>,<item:minecraft:andesite>])
    .blockIn(<blockstate:immersiveengineering:creosote_fluid_block:level=0>)
    .post([
        LycheePosts.dropItem(<item:create:andesite_alloy> * 2),
        LycheePosts.placeBlock(<block:minecraft:air>)
            .condition(LycheeConditions.chance(0.5))
    ])
);

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:item:c:gears/wood>)
    .blockIn(<block:create:shaft>)
    .post(
        [
            LycheePosts.placeBlock(<block:minecraft:air>)
                .condition(LycheeConditions.chance(0.5)),
            LycheePosts.dropItem(<item:create:cogwheel>)
                .condition(LycheeConditions.chance(0.5))
        ]
    )
);

<recipetype:create:item_application>.remove(<item:create:andesite_casing>);
CreateRecipeManager.addRecipe(<recipetype:create:item_application>, new CreateRecipeBuilder()
    .inputs([<item:immersiveengineering:treated_wood_horizontal>, <item:create:andesite_alloy>])
    .results([<item:create:andesite_casing>])
);

YTechHammering.addRecipe(<item:create:andesite_alloy>,<item:ytech:iron_hammer>,<item:create:shaft> * 2,10);

<recipetype:create:sandpaper_polishing>.remove(<item:create:polished_rose_quartz>);
CreateRecipeManager.addRecipe(<recipetype:create:sandpaper_polishing>,new CreateRecipeBuilder()
    .inputs([<item:create:rose_quartz>])
    .results([<item:biomesoplenty:rose_quartz_chunk>])
);

val recipes as IIngredient[][] = [
	[<item:megacells:sky_bronze_ingot>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:megacells:sky_bronze_ingot>], 
	[<item:create:shaft>, <item:minecraft:crying_obsidian>, <item:megacells:sky_bronze_ingot>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:megacells:sky_bronze_ingot>, <item:minecraft:crying_obsidian>, <item:create:shaft>], 
	[<item:create:shaft>, <item:megacells:sky_bronze_ingot>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:actuallyadditions:advanced_coil>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:megacells:sky_bronze_ingot>, <item:create:shaft>], 
	[<item:create:shaft>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:create:shaft>], 
	[<item:create:shaft>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:actuallyadditions:advanced_coil>, <item:create_electric_drive:ultimate_motor>, <item:actuallyadditions:advanced_coil>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:create:shaft>], 
	[<item:create:shaft>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:create:shaft>], 
	[<item:create:shaft>, <item:megacells:sky_bronze_ingot>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:actuallyadditions:advanced_coil>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:megacells:sky_bronze_ingot>, <item:create:shaft>], 
	[<item:create:shaft>, <item:minecraft:crying_obsidian>, <item:megacells:sky_bronze_ingot>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:megacells:sky_bronze_ingot>, <item:minecraft:crying_obsidian>, <item:create:shaft>], 
	[<item:megacells:sky_bronze_ingot>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:megacells:sky_bronze_ingot>]
];

CreateRecipeManager.addRecipe(<recipetype:create:mechanical_crafting>, new CreateRecipeBuilder()
    .inputs(recipes)
    .acceptMirrored(true)
    .result(<item:create:creative_motor>)
);