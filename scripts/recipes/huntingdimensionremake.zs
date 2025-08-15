import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:hunting_dimension_remake:abedul>,
    <item:hunting_dimension_remake:abedu>,
    <item:hunting_dimension_remake:spruce>,
    <item:hunting_dimension_remake:sprucedi>,
    <item:hunting_dimension_remake:jungle>,
    <item:hunting_dimension_remake:jungledi>,
    <item:hunting_dimension_remake:acacia>,
    <item:hunting_dimension_remake:cherrydi>,
    <item:hunting_dimension_remake:cherry>,
    <item:hunting_dimension_remake:mangrovedi>,
    <item:hunting_dimension_remake:mangrove>,
    <item:hunting_dimension_remake:dark_oakdi>,
    <item:hunting_dimension_remake:darkoak>,
    <item:hunting_dimension_remake:acaciadi>,
    <item:hunting_dimension_remake:hunting_dimension_frame>,
    <item:hunting_dimension_remake:huntingdimension>
];

val shapelessRecipes as IIngredient[][IItemStack] = {
    <item:hunting_dimension_remake:huntingdimension>: [
        <item:minecraft:flint_and_steel>.anyDamage(),<item:hunting_dimension_remake:hunting_dimension_frame>
    ]
};

for item in removeItem {
    craftingTable.remove(item);
}

for output,inputs in shapelessRecipes {
    CraftingTableRecipe.addShapeless(output,inputs);
}

<recipetype:extendedcrafting:table>.addShaped("28df96ba-14dd-4220-b4e6-e707af3952f8", 2, <item:hunting_dimension_remake:hunting_dimension_frame>, [
	[<item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:bone>], 
	[<item:minecraft:bone>, <item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>, <item:minecraft:bone>], 
	[<item:minecraft:bone>, <item:minecraft:rotten_flesh>, <item:minecraft:oak_log>, <item:minecraft:rotten_flesh>, <item:minecraft:bone>], 
	[<item:minecraft:bone>, <item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>, <item:minecraft:bone>], 
	[<item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:bone>]
]);