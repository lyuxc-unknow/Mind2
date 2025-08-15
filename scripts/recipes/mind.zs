import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.util.math.BlockPos;

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:mind:rough_grinding_iron_ingot>: [
        [<item:minecraft:air>,<item:minecraft:diorite>,<item:minecraft:air>],
        [<item:minecraft:diorite>,<item:minecraft:iron_ingot>,<item:minecraft:diorite>],
        [<item:minecraft:air>,<item:minecraft:diorite>,<item:minecraft:air>]
    ],
    <item:mind:coal_with_clay_mixture>: [
        [<tag:item:actuallyadditions:tiny_coals>,<tag:item:actuallyadditions:tiny_coals>,<tag:item:actuallyadditions:tiny_coals>],
        [<tag:item:actuallyadditions:tiny_coals>,<tag:item:c:clay>,<tag:item:actuallyadditions:tiny_coals>],
        [<tag:item:actuallyadditions:tiny_coals>,<tag:item:actuallyadditions:tiny_coals>,<tag:item:actuallyadditions:tiny_coals>]
    ]
};

val shapelessRecipes as IIngredient[][IItemStack] = {
    <item:mind:end_petal> * 2: [
        <item:naturesaura:end_flower>, <tag:item:c:tools/shear>.asIIngredient().anyDamage().transformDamage(1)
    ],
    <item:mind:annihilation_dye> * 2: [
        <item:mind:end_petal>, <tag:item:c:mortar_and_pestles>.asIIngredient().anyDamage().transformDamage(1)
    ]
};

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}

for output,inputs in shapelessRecipes {
    CraftingTableRecipe.addShapeless(output,inputs);
}

Melter.addRecipe(<fluid:mind:black_fluid> * 250, <tag:item:c:dyes/black>, 200, 2);


LycheeRecipeManager.addRecipe(<recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .itemIn(<item:naturesaura:aura_bottle>.withJsonComponent(<componenttype:naturesaura:aura_bottle_data>, {aura_type: "naturesaura:nether"}))
    .crushingFallingBlock(<block:ytech:bronze_anvil>)
    .post(LycheePosts.dropItem(<item:mind:bottle_of_tear>))
);

LycheeRecipeManager.addRecipe(<recipetype:lychee:item_inside>, new LycheeRecipeBuilder()
    .itemIn([<item:minecraft:rotten_flesh> * 4, <item:minecraft:bone> * 8, <item:mysticalagriculture:inferium_essence> * 8])
    .blockIn(<blockstate:minecraft:water:level=0>)
    .post(LycheePosts.placeBlock(<blockstate:mind:industrial_lubricants:level=0>))
);

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_clicking>, new LycheeRecipeBuilder()
    .itemIn(<item:ytech:sharp_flint>)
    .blockIn(<tag:block:c:stones>)
    .post(LycheePosts.dropItem(<item:mind:sharp_flint>))
);

PressureChamber.addRecipe([<item:mind:uv_lamp> * 2],[
    <item:ae2:quartz_glass> * 3, <item:minecraft:purple_dye> * 4, <item:minecraft:glowstone_dust> * 4
],2.1);

LycheeRecipeManager.addRecipe(<recipetype:lychee:random_block_ticking>, new LycheeRecipeBuilder()
    .blockIn(<block:mind:annihilation_dye_with_dirt>)
    .condition(LycheeConditions.not(LycheeConditions.block(<block:minecraft:podzol>, new BlockPos(0,-1,0))))
    .post([LycheePosts.placeBlock(<block:minecraft:air>), LycheePosts.dropItem(<item:mind:annihilation_dye_with_dirt>)])
);
val unbreakableBook = <item:minecraft:enchanted_book>.withJsonComponent(<componenttype:minecraft:stored_enchantments>, {levels: {"minecraft:unbreaking": 1}});

craftingTable.addShaped("unbreakable_iron_aiot",<item:actuallyadditions:iron_aiot>.withJsonComponent(<componenttype:minecraft:unbreakable>, {}).without(<componenttype:minecraft:max_stack_size>),[
    [<item:naturesaura:sky_ingot>,unbreakableBook,<item:naturesaura:sky_ingot>],
    [unbreakableBook,<item:actuallyadditions:iron_aiot>,unbreakableBook],
    [<item:naturesaura:sky_ingot>,unbreakableBook,<item:naturesaura:sky_ingot>]
]);

craftingTable.addShaped("unbreakable_netherite_aiot",<item:actuallyadditions:netherite_aiot>.withJsonComponent(<componenttype:minecraft:unbreakable>, {}).without(<componenttype:minecraft:max_stack_size>),[
    [<item:minecraft:netherite_ingot>,unbreakableBook,<item:minecraft:netherite_ingot>],
    [unbreakableBook,<item:actuallyadditions:iron_aiot>.withJsonComponent(<componenttype:minecraft:unbreakable>, {}).without(<componenttype:minecraft:max_stack_size>),unbreakableBook],
    [<item:minecraft:netherite_ingot>,unbreakableBook,<item:minecraft:netherite_ingot>]
]);

<recipetype:extendedcrafting:table>.addShaped("b0fd9b0a-41cc-4958-8ec7-4f4d3dc04871", 1, <item:mind:conversion_media> * 2, [
	[<item:projecte:high_covalence_dust> * 2, <item:projecte:medium_covalence_dust> * 4, <item:projecte:low_covalence_dust> * 8], 
	[<item:sgjourney:advanced_transfer_crystal> * 2, <item:projecte:philosophers_stone>.withJsonComponent(<componenttype:projecte:charge>, 4), <item:sgjourney:advanced_transfer_crystal> * 2], 
	[<item:projecte:low_covalence_dust> * 8, <item:projecte:medium_covalence_dust> * 4, <item:projecte:high_covalence_dust> * 2]
]);

<recipetype:extendedcrafting:table>.addShaped("337b0df7-89fe-49c1-80f0-fb26837726c2", 0, <item:mind:finals_token>, [
	[<item:projecte:red_matter_block>, <item:avaritia:infinity_ingot>, <item:projecte:red_matter_block>], 
	[<item:avaritia:infinity_ingot>, <item:torcherino:the_unknown_torcherino>, <item:avaritia:infinity_ingot>], 
	[<item:projecte:red_matter_block>, <item:avaritia:infinity_ingot>, <item:projecte:red_matter_block>]
]);