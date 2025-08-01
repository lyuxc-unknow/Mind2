import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:mind:rough_grinding_iron_ingot>: [
        [IIngredientEmpty.getInstance(),<item:minecraft:diorite>,IIngredientEmpty.getInstance()],
        [<item:minecraft:diorite>,<item:minecraft:iron_ingot>,<item:minecraft:diorite>],
        [IIngredientEmpty.getInstance(),<item:minecraft:diorite>,IIngredientEmpty.getInstance()]
    ],
    <item:mind:coal_with_clay_mixture>: [
        [<tag:item:actuallyadditions:tiny_coals>,<tag:item:actuallyadditions:tiny_coals>,<tag:item:actuallyadditions:tiny_coals>],
        [<tag:item:actuallyadditions:tiny_coals>,<tag:item:c:clay>,<tag:item:actuallyadditions:tiny_coals>],
        [<tag:item:actuallyadditions:tiny_coals>,<tag:item:actuallyadditions:tiny_coals>,<tag:item:actuallyadditions:tiny_coals>]
    ]
};

val shapelessRecipes as IIngredient[][IItemStack] = {
    
};

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}

for output,inputs in shapelessRecipes {
    CraftingTableRecipe.addShapeless(output,inputs);
}

Melter.addRecipe(<fluid:mind:black_fluid> * 250, <tag:item:c:dyes/black>, 200, 2);

val recipes as IIngredient[][] = [
	[<item:megacells:sky_bronze_ingot>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:megacells:sky_bronze_ingot>], 
	[<item:create:shaft>, <item:minecraft:crying_obsidian>, <item:megacells:sky_bronze_ingot>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:megacells:sky_bronze_ingot>, <item:minecraft:crying_obsidian>, <item:create:shaft>], 
	[<item:create:shaft>, <item:megacells:sky_bronze_ingot>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:actuallyadditions:advanced_coil>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:megacells:sky_bronze_ingot>, <item:create:shaft>], 
	[<item:create:shaft>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:create:shaft>], 
	[<item:create:shaft>, <item:minecraft:crying_obsidian>, <item:actuallyadditions:advanced_coil>, <item:actuallyadditions:advanced_coil>, <item:create:water_wheel>, <item:actuallyadditions:advanced_coil>, <item:actuallyadditions:advanced_coil>, <item:minecraft:crying_obsidian>, <item:create:shaft>], 
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

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .itemIn(<item:naturesaura:aura_bottle>.withJsonComponent(<componenttype:naturesaura:aura_bottle_data>, {aura_type: "naturesaura:nether"}))
    .crushingFallingBlock(<block:ytech:bronze_anvil>)
    .post(LycheePosts.dropItem(<item:mind:bottle_of_tear>))
);