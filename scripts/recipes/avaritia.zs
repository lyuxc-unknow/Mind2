import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:avaritia:compressed_crafting_table>,
    <item:avaritia:double_compressed_crafting_table>
];
for item in removeItem {
    craftingTable.remove(item);
}

<recipetype:avaritia:crafting_table_recipe>.remove(<item:avaritia:infinity_catalyst>);
<recipetype:extendedcrafting:compressor>.addRecipe("double_compressed_crafting_table",<item:avaritia:double_compressed_crafting_table>, <tag:item:c:player_workstations/crafting_tables>, 6561, <item:extendedcrafting:ultimate_catalyst>, 100000); 

<recipetype:avaritia:crafting_table_recipe>.addShaped("77928431-ad4a-4516-9a35-a7cb40cf1e78", 4, <item:avaritia:infinity_catalyst>, [
	[<item:avaritia:endest_pearl>, <item:avaritia:endest_pearl>, <item:avaritia:diamond_lattice>, <item:avaritia:blaze_cube>, <item:avaritia:blaze_cube>, <item:avaritia:blaze_cube>, <item:avaritia:diamond_lattice>, <item:avaritia:endest_pearl>, <item:avaritia:endest_pearl>], 
	[<item:avaritia:endest_pearl>, <item:avaritia:neutron_ingot>, <item:avaritia:neutron_ingot>, <item:avaritia:cosmic_meatballs>, <item:avaritia:cosmic_meatballs>, <item:avaritia:cosmic_meatballs>, <item:avaritia:neutron_ingot>, <item:avaritia:neutron_ingot>, <item:avaritia:endest_pearl>], 
	[<item:avaritia:diamond_lattice>, <item:avaritia:neutron_ingot>, <item:avaritia:star_fuel>, <item:mysticalagradditions:creative_essence>, <item:mysticalagradditions:creative_essence>, <item:mysticalagradditions:creative_essence>, <item:extendedcrafting:ultimate_singularity>, <item:avaritia:neutron_ingot>, <item:avaritia:diamond_lattice>], 
	[<item:avaritia:blaze_cube>, <item:avaritia:ultimate_stew>, <item:mysticalagradditions:creative_essence>, <item:projecte:dark_matter>, <item:projecte:dark_matter>, <item:projecte:dark_matter>, <item:mysticalagradditions:creative_essence>, <item:avaritia:ultimate_stew>, <item:avaritia:blaze_cube>], 
	[<item:avaritia:blaze_cube>, <item:avaritia:ultimate_stew>, <item:mysticalagradditions:creative_essence>, <item:projecte:dark_matter>, <item:extendedcrafting:ultimate_catalyst>, <item:projecte:dark_matter>, <item:mysticalagradditions:creative_essence>, <item:avaritia:ultimate_stew>, <item:avaritia:blaze_cube>], 
	[<item:avaritia:blaze_cube>, <item:avaritia:ultimate_stew>, <item:mysticalagradditions:creative_essence>, <item:projecte:dark_matter>, <item:projecte:dark_matter>, <item:projecte:dark_matter>, <item:mysticalagradditions:creative_essence>, <item:avaritia:ultimate_stew>, <item:avaritia:blaze_cube>], 
	[<item:avaritia:diamond_lattice>, <item:avaritia:neutron_ingot>, <item:avaritia:eternal_singularity>, <item:mysticalagradditions:creative_essence>, <item:mysticalagradditions:creative_essence>, <item:mysticalagradditions:creative_essence>, <item:avaritia:record_fragment>, <item:avaritia:neutron_ingot>, <item:avaritia:diamond_lattice>], 
	[<item:avaritia:endest_pearl>, <item:avaritia:neutron_ingot>, <item:avaritia:neutron_ingot>, <item:avaritia:cosmic_meatballs>, <item:avaritia:cosmic_meatballs>, <item:avaritia:cosmic_meatballs>, <item:avaritia:neutron_ingot>, <item:avaritia:neutron_ingot>, <item:avaritia:endest_pearl>], 
	[<item:avaritia:endest_pearl>, <item:avaritia:endest_pearl>, <item:avaritia:diamond_lattice>, <item:avaritia:blaze_cube>, <item:avaritia:blaze_cube>, <item:avaritia:blaze_cube>, <item:avaritia:diamond_lattice>, <item:avaritia:endest_pearl>, <item:avaritia:endest_pearl>]
]);

<recipetype:avaritia:crafting_table_recipe>.addShaped("71a81883-6735-4566-b73c-47269e4b504d", 4, <item:avaritia:infinity_clock>, [
	[<item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>], 
	[<item:minecraft:air>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:avaritia:neutron>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:neutron>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:avaritia:neutron>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:neutron>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:avaritia:neutron>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:projecte:watch_of_flowing_time>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:neutron>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:avaritia:neutron>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:neutron>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:avaritia:neutron>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:diamond_lattice>, <item:avaritia:neutron>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:minecraft:air>], 
	[<item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>]
]);