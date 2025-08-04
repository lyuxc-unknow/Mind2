import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:ars_nouveau:imbuement_chamber>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    
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

<recipetype:extendedcrafting:table>.addShaped("cb77911f-f62a-46e4-bd9d-35687636509e", 2, <item:ars_nouveau:imbuement_chamber>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:actuallyadditions:emeradic_crystal>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:ars_nouveau:red_archwood_wood>, <item:ars_nouveau:sourceberry_bush>, <item:ars_nouveau:purple_archwood_wood>, <item:minecraft:air>], 
	[<item:actuallyadditions:enori_crystal>, <item:ars_nouveau:sourceberry_bush>, <item:actuallyadditions:display_stand>, <item:ars_nouveau:sourceberry_bush>, <item:actuallyadditions:enori_crystal>], 
	[<item:minecraft:air>, <item:ars_nouveau:blue_archwood_wood>, <item:ars_nouveau:sourceberry_bush>, <item:ars_nouveau:green_archwood_wood>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:actuallyadditions:emeradic_crystal>, <item:minecraft:air>, <item:minecraft:air>]
]);