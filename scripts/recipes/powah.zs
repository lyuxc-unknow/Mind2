import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:powah:energizing_rod_starter>
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

<recipetype:extendedcrafting:table>.addShaped("6e80fa36-3594-4017-b6aa-3e73ecf247ce", 2, <item:powah:energizing_rod_starter>, [
	[<item:minecraft:air>, <item:actuallyadditions:empowered_restonia_crystal>, <item:actuallyadditions:empowered_restonia_crystal>, <item:actuallyadditions:empowered_restonia_crystal>, <item:minecraft:air>], 
	[<item:powah:dielectric_rod>, <item:powah:dielectric_rod>, <item:powah:capacitor_basic_tiny>, <item:powah:dielectric_rod>, <item:powah:dielectric_rod>], 
	[<item:powah:dielectric_rod>, <item:powah:capacitor_basic_tiny>, <item:powah:dielectric_casing>, <item:powah:capacitor_basic_tiny>, <item:powah:dielectric_rod>], 
	[<item:powah:dielectric_rod>, <item:powah:dielectric_rod>, <item:powah:capacitor_basic_tiny>, <item:powah:dielectric_rod>, <item:powah:dielectric_rod>], 
	[<item:powah:dielectric_rod>, <item:powah:dielectric_rod>, <item:powah:dielectric_rod>, <item:powah:dielectric_rod>, <item:powah:dielectric_rod>]
]);