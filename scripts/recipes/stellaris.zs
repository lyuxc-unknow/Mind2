
craftingTable.remove(<item:stellaris:rocket_launch_pad>);
<recipetype:extendedcrafting:table>.addShaped("50cf3756-cc76-4eeb-aab1-0a12c7234cdb", 3, <item:stellaris:rocket_launch_pad> * 3, [
	[<item:minecraft:air>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:minecraft:air>], 
	[<item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>], 
	[<item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>], 
	[<item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>, <item:enderio:dark_steel_ingot>]
]);

craftingTable.remove(<item:stellaris:rocket_station>);
<recipetype:extendedcrafting:table>.addShaped("1ae27ae3-2e95-467a-ad63-d97881c972b4", 3, <item:stellaris:rocket_station>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:psi:ebony_psimetal>, <item:stellaris:heavy_metal_ingot>, <item:psi:ebony_psimetal>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:psi:ebony_psimetal>, <item:stellaris:heavy_metal_ingot>, <item:actuallyadditions:empowered_palis_crystal>, <item:stellaris:heavy_metal_ingot>, <item:psi:ebony_psimetal>, <item:minecraft:air>], 
	[<item:psi:ebony_psimetal>, <item:stellaris:heavy_metal_ingot>, <item:actuallyadditions:empowered_palis_crystal>, <item:actuallyadditions:empowered_palis_crystal>, <item:actuallyadditions:empowered_palis_crystal>, <item:stellaris:heavy_metal_ingot>, <item:psi:ebony_psimetal>], 
	[<item:stellaris:heavy_metal_ingot>, <item:actuallyadditions:empowered_palis_crystal>, <item:mekanism:elite_control_circuit>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:elite_control_circuit>, <item:actuallyadditions:empowered_palis_crystal>, <item:stellaris:heavy_metal_ingot>], 
	[<item:stellaris:iron_plating_block>, <item:actuallyadditions:empowered_palis_crystal>, <item:pneumaticcraft:pneumatic_cylinder>, <item:integrateddynamics:part_display_panel>, <item:pneumaticcraft:pneumatic_cylinder>, <item:actuallyadditions:empowered_palis_crystal>, <item:stellaris:iron_plating_block>], 
	[<item:stellaris:iron_plating_block>, <item:actuallyadditions:empowered_palis_crystal>, <item:pneumaticcraft:pneumatic_cylinder>, <item:pneumaticcraft:pneumatic_cylinder>, <item:pneumaticcraft:pneumatic_cylinder>, <item:actuallyadditions:empowered_palis_crystal>, <item:stellaris:iron_plating_block>], 
	[<item:stellaris:iron_plating_block>, <item:stellaris:iron_plating_block>, <item:stellaris:iron_plating_block>, <item:stellaris:iron_plating_block>, <item:stellaris:iron_plating_block>, <item:stellaris:iron_plating_block>, <item:stellaris:iron_plating_block>]
]);

furnace.remove(<item:stellaris:ice_shard>);
blastFurnace.remove(<item:stellaris:ice_shard>);
AlloySmelter.removeByName("enderio:smelting/stellaris/misc/ice_shard_from_mars_ice_shard_ore_smelting");
AlloySmelter.removeByName("enderio:smelting/stellaris/misc/ice_shard_from_moon_ice_shard_ore_smelting");