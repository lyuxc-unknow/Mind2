import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

val removeItem as IItemStack[] = [
    <item:modular_machinery_reborn:inputbus_tiny>,
    <item:modular_machinery_reborn:inputbus_small>,
    <item:modular_machinery_reborn:outputbus_tiny>,
    <item:modular_machinery_reborn:outputbus_small>,
    <item:modular_machinery_reborn:energyinputhatch_tiny>,
    <item:modular_machinery_reborn:energyinputhatch_small>,
    <item:modular_machinery_reborn:energyoutputhatch_tiny>,
    <item:modular_machinery_reborn:energyoutputhatch_small>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
	<item:modular_machinery_reborn_mekanism:chemicalinputhatch_tiny>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_plain>,<item:mekanism:basic_chemical_tank>,<item:modular_machinery_reborn:casing_plain>],
		[<item:modular_machinery_reborn:modularium>,<item:minecraft:air>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_mekanism:chemicalinputhatch_small>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_plain>,<item:modular_machinery_reborn_mekanism:chemicalinputhatch_tiny>,<item:modular_machinery_reborn:casing_plain>],
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:basic_chemical_tank>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_mekanism:chemicalinputhatch_normal>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_plain>,<item:modular_machinery_reborn_mekanism:chemicalinputhatch_small>,<item:modular_machinery_reborn:casing_plain>],
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:advanced_chemical_tank>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_mekanism:chemicalinputhatch_reinforced>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_mekanism:chemicalinputhatch_normal>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:advanced_chemical_tank>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_mekanism:chemicalinputhatch_big>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_mekanism:chemicalinputhatch_reinforced>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:elite_chemical_tank>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_mekanism:chemicalinputhatch_huge>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_mekanism:chemicalinputhatch_big>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:elite_chemical_tank>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_mekanism:chemicalinputhatch_ludicrous>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_mekanism:chemicalinputhatch_huge>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:ultimate_chemical_tank>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_mekanism:chemicalinputhatch_vacuum>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_mekanism:chemicalinputhatch_ludicrous>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:ultimate_chemical_tank>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_tiny>: [
		[<item:modular_machinery_reborn:modularium>,<item:minecraft:air>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_plain>,<item:mekanism:basic_chemical_tank>,<item:modular_machinery_reborn:casing_plain>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_small>: [
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:basic_chemical_tank>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_plain>,<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_tiny>,<item:modular_machinery_reborn:casing_plain>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_normal>: [
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:advanced_chemical_tank>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_plain>,<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_small>,<item:modular_machinery_reborn:casing_plain>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_reinforced>: [
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:advanced_chemical_tank>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_normal>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_big>: [
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:elite_chemical_tank>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_reinforced>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_huge>: [
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:elite_chemical_tank>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_big>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_ludicrous>: [
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:ultimate_chemical_tank>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_huge>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_vacuum>: [
		[<item:modular_machinery_reborn:modularium>,<item:mekanism:ultimate_chemical_tank>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_mekanism:chemicaloutputhatch_ludicrous>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_ars:sourceinputhatch_tiny>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_plain>,<item:ars_nouveau:source_jar>,<item:modular_machinery_reborn:casing_plain>],
		[<item:modular_machinery_reborn:modularium>,<item:minecraft:air>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_ars:sourceinputhatch_small>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_plain>,<item:modular_machinery_reborn_ars:sourceinputhatch_tiny>,<item:modular_machinery_reborn:casing_plain>],
		[<item:modular_machinery_reborn:modularium>,<item:ars_nouveau:source_jar>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_ars:sourceinputhatch_normal>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_plain>,<item:modular_machinery_reborn_ars:sourceinputhatch_small>,<item:modular_machinery_reborn:casing_plain>],
		[<item:modular_machinery_reborn:modularium>,<item:ars_nouveau:source_jar>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_ars:sourceinputhatch_reinforced>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_ars:sourceinputhatch_normal>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:modular_machinery_reborn:modularium>,<item:ars_nouveau:source_jar>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_ars:sourceinputhatch_big>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_ars:sourceinputhatch_reinforced>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:modular_machinery_reborn:modularium>,<item:ars_additions:ender_source_jar>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_ars:sourceinputhatch_huge>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_ars:sourceinputhatch_big>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:modular_machinery_reborn:modularium>,<item:ars_additions:ender_source_jar>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_ars:sourceinputhatch_ludicrous>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_ars:sourceinputhatch_huge>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:modular_machinery_reborn:modularium>,<item:ars_additions:ender_source_jar>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_ars:sourceinputhatch_vacuum>: [
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_ars:sourceinputhatch_ludicrous>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:modular_machinery_reborn:modularium>,<item:ars_additions:ender_source_jar>,<item:modular_machinery_reborn:modularium>]
	],
	<item:modular_machinery_reborn_ars:sourceoutputhatch_tiny>:[
		[<item:modular_machinery_reborn:modularium>,<item:minecraft:air>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_plain>,<item:ars_nouveau:source_jar>,<item:modular_machinery_reborn:casing_plain>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_ars:sourceoutputhatch_small>:[
		[<item:modular_machinery_reborn:modularium>,<item:ars_nouveau:source_jar>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_plain>,<item:modular_machinery_reborn_ars:sourceoutputhatch_tiny>,<item:modular_machinery_reborn:casing_plain>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_ars:sourceoutputhatch_normal>:[
		[<item:modular_machinery_reborn:modularium>,<item:ars_nouveau:source_jar>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_plain>,<item:modular_machinery_reborn_ars:sourceoutputhatch_small>,<item:modular_machinery_reborn:casing_plain>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_ars:sourceoutputhatch_reinforced>: [
		[<item:modular_machinery_reborn:modularium>,<item:ars_nouveau:source_jar>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_ars:sourceoutputhatch_normal>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_ars:sourceoutputhatch_big>: [
		[<item:modular_machinery_reborn:modularium>,<item:ars_additions:ender_source_jar>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_ars:sourceoutputhatch_reinforced>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_ars:sourceoutputhatch_huge>: [
		[<item:modular_machinery_reborn:modularium>,<item:ars_additions:ender_source_jar>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_ars:sourceoutputhatch_big>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_ars:sourceoutputhatch_ludicrous>: [
		[<item:modular_machinery_reborn:modularium>,<item:ars_additions:ender_source_jar>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_ars:sourceoutputhatch_huge>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn_ars:sourceoutputhatch_vacuum>: [
		[<item:modular_machinery_reborn:modularium>,<item:ars_additions:ender_source_jar>,<item:modular_machinery_reborn:modularium>],
		[<item:modular_machinery_reborn:casing_reinforced>,<item:modular_machinery_reborn_ars:sourceoutputhatch_ludicrous>,<item:modular_machinery_reborn:casing_reinforced>],
		[<item:minecraft:air>,<item:modular_machinery_reborn:modularium>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn:height_meter>: [
		[<item:psi:ebony_psimetal>,<item:psi:ebony_psimetal>,<item:psi:ebony_psimetal>],
		[<item:extendedterminal:compat_processor>,<item:modular_machinery_reborn:casing_plain>,<item:extendedterminal:compat_processor>],
		[<item:psi:ebony_psimetal>,<item:psi:ebony_psimetal>,<item:psi:ebony_psimetal>]
	],
	<item:modular_machinery_reborn:fluidinputhatch_normal>: [
		[<item:minecraft:air>,<item:pneumaticcraft:liquid_hopper>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:fluidinputhatch_small>,<item:modular_machinery_reborn:modularium>],
		[<item:mekanism:basic_fluid_tank>,<item:modular_machinery_reborn:modularium>,<item:mekanism:basic_fluid_tank>]
	],
	<item:modular_machinery_reborn:fluidinputhatch_reinforced>: [
		[<item:minecraft:air>,<item:pneumaticcraft:liquid_hopper>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:fluidinputhatch_normal>,<item:modular_machinery_reborn:modularium>],
		[<item:mekanism:basic_fluid_tank>,<item:modular_machinery_reborn:modularium>,<item:mekanism:basic_fluid_tank>]
	],
	<item:modular_machinery_reborn:fluidinputhatch_huge>: [
		[<item:minecraft:air>,<item:pneumaticcraft:liquid_hopper>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:fluidinputhatch_reinforced>,<item:modular_machinery_reborn:modularium>],
		[<item:mekanism:basic_fluid_tank>,<item:modular_machinery_reborn:modularium>,<item:mekanism:basic_fluid_tank>]
	],
	<item:modular_machinery_reborn:fluidinputhatch_big>: [
		[<item:minecraft:air>,<item:pneumaticcraft:liquid_hopper>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:fluidinputhatch_huge>,<item:modular_machinery_reborn:modularium>],
		[<item:mekanism:advanced_fluid_tank>,<item:modular_machinery_reborn:modularium>,<item:mekanism:advanced_fluid_tank>]
	],
	<item:modular_machinery_reborn:fluidinputhatch_ludicrous>: [
		[<item:minecraft:air>,<item:pneumaticcraft:liquid_hopper>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:fluidinputhatch_big>,<item:modular_machinery_reborn:modularium>],
		[<item:mekanism:elite_fluid_tank>,<item:modular_machinery_reborn:modularium>,<item:mekanism:elite_fluid_tank>]
	],
	<item:modular_machinery_reborn:fluidinputhatch_vacuum>: [
		[<item:minecraft:air>,<item:pneumaticcraft:liquid_hopper>,<item:minecraft:air>],
		[<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:fluidinputhatch_ludicrous>,<item:modular_machinery_reborn:modularium>],
		[<item:mekanism:ultimate_fluid_tank>,<item:modular_machinery_reborn:modularium>,<item:mekanism:ultimate_fluid_tank>]
	],
	<item:modular_machinery_reborn:fluidoutputhatch_normal>: [
		[<item:mekanism:basic_fluid_tank>,<item:modular_machinery_reborn:modularium>,<item:mekanism:basic_fluid_tank>],
		[<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:fluidoutputhatch_small>,<item:modular_machinery_reborn:modularium>],
		[<item:minecraft:air>,<item:pneumaticcraft:liquid_hopper>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn:fluidoutputhatch_reinforced>: [
		[<item:mekanism:basic_fluid_tank>,<item:modular_machinery_reborn:modularium>,<item:mekanism:basic_fluid_tank>],
		[<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:fluidoutputhatch_normal>,<item:modular_machinery_reborn:modularium>],
		[<item:minecraft:air>,<item:pneumaticcraft:liquid_hopper>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn:fluidoutputhatch_big>: [
		[<item:mekanism:basic_fluid_tank>,<item:modular_machinery_reborn:modularium>,<item:mekanism:basic_fluid_tank>],
		[<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:fluidoutputhatch_reinforced>,<item:modular_machinery_reborn:modularium>],
		[<item:minecraft:air>,<item:pneumaticcraft:liquid_hopper>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn:fluidoutputhatch_huge>: [
		[<item:mekanism:advanced_fluid_tank>,<item:modular_machinery_reborn:modularium>,<item:mekanism:advanced_fluid_tank>],
		[<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:fluidoutputhatch_big>,<item:modular_machinery_reborn:modularium>],
		[<item:minecraft:air>,<item:pneumaticcraft:liquid_hopper>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn:fluidoutputhatch_ludicrous>: [
		[<item:mekanism:elite_fluid_tank>,<item:modular_machinery_reborn:modularium>,<item:mekanism:elite_fluid_tank>],
		[<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:fluidoutputhatch_huge>,<item:modular_machinery_reborn:modularium>],
		[<item:minecraft:air>,<item:pneumaticcraft:liquid_hopper>,<item:minecraft:air>]
	],
	<item:modular_machinery_reborn:fluidoutputhatch_vacuum>: [
		[<item:mekanism:ultimate_fluid_tank>,<item:modular_machinery_reborn:modularium>,<item:mekanism:ultimate_fluid_tank>],
		[<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:fluidoutputhatch_ludicrous>,<item:modular_machinery_reborn:modularium>],
		[<item:minecraft:air>,<item:pneumaticcraft:liquid_hopper>,<item:minecraft:air>]
	]
};

for item in removeItem {
    craftingTable.remove(item);
}

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}

<recipetype:extendedcrafting:table>.addShaped("8ae42db3-7528-48b2-93d7-84ab951bf514", 1, <item:modular_machinery_reborn:inputbus_tiny>, [
	[<item:minecraft:hopper>], 
	[<item:modular_machinery_reborn:casing_plain>], 
	[<item:minecraft:chest>]
]);

<recipetype:extendedcrafting:table>.addShaped("cc0108f0-b791-4871-a934-6f7246bd2de0", 1, <item:modular_machinery_reborn:inputbus_small>, [
	[<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>], 
	[<item:modular_machinery_reborn:modularium>, <item:modular_machinery_reborn:inputbus_tiny>, <item:modular_machinery_reborn:modularium>], 
	[<item:minecraft:chest>, <item:modular_machinery_reborn:modularium>, <item:minecraft:chest>]
]);

craftingTable.remove(<item:modular_machinery_reborn:modularium>);
DissolutionChamber.addRecipe(<item:modular_machinery_reborn:modularium> * 8,[
    <tag:item:c:ingots/constantan>,<tag:item:c:ingots/energetic_alloy>,<tag:item:c:ingots/constantan>,
    <tag:item:c:ingots/redstone_alloy>,<tag:item:c:ingots/redstone_alloy>,
    <tag:item:c:ingots/electrum>,<item:enderio:energetic_alloy_ingot>,<tag:item:c:ingots/electrum>
],300,<fluid:pneumaticcraft:lubricant> * 250);

craftingTable.remove(<item:modular_machinery_reborn:casing_plain>);
DissolutionChamber.addRecipe(<item:modular_machinery_reborn:casing_plain>,[
    <item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:modularium>,
    <item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:modularium>,
    <item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:modularium>,<item:modular_machinery_reborn:modularium>
],300,<fluid:pneumaticcraft:lubricant> * 250);

<recipetype:extendedcrafting:table>.addShaped("14537c40-deda-4fb0-9ce4-8193ee84b32c", 1, <item:modular_machinery_reborn:outputbus_tiny>, [
	[<item:minecraft:chest>], 
	[<item:modular_machinery_reborn:casing_plain>], 
	[<item:minecraft:hopper>]
]);

<recipetype:extendedcrafting:table>.addShaped("802dad8b-c68c-49ef-ab72-9f12c623d1f6", 1, <item:modular_machinery_reborn:outputbus_small>, [
	[<item:minecraft:chest>, <item:modular_machinery_reborn:modularium>, <item:minecraft:chest>], 
	[<item:modular_machinery_reborn:modularium>, <item:modular_machinery_reborn:outputbus_tiny>, <item:modular_machinery_reborn:modularium>], 
	[<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("ba3d85c4-bc1e-4893-803e-e93e5c1066b1", 1, <item:modular_machinery_reborn:inputbus_normal>, [
	[<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>], 
	[<item:modular_machinery_reborn:modularium>, <item:modular_machinery_reborn:inputbus_small>, <item:modular_machinery_reborn:modularium>], 
	[<item:minecraft:chest>, <item:modular_machinery_reborn:modularium>, <item:minecraft:chest>]
]);

<recipetype:extendedcrafting:table>.addShaped("965c4b62-b957-4cde-af67-87bfec8726c2", 1, <item:modular_machinery_reborn:outputbus_normal>, [
	[<item:minecraft:chest>, <item:modular_machinery_reborn:modularium>, <item:minecraft:chest>], 
	[<item:modular_machinery_reborn:modularium>, <item:modular_machinery_reborn:outputbus_small>, <item:modular_machinery_reborn:modularium>], 
	[<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("2e2578c9-591c-4c6d-8a6b-e3712e43efc7", 1, <item:modular_machinery_reborn:energyinputhatch_tiny>, [
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>], 
	[<item:minecraft:redstone>, <item:modular_machinery_reborn:casing_plain>, <item:minecraft:redstone>], 
	[<item:minecraft:repeater>, <tag:item:c:storage_blocks/redstone>, <item:minecraft:repeater>]
]);

<recipetype:extendedcrafting:table>.addShaped("2f381122-feb7-4016-96a5-c49dfd63a30d", 1, <item:modular_machinery_reborn:energyinputhatch_small>, [
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>], 
	[<item:minecraft:redstone>, <item:modular_machinery_reborn:energyinputhatch_tiny>, <item:minecraft:redstone>], 
	[<item:minecraft:repeater>, <tag:item:c:storage_blocks/redstone>, <item:minecraft:repeater>]
]);

<recipetype:extendedcrafting:table>.addShaped("450c36cd-da15-41a0-84a4-cec121952e6f", 1, <item:modular_machinery_reborn:energyinputhatch_normal>, [
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>], 
	[<item:minecraft:redstone>, <item:modular_machinery_reborn:energyinputhatch_small>, <item:minecraft:redstone>], 
	[<item:minecraft:repeater>, <tag:item:c:storage_blocks/redstone>, <item:minecraft:repeater>]
]);

<recipetype:extendedcrafting:table>.addShaped("41e370b1-237f-4132-a38c-55dc06429a97", 1, <item:modular_machinery_reborn:energyoutputhatch_tiny>, [
	[<item:minecraft:repeater>, <tag:item:c:storage_blocks/redstone>, <item:minecraft:repeater>], 
	[<item:minecraft:redstone>, <item:modular_machinery_reborn:casing_plain>, <item:minecraft:redstone>], 
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("719b612c-1677-45a4-94bc-95ec28978d01", 1, <item:modular_machinery_reborn:energyoutputhatch_small>, [
	[<item:minecraft:repeater>, <tag:item:c:storage_blocks/redstone>, <item:minecraft:repeater>], 
	[<item:minecraft:redstone>, <item:modular_machinery_reborn:energyoutputhatch_tiny>, <item:minecraft:redstone>], 
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("04d2eeb1-bd40-4713-a131-652bad01e122", 1, <item:modular_machinery_reborn:energyoutputhatch_normal>, [
	[<item:minecraft:repeater>, <tag:item:c:storage_blocks/redstone>, <item:minecraft:repeater>], 
	[<item:minecraft:redstone>, <item:modular_machinery_reborn:energyoutputhatch_small>, <item:minecraft:redstone>], 
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]
]);

DissolutionChamber.addRecipe(<item:modular_machinery_reborn:controller>.withJsonComponent(<componenttype:modular_machinery_reborn:machine>, "mind:die_casting_machine"),[
    <item:integrateddynamics:variable>,<item:immersiveengineering:sheetmetal_iron>,<item:integrateddynamics:variable>,
    <item:integrateddynamics:variable_transformer_input>,<item:integrateddynamics:variable_transformer_output>,
    <item:integrateddynamics:variable>,<item:immersiveengineering:sheetmetal_iron>,<item:integrateddynamics:variable>
],400,<fluid:mind:industrial_lubricants> * 2000);

<recipetype:extendedcrafting:table>.addShaped("596cb57f-1524-4950-8a10-0c0e03d6976d", 3, <item:modular_machinery_reborn:controller>.withJsonComponent(<componenttype:modular_machinery_reborn:machine>, "mind:flux_accelerator"), [
	[<item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mind:space_ice>, <item:mind:space_ice>, <item:mind:space_ice>, <item:mind:space_ice>, <item:mind:space_ice>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mind:space_ice>, <item:draconicevolution:draconium_core>, <item:draconicevolution:draconium_nugget>, <item:draconicevolution:draconium_core>, <item:mind:space_ice>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mind:space_ice>, <item:draconicevolution:draconium_nugget>, <item:modular_machinery_reborn:casing_plain>, <item:draconicevolution:draconium_nugget>, <item:mind:space_ice>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mind:space_ice>, <item:draconicevolution:draconium_core>, <item:draconicevolution:draconium_nugget>, <item:draconicevolution:draconium_core>, <item:mind:space_ice>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mind:space_ice>, <item:mind:space_ice>, <item:mind:space_ice>, <item:mind:space_ice>, <item:mind:space_ice>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>]
]);

<recipetype:extendedcrafting:table>.addShaped("cdb71990-fe5c-4f74-bae1-c542dd7a80cc", 1, <item:modular_machinery_reborn:inputbus_reinforced>, [
	[<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:inputbus_normal>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:modularium>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:modularium>]
]);

<recipetype:extendedcrafting:table>.addShaped("a544beba-f0d3-41af-a0bc-ea7ec7c038fa", 1, <item:modular_machinery_reborn:inputbus_big>, [
	[<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:inputbus_reinforced>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:modularium>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:modularium>]
]);

<recipetype:extendedcrafting:table>.addShaped("1a642f1c-657b-40c3-8d62-a87a49e0a588", 1, <item:modular_machinery_reborn:inputbus_huge>, [
	[<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:inputbus_big>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:modularium>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:modularium>]
]);

<recipetype:extendedcrafting:table>.addShaped("5a76dfe1-e862-4dab-9505-d785859313f3", 1, <item:modular_machinery_reborn:inputbus_ludicrous>, [
	[<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:inputbus_huge>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:minecraft:chest>, <item:modular_machinery_reborn:casing_reinforced>, <item:minecraft:chest>]
]);

<recipetype:extendedcrafting:table>.addShaped("7ba6d491-9a11-4014-ace4-7309a030d377", 1, <item:modular_machinery_reborn:outputbus_reinforced>, [
	[<item:minecraft:chest>, <item:modular_machinery_reborn:casing_reinforced>, <item:minecraft:chest>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:outputbus_normal>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("86818ed5-bd53-4d96-90c3-3b115ea61c7e", 1, <item:modular_machinery_reborn:outputbus_big>, [
	[<item:minecraft:chest>, <item:modular_machinery_reborn:casing_reinforced>, <item:minecraft:chest>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:outputbus_reinforced>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("3c52c788-46b3-4747-8512-13a3fcd49115", 1, <item:modular_machinery_reborn:outputbus_huge>, [
	[<item:minecraft:chest>, <item:modular_machinery_reborn:casing_reinforced>, <item:minecraft:chest>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:outputbus_big>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("8e9ca7ea-9edd-448b-8d46-2dfe76354c48", 1, <item:modular_machinery_reborn:outputbus_ludicrous>, [
	[<item:minecraft:chest>, <item:modular_machinery_reborn:casing_reinforced>, <item:minecraft:chest>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:outputbus_huge>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:minecraft:air>, <item:minecraft:hopper>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("ea3d03ad-a197-4bc6-a8af-8d42b608a40f", 1, <item:modular_machinery_reborn:energyoutputhatch_reinforced>, [
	[<item:modular_machinery_reborn:casing_reinforced>, <item:minecraft:redstone_block>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:minecraft:redstone>, <item:modular_machinery_reborn:energyoutputhatch_normal>, <item:minecraft:redstone>], 
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("53e69744-ba4e-4c55-a32b-4c3f447f209e", 1, <item:modular_machinery_reborn:energyoutputhatch_big>, [
	[<item:minecraft:redstone_block>, <item:modular_machinery_reborn:casing_reinforced>, <item:minecraft:redstone_block>], 
	[<item:mekanism:basic_energy_cube>, <item:modular_machinery_reborn:energyoutputhatch_reinforced>, <item:mekanism:basic_energy_cube>], 
	[<item:minecraft:air>, <item:mekanism:basic_energy_cube>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("245b8512-f6d5-4cfc-93bb-5316354bd45d", 1, <item:modular_machinery_reborn:energyoutputhatch_huge>, [
	[<item:modular_machinery_reborn:casing_reinforced>, <item:minecraft:redstone_block>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:mekanism:advanced_energy_cube>, <item:modular_machinery_reborn:energyoutputhatch_big>, <item:mekanism:advanced_energy_cube>], 
	[<item:minecraft:air>, <item:mekanism:advanced_energy_cube>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("2e3d09f6-791c-47a7-806f-1931e3f43195", 1, <item:modular_machinery_reborn:energyoutputhatch_ludicrous>, [
	[<item:modular_machinery_reborn:casing_reinforced>, <item:minecraft:redstone_block>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:mekanism:elite_energy_cube>, <item:modular_machinery_reborn:energyoutputhatch_huge>, <item:mekanism:elite_energy_cube>], 
	[<item:minecraft:air>, <item:mekanism:elite_energy_cube>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("f1a47df2-18b1-4eb1-9527-5ad416f7457d", 1, <item:modular_machinery_reborn:energyoutputhatch_ultimate>, [
	[<item:modular_machinery_reborn:casing_reinforced>, <item:minecraft:redstone_block>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:mekanism:ultimate_energy_cube>, <item:modular_machinery_reborn:energyoutputhatch_ludicrous>, <item:mekanism:ultimate_energy_cube>], 
	[<item:minecraft:air>, <item:mekanism:ultimate_energy_cube>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("7fe7924f-4626-4f31-9ade-0fe8ae3d8213", 1, <item:modular_machinery_reborn:energyinputhatch_reinforced>, [
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>], 
	[<item:minecraft:redstone_block>, <item:modular_machinery_reborn:energyinputhatch_normal>, <item:minecraft:redstone_block>], 
	[<item:minecraft:repeater>, <item:minecraft:redstone_block>, <item:minecraft:repeater>]
]);

<recipetype:extendedcrafting:table>.addShaped("fa4f2899-2a2e-4a00-b7f0-bd2aa50e3872", 1, <item:modular_machinery_reborn:energyinputhatch_big>, [
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>], 
	[<item:mekanism:basic_energy_cube>, <item:modular_machinery_reborn:energyinputhatch_reinforced>, <item:mekanism:basic_energy_cube>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:mekanism:basic_energy_cube>, <item:modular_machinery_reborn:casing_reinforced>]
]);

<recipetype:extendedcrafting:table>.addShaped("6725eda9-919f-4408-a27b-fc614dc6376a", 1, <item:modular_machinery_reborn:energyinputhatch_huge>, [
	[<item:minecraft:air>, <item:minecraft:redstone_block>, <item:minecraft:air>], 
	[<item:mekanism:advanced_energy_cube>, <item:modular_machinery_reborn:energyinputhatch_big>, <item:mekanism:advanced_energy_cube>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:mekanism:advanced_energy_cube>, <item:modular_machinery_reborn:casing_reinforced>]
]);

<recipetype:extendedcrafting:table>.addShaped("b92bcbe0-20f1-4b0f-9ca4-62bb8fe168c3", 1, <item:modular_machinery_reborn:energyinputhatch_ludicrous>, [
	[<item:minecraft:air>, <item:minecraft:redstone_block>, <item:minecraft:air>], 
	[<item:mekanism:elite_energy_cube>, <item:modular_machinery_reborn:energyinputhatch_huge>, <item:mekanism:elite_energy_cube>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:mekanism:elite_energy_cube>, <item:modular_machinery_reborn:casing_reinforced>]
]);

<recipetype:extendedcrafting:table>.addShaped("2066e1ce-262f-4049-a745-bb2288c6acd2", 1, <item:modular_machinery_reborn:energyinputhatch_ultimate>, [
	[<item:minecraft:air>, <item:minecraft:redstone_block>, <item:minecraft:air>], 
	[<item:mekanism:ultimate_energy_cube>, <item:modular_machinery_reborn:energyinputhatch_ludicrous>, <item:mekanism:ultimate_energy_cube>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:mekanism:ultimate_energy_cube>, <item:modular_machinery_reborn:casing_reinforced>]
]);

<recipetype:extendedcrafting:table>.addShaped("9f588a19-f402-43fc-a359-9c07874015d8", 2, <item:modular_machinery_reborn:parallel_hatch_basic>, [
	[<item:modular_machinery_reborn:casing_plain>, <item:modular_machinery_reborn:casing_plain>, <item:modular_machinery_reborn:casing_plain>, <item:modular_machinery_reborn:casing_plain>, <item:modular_machinery_reborn:casing_plain>], 
	[<item:modular_machinery_reborn:casing_plain>, <item:extendedae:concurrent_processor>, <item:extendedterminal:compat_processor>, <item:ae2:calculation_processor>, <item:modular_machinery_reborn:casing_plain>], 
	[<item:modular_machinery_reborn:casing_plain>, <item:ae2:crafting_accelerator>, <item:advanced_ae:quantum_processor>, <item:ae2:crafting_accelerator>, <item:modular_machinery_reborn:casing_plain>], 
	[<item:modular_machinery_reborn:casing_plain>, <item:ae2:calculation_processor>, <item:extendedterminal:compat_processor>, <item:extendedae:concurrent_processor>, <item:modular_machinery_reborn:casing_plain>], 
	[<item:modular_machinery_reborn:casing_plain>, <item:modular_machinery_reborn:casing_plain>, <item:modular_machinery_reborn:casing_plain>, <item:modular_machinery_reborn:casing_plain>, <item:modular_machinery_reborn:casing_plain>]
]);

<recipetype:extendedcrafting:table>.addShaped("98e29a9e-0915-4215-a3c1-99b401e7460e", 2, <item:modular_machinery_reborn:parallel_hatch_medium>, [
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:extendedae:concurrent_processor>, <item:bigger_ae2:4_core_crafting_accelerator>, <item:advanced_ae:quantum_processor>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:bigger_ae2:4_core_crafting_accelerator>, <item:modular_machinery_reborn:parallel_hatch_basic>, <item:bigger_ae2:4_core_crafting_accelerator>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:extendedterminal:compat_processor>, <item:bigger_ae2:4_core_crafting_accelerator>, <item:ae2:calculation_processor>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>]
]);

<recipetype:extendedcrafting:table>.addShaped("ccdaf28b-3573-41bd-adf9-b2836bc9e458", 2, <item:modular_machinery_reborn:parallel_hatch_advanced>, [
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:ae2:calculation_processor>, <item:ae2:calculation_processor>, <item:ae2:calculation_processor>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:bigger_ae2:16_core_crafting_accelerator>, <item:modular_machinery_reborn:parallel_hatch_medium>, <item:bigger_ae2:16_core_crafting_accelerator>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:extendedae:concurrent_processor>, <item:extendedae:concurrent_processor>, <item:extendedae:concurrent_processor>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>]
]);

<recipetype:extendedcrafting:table>.addShaped("1a10face-d294-4021-a3fb-99ea2f47be33", 2, <item:modular_machinery_reborn:parallel_hatch_ultimate>, [
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:ae2:calculation_processor>, <item:ae2:calculation_processor>, <item:ae2:calculation_processor>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:bigger_ae2:64_core_crafting_accelerator>, <item:modular_machinery_reborn:parallel_hatch_advanced>, <item:bigger_ae2:64_core_crafting_accelerator>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:extendedae:concurrent_processor>, <item:extendedae:concurrent_processor>, <item:extendedae:concurrent_processor>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>]
]);

<recipetype:extendedcrafting:table>.addShaped("f20ed5f3-a271-4301-9bb0-ab0cdfe6e26c", 2, <item:modular_machinery_reborn:parallel_hatch_max>, [
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:extendedterminal:compat_processor>, <item:advanced_ae:quantum_processor>, <item:extendedterminal:compat_processor>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:bigger_ae2:256_core_crafting_accelerator>, <item:modular_machinery_reborn:parallel_hatch_ultimate>, <item:bigger_ae2:256_core_crafting_accelerator>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:extendedterminal:compat_processor>, <item:advanced_ae:quantum_processor>, <item:extendedterminal:compat_processor>, <item:modular_machinery_reborn:casing_reinforced>], 
	[<item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>, <item:modular_machinery_reborn:casing_reinforced>]
]);