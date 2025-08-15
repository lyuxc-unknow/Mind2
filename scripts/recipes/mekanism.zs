import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:mekanism:steel_casing>,
	<item:mekanism:metallurgic_infuser>,
	<item:mekanism:antiprotonic_nucleosynthesizer>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
	<item:mekanism:antiprotonic_nucleosynthesizer>: [
		[<item:mekanism:alloy_atomic>, <tag:item:c:circuits/ultimate>, <item:mekanism:alloy_atomic>], 
		[<tag:item:c:pellets/antimatter>, <item:industrialforegoing:machine_frame_supreme>, <tag:item:c:pellets/antimatter>], 
		[<item:mekanism:alloy_atomic>, <tag:item:c:circuits/ultimate>, <item:mekanism:alloy_atomic>]
	]
};

for item in removeItem {
    craftingTable.remove(item);
}

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}

PressureChamber.addRecipe([<item:mekanism:steel_casing>],[
    <item:enderio:dark_steel_ingot> * 4, <item:minecraft:glass> * 4, <item:mekanism:ingot_osmium> * 4, <item:industrialforegoing:machine_frame_simple>
],-0.8);

<recipetype:extendedcrafting:table>.addShaped("c2197337-9c1f-4dd4-b78d-4abe421c07d6", 2, <item:mekanism:metallurgic_infuser>, [
	[<item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>], 
	[<item:enderio:dark_steel_ingot>, <item:pneumaticcraft:printed_circuit_board>, <item:megacells:sky_osmium_ingot>, <item:pneumaticcraft:printed_circuit_board>, <item:enderio:dark_steel_ingot>], 
	[<item:enderio:dark_steel_ingot>, <item:megacells:sky_osmium_ingot>, <item:industrialforegoing:machine_frame_advanced>, <item:megacells:sky_osmium_ingot>, <item:enderio:dark_steel_ingot>], 
	[<item:enderio:dark_steel_ingot>, <item:pneumaticcraft:printed_circuit_board>, <item:megacells:sky_osmium_ingot>, <item:pneumaticcraft:printed_circuit_board>, <item:enderio:dark_steel_ingot>], 
	[<item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:immersiveengineering:logic_circuit>.withJsonComponent(<componenttype:immersiveengineering:logic_instruction>, {inputs: ["R0", "R0"], output: "R1", operator: "XNOR"}), <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>]
]);

<recipetype:mekanism:metallurgic_infusing>.removeByName("mekanism:control_circuit/basic");
<recipetype:mekanism:metallurgic_infusing>.addRecipe("mekanism_basic_control_circuit",<item:pneumaticcraft:unassembled_pcb>,<chemical:mekanism:redstone> * 90,<item:mekanism:basic_control_circuit>,false);

<recipetype:mekanism:metallurgic_infusing>.removeByName("mekanism:metallurgic_infusing/alloy/atomic");
<recipetype:mekanism:metallurgic_infusing>.addRecipe("mekanism_atomic_alloy",<item:mekanism:alloy_reinforced>,<chemical:crafttweaker:draconium> * 90,<item:mekanism:alloy_atomic>,false);

<recipetype:mekanism:metallurgic_infusing>.removeByName("mekanism:metallurgic_infusing/alloy/reinforced");
<recipetype:mekanism:metallurgic_infusing>.addRecipe("metallurgic_infusing/alloy/reinforced", <tag:item:mekanism:alloys/infused>, <chemical:crafttweaker:crystaltine> * 30, <item:mekanism:alloy_reinforced>, false);