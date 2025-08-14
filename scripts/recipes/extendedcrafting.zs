import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:extendedcrafting:black_iron_ingot>,
    <item:extendedcrafting:basic_table>,
    <item:extendedcrafting:elite_table>
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

LycheeRecipeManager.addRecipe(<recipetype:lychee:item_inside>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:iron_ingot>)
    .blockIn(<blockstate:mind:black_fluid:level=0>)
    .insideBlockTime(10)
    .post([
        LycheePosts.dropItem(<item:extendedcrafting:black_iron_ingot>),
        LycheePosts.placeBlock(<block:minecraft:air>).condition(LycheeConditions.chance(0.5))
    ])
);

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:extendedcrafting:basic_catalyst>)
    .blockIn(<block:immersiveengineering:craftingtable>)
    .post(LycheePosts.placeBlock(<block:extendedcrafting:basic_table>))
);

<recipetype:extendedcrafting:table>.remove(<item:extendedcrafting:crystaltine_ingot>);

ArcFurnace.addRecipe([<item:extendedcrafting:crystaltine_ingot>],<item:justdirethings:ferricore_ingot>,[
    <item:minecraft:nether_star>,<item:mind:annihilation_dye>,<item:actuallyadditions:empowered_diamatine_crystal>,<item:appflux:insulating_resin>
],200000,240);

<recipetype:mekanism:metallurgic_infusing>.addRecipe("elite_table", <item:extendedcrafting:frame>, <chemical:crafttweaker:crystaltine> * 300, <item:extendedcrafting:elite_table>, false);