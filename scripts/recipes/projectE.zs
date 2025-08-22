import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:projecte:evertide_amulet>,
    <item:projecte:philosophers_stone>,
    <item:projecte:transmutation_table>,
    <item:projecte:condenser_mk1>,
    <item:projecte:condenser_mk2>
];

for item in removeItem {
    craftingTable.remove(item);
}

craftingTable.removeByName("projecte:dark_matter");

DEFusionCrafting.addRecipe(<item:projecte:philosophers_stone>.withJsonComponent(<componenttype:projecte:charge>, 1),<item:mind:empty_philosophers_stone>,[
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:sgjourney:advanced_transfer_crystal>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_radiance>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_spectrum>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_spectrum>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_spectrum>),
    DEIngredientFeat.of(<item:projecte:low_covalence_dust>),
    DEIngredientFeat.of(<item:projecte:medium_covalence_dust>),
    DEIngredientFeat.of(<item:projecte:high_covalence_dust>)
],30000000,"chaotic");

craftingTable.removeByName("projecte:red_matter");
craftingTable.removeByName("projecte:red_matter_alt");
DEFusionCrafting.addRecipe(<item:projecte:red_matter>,<item:projecte:dark_matter>,[
    DEIngredientFeat.of(<item:avaritia:star_fuel>),
    DEIngredientFeat.of(<item:avaritia:star_fuel>),
    DEIngredientFeat.of(<item:avaritia:star_fuel>),
    DEIngredientFeat.of(<item:avaritia:star_fuel>),
    DEIngredientFeat.of(<item:avaritia:star_fuel>),
    DEIngredientFeat.of(<item:avaritia:star_fuel>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_spectrum>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_spectrum>),
    DEIngredientFeat.of(<item:mekanism_extras:alloy_spectrum>)
],1000000,"chaotic");

<recipetype:avaritia:crafting_table_recipe>.addShaped("fb9af735-8193-41be-b615-71bbbd50a7ad", 4, <item:projecte:transmutation_table>, [
	[<item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:extendedcrafting:the_ultimate_ingot>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>], 
	[<item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:extendedcrafting:the_ultimate_ingot>, <item:mind:conversion_media>, <item:extendedcrafting:the_ultimate_ingot>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>], 
	[<item:avaritia:neutron>, <item:avaritia:neutron>, <item:mekanism:pellet_antimatter>, <item:mekanism:pellet_antimatter>, <item:projecte:klein_star_omega>, <item:mekanism:pellet_antimatter>, <item:mekanism:pellet_antimatter>, <item:avaritia:neutron>, <item:avaritia:neutron>], 
	[<item:avaritia:neutron>, <item:extendedcrafting:the_ultimate_ingot>, <item:mekanism:pellet_antimatter>, <item:projecte:dark_matter>, <item:projecte:dark_matter>, <item:projecte:dark_matter>, <item:mekanism:pellet_antimatter>, <item:extendedcrafting:the_ultimate_ingot>, <item:avaritia:neutron>], 
	[<item:extendedcrafting:the_ultimate_ingot>, <item:mind:conversion_media>, <item:projecte:klein_star_omega>, <item:projecte:dark_matter>, <item:avaritia:infinity_catalyst>, <item:projecte:dark_matter>, <item:projecte:klein_star_omega>, <item:mind:conversion_media>, <item:extendedcrafting:the_ultimate_ingot>], 
	[<item:avaritia:neutron>, <item:extendedcrafting:the_ultimate_ingot>, <item:mekanism:pellet_antimatter>, <item:projecte:dark_matter>, <item:projecte:dark_matter>, <item:projecte:dark_matter>, <item:mekanism:pellet_antimatter>, <item:extendedcrafting:the_ultimate_ingot>, <item:avaritia:neutron>], 
	[<item:avaritia:neutron>, <item:avaritia:neutron>, <item:mekanism:pellet_antimatter>, <item:mekanism:pellet_antimatter>, <item:projecte:klein_star_omega>, <item:mekanism:pellet_antimatter>, <item:mekanism:pellet_antimatter>, <item:avaritia:neutron>, <item:avaritia:neutron>], 
	[<item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:extendedcrafting:the_ultimate_ingot>, <item:mind:conversion_media>, <item:extendedcrafting:the_ultimate_ingot>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>], 
	[<item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:extendedcrafting:the_ultimate_ingot>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>, <item:avaritia:neutron>]
]);

<recipetype:extendedcrafting:table>.addShaped("157a9492-502d-4564-973c-8bb360432bb0", 3, <item:projecte:condenser_mk1>, [
	[<item:projecte:aeternalis_fuel_block>, <item:projecte:medium_covalence_dust>, <item:projecte:low_covalence_dust>, <item:naturesaura:effect_powder>.withJsonComponent(<componenttype:naturesaura:effect_powder_data>, {effect: "naturesaura:nether_grass"}), <item:projecte:low_covalence_dust>, <item:projecte:medium_covalence_dust>, <item:projecte:aeternalis_fuel_block>], 
	[<item:projecte:high_covalence_dust>, <item:mind:conversion_media>, <item:mind:conversion_media>, <item:mind:conversion_media>, <item:mind:conversion_media>, <item:mind:conversion_media>, <item:projecte:high_covalence_dust>], 
	[<item:sgjourney:materialization_crystal>, <item:mind:conversion_media>, <item:mekanism:pellet_antimatter>, <item:mekanism:pellet_antimatter>, <item:mekanism:pellet_antimatter>, <item:mind:conversion_media>, <item:sgjourney:materialization_crystal>], 
	[<item:projecte:klein_star_vier>, <item:mind:conversion_media>, <item:mekanism:pellet_antimatter>, <item:mekanism:pellet_antimatter>, <item:mekanism:pellet_antimatter>, <item:mind:conversion_media>, <item:projecte:klein_star_vier>], 
	[<item:naturesaura:effect_powder>.withJsonComponent(<componenttype:naturesaura:effect_powder_data>, {effect: "naturesaura:nether_grass"}), <item:mind:conversion_media>, <item:mekanism:pellet_antimatter>, <item:mekanism:pellet_antimatter>, <item:mekanism:pellet_antimatter>, <item:mind:conversion_media>, <item:naturesaura:effect_powder>.withJsonComponent(<componenttype:naturesaura:effect_powder_data>, {effect: "naturesaura:nether_grass"})], 
	[<item:projecte:klein_star_drei>, <item:mind:conversion_media>, <item:mind:conversion_media>, <item:mind:conversion_media>, <item:mind:conversion_media>, <item:mind:conversion_media>, <item:projecte:klein_star_drei>], 
	[<item:projecte:aeternalis_fuel_block>, <item:projecte:klein_star_zwei>, <item:naturesaura:effect_powder>.withJsonComponent(<componenttype:naturesaura:effect_powder_data>, {effect: "naturesaura:nether_grass"}), <item:projecte:klein_star_ein>, <item:naturesaura:effect_powder>.withJsonComponent(<componenttype:naturesaura:effect_powder_data>, {effect: "naturesaura:nether_grass"}), <item:projecte:klein_star_zwei>, <item:projecte:aeternalis_fuel_block>]
]);