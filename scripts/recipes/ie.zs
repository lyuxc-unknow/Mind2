import crafttweaker.api.item.IItemStack;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:immersiveengineering:dust_iron>,
    <item:immersiveengineering:alloybrick>,
    <item:immersiveengineering:slab_alloybrick>,
    <item:immersiveengineering:plate_iron>,
    <item:immersiveengineering:plate_aluminum>,
    <item:immersiveengineering:plate_copper>,
    <item:immersiveengineering:plate_lead>,
    <item:immersiveengineering:plate_silver>,
    <item:immersiveengineering:plate_nickel>,
    <item:immersiveengineering:plate_uranium>,
    <item:immersiveengineering:plate_constantan>,
    <item:immersiveengineering:plate_electrum>,
    <item:immersiveengineering:plate_steel>,
    <item:immersiveengineering:plate_gold>,
    <item:immersiveengineering:watermill>
];

val recipeId as string[] = [
    "immersiveengineering:crafting/stick_iron",
    "immersiveengineering:crafting/plate_iron_hammering",
    "immersiveengineering:crafting/cokebrick",
    "immersiveengineering:crafting/blastbrick",
    "immersiveengineering:crafting/treated_wood_horizontal"
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:immersiveengineering:watermill>: [
        [<tag:item:c:nuggets/steel>,<item:immersiveengineering:waterwheel_segment>,<tag:item:c:nuggets/steel>],
        [<item:immersiveengineering:waterwheel_segment>,<item:create:large_water_wheel>,<item:immersiveengineering:waterwheel_segment>],
        [<tag:item:c:nuggets/steel>,<item:immersiveengineering:waterwheel_segment>,<tag:item:c:nuggets/steel>]
    ]
};

val shapelessRecipes as IIngredient[][IItemStack] = {
    <item:mind:unfired_blast_bricks> * 5: [
        <tag:item:c:clay>,<item:mysticalagriculture:soul_dust>,<item:mysticalagriculture:soul_dust>,<item:mysticalagriculture:soul_dust>,<item:mysticalagriculture:soul_dust>,<item:biomesoplenty:rose_quartz_chunk>,<item:biomesoplenty:rose_quartz_chunk>,<item:biomesoplenty:rose_quartz_chunk>,<item:biomesoplenty:rose_quartz_chunk>
    ]
};

for id in recipeId {
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

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>,new LycheeRecipeBuilder()
    .itemIn(<item:mind:coal_with_clay_mixture>)
    .blockIn(<block:immersiveengineering:clinker_brick>)
    .post(LycheePosts.placeBlock(<block:immersiveengineering:cokebrick>))
);

LycheeRecipeManager.addRecipe(<recipetype:lychee:dripstone_dripping>,new LycheeRecipeBuilder()
    .sourceBlock(<block:immersiveengineering:creosote_fluid_block>)
    .targetBlock(<tag:block:minecraft:planks>)
    .post(LycheePosts.placeBlock(<block:immersiveengineering:treated_wood_horizontal>))
);

<recipetype:immersiveengineering:alloy>.removeAll();

BlastFurnace.remove(<item:immersiveengineering:ingot_steel>);
BlastFurnace.addRecipe(<item:immersiveengineering:ingot_steel>,<item:naturesaura:sky_ingot>,1200,<tag:item:c:slag>);

BlastFurnace.remove(<item:immersiveengineering:storage_steel>);
BlastFurnace.addRecipe(<item:immersiveengineering:storage_steel>,<item:naturesaura:sky_ingot_block>,5400,<tag:item:c:slag>);

IEAlloying.remove(<item:immersiveengineering:insulating_glass>);
YTechAlloying.addRecipe(<item:immersiveengineering:insulating_glass> * 2,<tag:item:c:glass_blocks> * 2,<tag:item:c:dusts/iron>,1200,200);

IEAlloying.remove(<item:immersiveengineering:ingot_constantan>);
YTechAlloying.addRecipe(<item:immersiveengineering:ingot_constantan> * 2,<tag:item:c:ingots/copper>,<tag:item:c:ingots/nickel>,1250,300);

IEAlloying.remove(<item:immersiveengineering:ingot_electrum>);
YTechAlloying.addRecipe(<item:immersiveengineering:ingot_electrum> * 2,<tag:item:c:ingots/gold>,<tag:item:c:ingots/silver>,1250,300);

IEAlloying.remove(<item:ytech:bronze_ingot>);

CreateRecipeManager.addRecipe(<recipetype:create:haunting>,new CreateRecipeBuilder()
    .inputs([<item:mind:unfired_blast_bricks>])
    .results([<item:mind:blast_bricks>])
);

CraftingTableRecipe.add3x3Recips(<item:immersiveengineering:blastbrick>,<item:mind:blast_bricks>);

LycheeRecipeManager.addRecipe(<recipetype:lychee:anvil_crafting>, new LycheeRecipeBuilder()
    .itemIn([<item:immersiveengineering:graphite_electrode>, <item:minecraft:enchanted_book>.withJsonComponent(<componenttype:minecraft:stored_enchantments>, {levels: {"minecraft:unbreaking": 7}})])
    .anvilItemOut(<item:immersiveengineering:graphite_electrode>.withJsonComponent(<componenttype:minecraft:unbreakable>, {show_in_tooltip: true}).without(<componenttype:minecraft:max_stack_size>))
    .anvilLevelCost(20),
    "unbreakable_graphite_electrode"
);

AlloySmelter.addRecipe(<item:immersiveengineering:insulating_glass>,[<tag:item:c:glass_blocks>,<item:immersiveengineering:dust_iron>],4800,1.0);