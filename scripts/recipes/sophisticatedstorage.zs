import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:sophisticatedstorage:controller>
];

for item in removeItem {
    craftingTable.remove(item);
}

<recipetype:extendedcrafting:table>.addShaped("313162d5-f0bc-4831-887e-ae85243349f9", 1, <item:sophisticatedstorage:controller>, [
	[<item:minecraft:comparator>, <item:naturesaura:sky_ingot>, <item:minecraft:comparator>], 
	[<item:sophisticatedstorage:storage_input>, <item:sophisticatedstorage:storage_io>, <item:sophisticatedstorage:storage_output>], 
	[<item:minecraft:comparator>, <item:naturesaura:sky_ingot>, <item:minecraft:comparator>]
]);