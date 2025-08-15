import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:pneumaticcraft:pressure_chamber_wall>,
    <item:pneumaticcraft:refinery_output>,
    <item:pneumaticcraft:refinery>,
    <item:pneumaticcraft:uv_light_box>,
    <item:pneumaticcraft:etching_tank>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:pneumaticcraft:pressure_chamber_wall> * 16:[
        [<tag:item:pneumaticcraft:reinforced_stone_bricks>,<tag:item:pneumaticcraft:reinforced_stone_bricks>,<tag:item:pneumaticcraft:reinforced_stone_bricks>],
        [<tag:item:pneumaticcraft:reinforced_stone_bricks>,<item:industrialforegoing:machine_frame_simple>,<tag:item:pneumaticcraft:reinforced_stone_bricks>],
        [<tag:item:pneumaticcraft:reinforced_stone_bricks>,<tag:item:pneumaticcraft:reinforced_stone_bricks>,<tag:item:pneumaticcraft:reinforced_stone_bricks>]
    ],
    <item:pneumaticcraft:refinery_output>: [
        [<item:pneumaticcraft:reinforced_stone_slab>,<item:pneumaticcraft:reinforced_stone_slab>,<item:pneumaticcraft:reinforced_stone_slab>],
        [<item:pneumaticcraft:pressure_chamber_glass>,<item:minecraft:diamond>,<item:pneumaticcraft:pressure_chamber_glass>],
        [<item:pneumaticcraft:reinforced_stone_slab>,<item:pneumaticcraft:reinforced_stone_slab>,<item:pneumaticcraft:reinforced_stone_slab>]
    ]
};

for item in removeItem {
    craftingTable.remove(item);
}

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}

PressureChamber.addRecipe([<item:pneumaticcraft:refinery>],[
    <item:pneumaticcraft:reinforced_stone_slab> * 6,<item:minecraft:redstone> * 6,<item:pneumaticcraft:small_tank> * 2
],2.1);

<recipetype:extendedcrafting:table>.addShaped("64f3e6b4-6ed1-4a28-86c7-6a3c0b1b360a", 2, <item:pneumaticcraft:uv_light_box>, [
	[<item:mind:uv_lamp>, <item:immersiveengineering:slag_glass>, <item:mind:uv_lamp>, <item:immersiveengineering:slag_glass>, <item:pneumaticcraft:ingot_iron_compressed>], 
	[<item:immersiveengineering:slag_glass>, <item:mind:uv_lamp>, <item:immersiveengineering:slag_glass>, <item:pneumaticcraft:pressure_tube>, <item:pneumaticcraft:ingot_iron_compressed>], 
	[<item:mind:uv_lamp>, <item:immersiveengineering:slag_glass>, <item:pneumaticcraft:pcb_blueprint>, <item:pneumaticcraft:pressure_tube>, <item:pneumaticcraft:ingot_iron_compressed>], 
	[<item:immersiveengineering:slag_glass>, <item:pneumaticcraft:pressure_tube>, <item:pneumaticcraft:pressure_tube>, <item:pneumaticcraft:pressure_tube>, <item:pneumaticcraft:ingot_iron_compressed>], 
	[<item:pneumaticcraft:ingot_iron_compressed>, <item:pneumaticcraft:ingot_iron_compressed>, <item:pneumaticcraft:ingot_iron_compressed>, <item:pneumaticcraft:ingot_iron_compressed>, <item:pneumaticcraft:ingot_iron_compressed>]
]);

<recipetype:extendedcrafting:table>.addShaped("ebfe611a-4520-4ca7-a8cf-4031c1730ade", 2, <item:pneumaticcraft:etching_tank>, [
	[<item:enderio:reinforced_obsidian_block>, <item:minecraft:glass_pane>, <item:minecraft:glass_pane>, <item:minecraft:glass_pane>, <item:enderio:reinforced_obsidian_block>], 
	[<item:pneumaticcraft:reinforced_brick_wall>, <item:naturesaura:infused_stone>, <item:pneumaticcraft:pcb_blueprint>, <item:naturesaura:infused_stone>, <item:pneumaticcraft:reinforced_brick_wall>], 
	[<item:pneumaticcraft:reinforced_brick_wall>, <item:pneumaticcraft:small_tank>, <item:mekanism:steel_casing>, <item:pneumaticcraft:small_tank>, <item:pneumaticcraft:reinforced_brick_wall>], 
	[<item:pneumaticcraft:reinforced_brick_wall>, <item:naturesaura:infused_stone>, <item:pneumaticcraft:pcb_blueprint>, <item:naturesaura:infused_stone>, <item:pneumaticcraft:reinforced_brick_wall>], 
	[<item:pneumaticcraft:reinforced_brick_slab>, <item:pneumaticcraft:reinforced_brick_slab>, <item:pneumaticcraft:reinforced_brick_slab>, <item:pneumaticcraft:reinforced_brick_slab>, <item:pneumaticcraft:reinforced_brick_slab>]
]);