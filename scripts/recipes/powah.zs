import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:powah:energizing_rod_starter>,
	<item:powah:energizing_orb>,
	<item:powah:capacitor_basic>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:powah:capacitor_basic> * 4: [
        [IIngredientEmpty.getInstance(), <tag:item:c:ingots/iron>, <item:powah:dielectric_paste>], 
        [<tag:item:c:ingots/iron>, <item:enderio:double_layer_capacitor>, <tag:item:c:ingots/iron>], 
        [<item:powah:dielectric_paste>, <tag:item:c:ingots/iron>, IIngredientEmpty.getInstance()]
    ]
};

for item in removeItem {
    craftingTable.remove(item);
}

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}

<recipetype:extendedcrafting:table>.addShaped("6e80fa36-3594-4017-b6aa-3e73ecf247ce", 2, <item:powah:energizing_rod_starter>, [
	[<item:minecraft:air>, <item:actuallyadditions:empowered_restonia_crystal>, <item:actuallyadditions:empowered_restonia_crystal>, <item:actuallyadditions:empowered_restonia_crystal>, <item:minecraft:air>], 
	[<item:powah:dielectric_rod>, <item:powah:dielectric_rod>, <item:powah:capacitor_basic_tiny>, <item:powah:dielectric_rod>, <item:powah:dielectric_rod>], 
	[<item:powah:dielectric_rod>, <item:powah:capacitor_basic_tiny>, <item:powah:dielectric_casing>, <item:powah:capacitor_basic_tiny>, <item:powah:dielectric_rod>], 
	[<item:powah:dielectric_rod>, <item:powah:dielectric_rod>, <item:powah:capacitor_basic_tiny>, <item:powah:dielectric_rod>, <item:powah:dielectric_rod>], 
	[<item:powah:dielectric_rod>, <item:powah:dielectric_rod>, <item:powah:dielectric_rod>, <item:powah:dielectric_rod>, <item:powah:dielectric_rod>]
]);

<recipetype:extendedcrafting:table>.addShaped("865e11fe-2944-4034-9cd3-552362049d5f", 2, <item:powah:energizing_orb>, [
	[<item:minecraft:white_stained_glass>, <item:minecraft:white_stained_glass>, <item:minecraft:white_stained_glass>, <item:minecraft:white_stained_glass>, <item:minecraft:white_stained_glass>], 
	[<item:minecraft:white_stained_glass>, <item:minecraft:white_stained_glass>, <item:powah:dielectric_casing>, <item:minecraft:white_stained_glass>, <item:minecraft:white_stained_glass>], 
	[<item:minecraft:white_stained_glass>, <item:actuallyadditions:display_stand>, <item:actuallyadditions:empowerer>, <item:actuallyadditions:display_stand>, <item:minecraft:white_stained_glass>], 
	[<item:powah:dielectric_rod_horizontal>, <item:powah:dielectric_rod_horizontal>, <item:powah:dielectric_rod_horizontal>, <item:powah:dielectric_rod_horizontal>, <item:powah:dielectric_rod_horizontal>], 
	[<item:powah:dielectric_rod_horizontal>, <item:powah:dielectric_rod_horizontal>, <item:powah:dielectric_rod_horizontal>, <item:powah:dielectric_rod_horizontal>, <item:powah:dielectric_rod_horizontal>]
]);