import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:javd:portal_block>
];

for item in removeItem {
    craftingTable.remove(item);
}

<recipetype:extendedcrafting:table>.addShaped("221e0d9a-6087-49aa-8d5f-cdd27cd2f67d", 1, <item:javd:portal_block>, [
	[<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>], 
	[<item:minecraft:crying_obsidian>, <item:powah:ender_core>, <item:minecraft:crying_obsidian>], 
	[<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>]
]);