import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:draconicevolution:draconium_core>,
    <item:draconicevolution:crafting_core>,
    <item:draconicevolution:basic_crafting_injector>
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

<recipetype:extendedcrafting:combination>.addRecipe("51d29bf6-b1d8-452e-9f90-7c4ba3b7f1ac", <item:draconicevolution:crafting_core>, <item:draconicevolution:draconium_core>, [
	<item:minecraft:lapis_block>, <item:mind:space_ice>, <item:mind:space_ice>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:mind:space_ice>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:mind:space_ice>, <item:moremekanismprocessing:crystal_ostrum>, <item:moremekanismprocessing:crystal_ostrum>, <item:mind:space_ice>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:mind:space_ice>, <item:stellaris:solerium>, <item:stellaris:solerium>, <item:mind:space_ice>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:mind:space_ice>, <item:moremekanismprocessing:crystal_ostrum>, <item:moremekanismprocessing:crystal_ostrum>, <item:mind:space_ice>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:mind:space_ice>, <item:stellaris:solerium>, <item:mind:space_ice>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:mind:space_ice>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:mind:space_ice>, <item:mind:space_ice>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:mind:space_ice>, <item:stellaris:solerium>, <item:mind:space_ice>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>
],1000000,5000);

<recipetype:extendedcrafting:combination>.addRecipe("6d65f814-ea6d-4159-a5d1-c3bbc771801c", <item:draconicevolution:basic_crafting_injector> * 4, <item:minecraft:iron_block>, [
	<item:stellaris:tharsite_ingot>, <item:stellaris:neptunium_ingot>, <item:stellaris:tharsite_ingot>, <item:stellaris:tharsite_ingot>, <item:stellaris:corronium_ingot>, <item:enderio:octadic_capacitor>, <item:stellaris:corronium_ingot>, <item:stellaris:corronium_ingot>, <item:draconicevolution:draconium_core>, <item:enderio:octadic_capacitor>, <item:stellaris:tharsite_ingot>, <item:stellaris:tharsite_ingot>, <item:stellaris:corronium_ingot>, <item:enderio:octadic_capacitor>, <item:stellaris:tharsite_ingot>, <item:stellaris:tharsite_ingot>, <item:stellaris:neptunium_ingot>, <item:stellaris:neptunium_ingot>, <item:stellaris:neptunium_ingot>, <item:stellaris:neptunium_ingot>, <item:stellaris:neptunium_ingot>, <item:stellaris:neptunium_ingot>, <item:stellaris:neptunium_ingot>, <item:stellaris:neptunium_ingot>, <item:stellaris:tharsite_ingot>, <item:stellaris:neptunium_ingot>, <item:stellaris:neptunium_ingot>, <item:stellaris:tharsite_ingot>, <item:stellaris:tharsite_ingot>, <item:stellaris:neptunium_ingot>
],200000,10000);