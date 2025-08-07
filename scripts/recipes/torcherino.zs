import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:torcherino:double_compressed_torcherino>,
	<item:torcherino:double_compressed_lanterino>,
	<item:torcherino:double_compressed_lantern>,
	<item:torcherino:compressed_torcherino>,
	<item:torcherino:compressed_lanterino>,
	<item:torcherino:compressed_lantern>
];

for item in removeItem {
    craftingTable.remove(item);
}

craftingTable.removeByName("torcherino:torcherino");
<recipetype:extendedcrafting:table>.addShaped("6ff48669-6279-468a-a8fc-f7c6ac962e03", 2, <item:torcherino:torcherino>, [
	[<item:ae2:fluix_crystal>, <item:mekanism:block_refined_glowstone>, <item:torchmaster:megatorch>, <item:mekanism:block_refined_glowstone>, <item:ae2:fluix_crystal>], 
	[<item:mekanism:block_refined_glowstone>, <item:powah:ender_core>, <item:powah:ender_core>, <item:powah:ender_core>, <item:mekanism:block_refined_glowstone>], 
	[<item:torchmaster:megatorch>, <item:powah:ender_core>, <item:mind:torcherino_research_point>.reuse(), <item:powah:ender_core>, <item:torchmaster:megatorch>], 
	[<item:mekanism:block_refined_glowstone>, <item:powah:ender_core>, <item:powah:ender_core>, <item:powah:ender_core>, <item:mekanism:block_refined_glowstone>], 
	[<item:ae2:fluix_crystal>, <item:mekanism:block_refined_glowstone>, <item:torchmaster:megatorch>, <item:mekanism:block_refined_glowstone>, <item:ae2:fluix_crystal>]
]);