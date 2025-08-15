import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:entangled:block>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:entangled:block>: [
        [<item:extendedcrafting:enhanced_ender_ingot>,<item:enderio:reinforced_obsidian_block>,<item:extendedcrafting:enhanced_ender_ingot>],
        [<item:enderio:reinforced_obsidian_block>,<item:actuallyadditions:phantom_itemface>,<item:enderio:reinforced_obsidian_block>],
        [<item:extendedcrafting:enhanced_ender_ingot>,<item:enderio:reinforced_obsidian_block>,<item:extendedcrafting:enhanced_ender_ingot>]
    ]
};

for item in removeItem {
    craftingTable.remove(item);
}

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}