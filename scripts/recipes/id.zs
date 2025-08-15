import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:integrateddynamics:mechanical_squeezer>,
    <item:integrateddynamics:mechanical_drying_basin>,
    <item:integrateddynamics:drying_basin>,
    <item:integrateddynamics:squeezer>
];

for item in removeItem {
    craftingTable.remove(item);
}