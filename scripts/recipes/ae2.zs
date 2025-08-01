import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:ae2:inscriber>,
    <item:ae2:controller>,
    <item:ae2:drive>,
	<item:ae2:molecular_assembler>,
	<item:ae2additions:me_wireless_transceiver>,
	<item:extendedae:infinity_cobblestone_cell>,
    <item:extendedae:infinity_water_cell>,
	<item:extendedae:machine_frame>
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

<recipetype:extendedcrafting:table>.addShaped("d7416dd3-dc15-4c65-a931-d01ee022c97e", 2, <item:ae2:inscriber>, [
	[<item:ae2:cut_quartz_slab>, <item:ae2:cut_quartz_slab>, <item:ae2:cut_quartz_slab>, <item:ae2:cut_quartz_slab>, <item:ae2:cut_quartz_slab>], 
	[<item:ae2:cut_quartz_block>, <item:immersiveengineering:sheetmetal_iron>, <item:minecraft:piston>, <item:immersiveengineering:sheetmetal_iron>, <item:ae2:cut_quartz_block>], 
	[<item:ae2:cut_quartz_block>, <item:immersiveengineering:sheetmetal_constantan>, <item:industrialforegoing:machine_frame_advanced>, <item:immersiveengineering:sheetmetal_iron>, <item:ae2:cut_quartz_block>], 
	[<item:ae2:cut_quartz_block>, <item:immersiveengineering:sheetmetal_iron>, <item:minecraft:piston>, <item:immersiveengineering:sheetmetal_iron>, <item:ae2:cut_quartz_block>], 
	[<item:ae2:cut_quartz_block>, <item:ae2:cut_quartz_block>, <item:ae2:cut_quartz_block>, <item:ae2:cut_quartz_block>, <item:ae2:cut_quartz_block>]
]);

<recipetype:extendedcrafting:table>.addShaped("49e65f0e-67c9-4d27-980f-e2ad0f49e6f3", 2, <item:ae2:controller>, [
	[<item:ae2:smooth_sky_stone_block>, <item:ae2:smooth_sky_stone_block>, <item:ae2:smooth_sky_stone_block>, <item:ae2:smooth_sky_stone_block>, <item:ae2:smooth_sky_stone_block>], 
	[<item:ae2:smooth_sky_stone_block>, <item:ae2:fluix_crystal>, <item:ae2:engineering_processor>, <item:ae2:fluix_crystal>, <item:ae2:smooth_sky_stone_block>], 
	[<item:ae2:smooth_sky_stone_block>, <item:mekanism:basic_control_circuit>, <item:ae2:energy_acceptor>, <item:mekanism:basic_control_circuit>, <item:ae2:smooth_sky_stone_block>], 
	[<item:ae2:smooth_sky_stone_block>, <item:ae2:fluix_crystal>, <item:ae2:engineering_processor>, <item:ae2:fluix_crystal>, <item:ae2:smooth_sky_stone_block>], 
	[<item:ae2:smooth_sky_stone_block>, <item:ae2:smooth_sky_stone_block>, <item:ae2:smooth_sky_stone_block>, <item:ae2:smooth_sky_stone_block>, <item:ae2:smooth_sky_stone_block>]
]);

<recipetype:extendedcrafting:table>.addShaped("29d5c2f2-4449-463f-9170-aa4f6e27382f", 2, <item:ae2:drive>, [
	[<item:minecraft:iron_ingot>, <item:ae2:fluix_glass_cable>, <item:minecraft:iron_ingot>, <item:ae2:fluix_glass_cable>, <item:minecraft:iron_ingot>], 
	[<item:ae2:fluix_glass_cable>, <item:ae2:calculation_processor>, <item:ae2:engineering_processor>, <item:ae2:calculation_processor>, <item:ae2:fluix_glass_cable>], 
	[<item:minecraft:iron_ingot>, <item:megacells:accumulation_processor>, <item:ae2:calculation_processor>, <item:megacells:accumulation_processor>, <item:minecraft:iron_ingot>], 
	[<item:ae2:fluix_glass_cable>, <item:ae2:calculation_processor>, <item:ae2:engineering_processor>, <item:ae2:calculation_processor>, <item:ae2:fluix_glass_cable>], 
	[<item:minecraft:iron_ingot>, <item:ae2:fluix_glass_cable>, <item:minecraft:iron_ingot>, <item:ae2:fluix_glass_cable>, <item:minecraft:iron_ingot>]
]);

<recipetype:extendedcrafting:table>.addShaped("a253bcca-922b-4fed-8a03-63ce63b9f0ca", 2, <item:ae2:molecular_assembler>, [
	[<item:naturesaura:sky_ingot>, <item:naturesaura:sky_ingot>, <item:ae2:fluix_crystal>, <item:naturesaura:sky_ingot>, <item:naturesaura:sky_ingot>], 
	[<item:naturesaura:sky_ingot>, <item:ae2:quartz_glass>, <item:ae2:quartz_glass>, <item:ae2:quartz_glass>, <item:naturesaura:sky_ingot>], 
	[<item:ae2:fluix_crystal>, <item:ae2:annihilation_core>, <item:integratedcrafting:part_interface_crafting>, <item:ae2:formation_core>, <item:ae2:fluix_crystal>], 
	[<item:naturesaura:sky_ingot>, <item:ae2:quartz_glass>, <item:ae2:quartz_glass>, <item:ae2:quartz_glass>, <item:naturesaura:sky_ingot>], 
	[<item:naturesaura:sky_ingot>, <item:naturesaura:sky_ingot>, <item:ae2:fluix_crystal>, <item:naturesaura:sky_ingot>, <item:naturesaura:sky_ingot>]
]);

Empowering.addRecipe(<item:ae2additions:me_wireless_transceiver>,<item:extendedae:wireless_connect>,[<item:extendedae:wireless_tool>,<item:extendedae:concurrent_processor>,<item:actuallyadditions:empowered_diamatine_crystal_block>,<item:ae2:wireless_receiver>],500000,30, 10690205);

<recipetype:mekanism:metallurgic_infusing>.addRecipe("machine_frame", <item:mekanism:steel_casing>, <chemical:crafttweaker:entro> * 50, <item:extendedae:machine_frame>, false);