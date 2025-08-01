import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    
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

YTechDrying.addRecipe(<item:integrateddynamics:crystalized_menril_block>,<item:integrateddynamics:menril_log>,1200);

YTechAlloying.addRecipe(<item:integratedterminals:menril_glass>,<tag:item:c:glass_blocks>,<item:integrateddynamics:crystalized_menril_chunk>,1000,1200);