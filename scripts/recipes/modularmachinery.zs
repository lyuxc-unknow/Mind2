import crafttweaker.api.item.IItemStack;

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

for item in removeItem {
    craftingTable.remove(item);
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
	[<item:minecraft:repeater>, <item:chisel_chipped_integration:gem_redstone_circular>, <item:minecraft:repeater>]
]);

<recipetype:extendedcrafting:table>.addShaped("2f381122-feb7-4016-96a5-c49dfd63a30d", 1, <item:modular_machinery_reborn:energyinputhatch_small>, [
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>], 
	[<item:minecraft:redstone>, <item:modular_machinery_reborn:energyinputhatch_tiny>, <item:minecraft:redstone>], 
	[<item:minecraft:repeater>, <item:chisel_chipped_integration:gem_redstone_circular>, <item:minecraft:repeater>]
]);

<recipetype:extendedcrafting:table>.addShaped("450c36cd-da15-41a0-84a4-cec121952e6f", 1, <item:modular_machinery_reborn:energyinputhatch_normal>, [
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>], 
	[<item:minecraft:redstone>, <item:modular_machinery_reborn:energyinputhatch_small>, <item:minecraft:redstone>], 
	[<item:minecraft:repeater>, <item:chisel_chipped_integration:gem_redstone_circular>, <item:minecraft:repeater>]
]);

<recipetype:extendedcrafting:table>.addShaped("41e370b1-237f-4132-a38c-55dc06429a97", 1, <item:modular_machinery_reborn:energyoutputhatch_tiny>, [
	[<item:minecraft:repeater>, <item:chisel_chipped_integration:gem_redstone_slanted>, <item:minecraft:repeater>], 
	[<item:minecraft:redstone>, <item:modular_machinery_reborn:casing_plain>, <item:minecraft:redstone>], 
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("719b612c-1677-45a4-94bc-95ec28978d01", 1, <item:modular_machinery_reborn:energyoutputhatch_small>, [
	[<item:minecraft:repeater>, <item:chisel_chipped_integration:gem_redstone_slanted>, <item:minecraft:repeater>], 
	[<item:minecraft:redstone>, <item:modular_machinery_reborn:energyoutputhatch_tiny>, <item:minecraft:redstone>], 
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]
]);

<recipetype:extendedcrafting:table>.addShaped("04d2eeb1-bd40-4713-a131-652bad01e122", 1, <item:modular_machinery_reborn:energyoutputhatch_normal>, [
	[<item:minecraft:repeater>, <item:chisel_chipped_integration:gem_redstone_slanted>, <item:minecraft:repeater>], 
	[<item:minecraft:redstone>, <item:modular_machinery_reborn:energyoutputhatch_small>, <item:minecraft:redstone>], 
	[<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]
]);

DissolutionChamber.addRecipe(<item:modular_machinery_reborn:controller>.withJsonComponent(<componenttype:modular_machinery_reborn:machine>, "mind:die_casting_machine"),[
    <item:integrateddynamics:variable>,<item:immersiveengineering:sheetmetal_iron>,<item:integrateddynamics:variable>,
    <item:integrateddynamics:variable_transformer_input>,<item:integrateddynamics:variable_transformer_output>,
    <item:integrateddynamics:variable>,<item:immersiveengineering:sheetmetal_iron>,<item:integrateddynamics:variable>
],400,<fluid:mind:industrial_lubricants> * 2000);