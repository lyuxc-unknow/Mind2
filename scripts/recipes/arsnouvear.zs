import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

EnchantingApparatus.remove(<item:ars_nouveau:storage_lectern>);

val removeItem as IItemStack[] = [
    <item:ars_nouveau:imbuement_chamber>,
	<item:ars_nouveau:arcane_pedestal>,
	<item:ars_nouveau:source_jar>,
	<item:ars_nouveau:ritual_flight>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
	<item:ars_nouveau:source_jar>: [
		[<item:ars_nouveau:archwood_slab>,<item:ars_nouveau:archwood_slab>,<item:ars_nouveau:archwood_slab>],
		[<tag:item:c:glass_blocks>,<item:ars_nouveau:source_gem>,<tag:item:c:glass_blocks>],
		[<item:ars_nouveau:archwood_slab>,<item:ars_nouveau:archwood_slab>,<item:ars_nouveau:archwood_slab>]
	]
};

val recipeName as string[] = [
	"ars_nouveau:sourcestone"
];

for item in removeItem {
    craftingTable.remove(item);
}

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}

for name in recipeName {
	craftingTable.removeByName(name);
}

<recipetype:extendedcrafting:table>.addShaped("cb77911f-f62a-46e4-bd9d-35687636509e", 2, <item:ars_nouveau:imbuement_chamber>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:actuallyadditions:emeradic_crystal>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:ars_nouveau:red_archwood_wood>, <item:ars_nouveau:sourceberry_bush>, <item:ars_nouveau:purple_archwood_wood>, <item:minecraft:air>], 
	[<item:actuallyadditions:enori_crystal>, <item:ars_nouveau:sourceberry_bush>, <item:actuallyadditions:display_stand>, <item:ars_nouveau:sourceberry_bush>, <item:actuallyadditions:enori_crystal>], 
	[<item:minecraft:air>, <item:ars_nouveau:blue_archwood_wood>, <item:ars_nouveau:sourceberry_bush>, <item:ars_nouveau:green_archwood_wood>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:actuallyadditions:emeradic_crystal>, <item:minecraft:air>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("976b5123-456e-443a-85a4-5818d1b5c99e", 2, <item:ars_nouveau:arcane_pedestal>, [
	[<item:ars_nouveau:sourcestone>, <item:ars_nouveau:source_gem>, <item:ars_nouveau:source_gem>, <item:ars_nouveau:source_gem>, <item:ars_nouveau:sourcestone>], 
	[<item:ars_nouveau:sourcestone>, <item:ars_nouveau:sourcestone>, <item:ars_nouveau:sourcestone>, <item:ars_nouveau:sourcestone>, <item:ars_nouveau:sourcestone>], 
	[<item:minecraft:gold_nugget>, <item:ars_nouveau:sourcestone>, <item:ars_nouveau:sourcestone>, <item:ars_nouveau:sourcestone>, <item:minecraft:gold_nugget>], 
	[<item:minecraft:air>, <item:minecraft:gold_nugget>, <item:ars_nouveau:sourcestone>, <item:minecraft:gold_nugget>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:ars_nouveau:sourcestone>, <item:ars_nouveau:sourcestone>, <item:ars_nouveau:sourcestone>, <item:minecraft:air>]
]);

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
	.blockIn(<block:naturesaura:infused_stone>)
	.itemIn(<item:ars_nouveau:source_gem>)
	.post(LycheePosts.placeBlock(<block:ars_nouveau:sourcestone>))
);

EnchantingApparatus.addRecipe(<item:ars_nouveau:ritual_flight>,<item:ars_nouveau:purple_archwood_wood>,[<item:minecraft:ender_pearl>,<item:mekanism:enriched_diamond>, <item:mekanism:enriched_diamond>,<item:minecraft:shulker_shell>,<item:minecraft:shulker_shell>,<item:minecraft:shulker_shell>],10000,false);