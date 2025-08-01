import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:industrialforegoing:machine_frame_pity>,
    <item:industrialforegoing:animal_baby_separator>,
    <item:industrialforegoing:fluid_collector>,
    <item:industrialforegoing:mob_slaughter_factory>,
    <item:industrialforegoing:dye_mixer>,
    <item:industrialforegoing:sewer>,
    <item:industrialforegoing:dissolution_chamber>,
    <item:industrialforegoing:block_placer>,
    <item:industrialforegoing:fluid_transporter_type>,
    <item:industrialforegoing:animal_feeder>,
    <item:industrialforegoing:resourceful_furnace>,
    <item:industrialforegoing:sludge_refiner>,
    <item:industrialforegoing:water_condensator>,
    <item:industrialforegoing:world_transporter_type>,
    <item:industrialforegoing:spores_recreator>,
    <item:industrialforegoing:sewage_composter>,
    <item:industrialforegoing:block_breaker>,
    <item:industrialforegoing:item_transporter_type>,
    <item:industrialforegoing:plant_gatherer>,
    <item:industrialforegoing:fluid_placer>,
    <item:industrialforegoing:animal_rancher>,
    <item:industrialforegoing:bioreactor>,
    <item:industrialforegoing:biofuel_generator>,
    <item:industrialforegoing:plant_sower>,
    <item:industrialforegoing:mob_detector>,
    <item:industrialforegoing:mycelial_pink>,
    <item:industrialforegoing:fermentation_station>,
    <item:industrialforegoing:mycelial_frosty>,
    <item:industrialforegoing:laser_drill>,
    <item:industrialforegoing:marine_fisher>,
    <item:industrialforegoing:mycelial_culinary>,
    <item:industrialforegoing:plant_fertilizer>,
    <item:industrialforegoing:mycelial_furnace>,
    <item:industrialforegoing:simulated_hydroponic_bed>,
    <item:industrialforegoing:hydroponic_bed>,
    <item:industrialforegoing:iron_gear>,
    <item:industrialforegoing:gold_gear>,
    <item:industrialforegoing:diamond_gear>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:industrialforegoing:machine_frame_pity>: [
        [<tag:item:minecraft:logs>,<item:enderio:dark_steel_ingot>,<tag:item:minecraft:logs>],
        [<item:enderio:dark_steel_ingot>,<item:actuallyadditions:wood_casing>,<item:enderio:dark_steel_ingot>],
        [<tag:item:minecraft:logs>,<item:enderio:dark_steel_ingot>,<tag:item:minecraft:logs>]
    ],
    <item:industrialforegoing:animal_baby_separator>: [
        [<tag:item:c:plastics>, <item:minecraft:golden_carrot>, <tag:item:c:plastics>], 
        [<item:minecraft:wheat>, <item:actuallyadditions:iron_casing>, <item:minecraft:wheat>], 
        [<tag:item:c:dyes/purple>, <tag:item:c:gears/gold>, <tag:item:c:dyes/purple>]
    ],
    <item:industrialforegoing:fluid_collector>: [
        [<tag:item:c:plastics>, <item:minecraft:bucket>, <tag:item:c:plastics>], 
        [<item:minecraft:bucket>, <item:actuallyadditions:iron_casing>, <item:minecraft:bucket>], 
        [<tag:item:c:gears/iron>, <item:minecraft:redstone>, <tag:item:c:gears/iron>]
    ],
    <item:industrialforegoing:mob_slaughter_factory>: [
        [<tag:item:c:plastics>, <tag:item:c:gears/gold>, <tag:item:c:plastics>], 
        [<item:minecraft:iron_sword>, <item:actuallyadditions:iron_casing>, <item:minecraft:iron_sword>], 
        [<item:minecraft:iron_axe>, <item:minecraft:redstone>, <item:minecraft:iron_axe>]
    ],
    <item:industrialforegoing:dye_mixer>: [
        [<tag:item:c:plastics>, <tag:item:c:dyes>, <tag:item:c:plastics>], 
        [<tag:item:c:dyes>, <item:actuallyadditions:iron_casing>, <tag:item:c:dyes>], 
        [<tag:item:c:plastics>, <tag:item:c:gears/gold>, <tag:item:c:plastics>]
    ],
    <item:industrialforegoing:sewer>: [
        [<tag:item:c:plastics>, <item:minecraft:bucket>, <tag:item:c:plastics>], 
        [<item:minecraft:brick>, <item:actuallyadditions:iron_casing>, <item:minecraft:brick>], 
        [<item:minecraft:brick>, <tag:item:c:gears/iron>, <item:minecraft:brick>]
    ],
    <item:industrialforegoing:dissolution_chamber>: [
        [<tag:item:c:plastics>, <tag:item:c:chests/wooden>, <tag:item:c:plastics>], 
        [<item:minecraft:bucket>, <item:actuallyadditions:iron_casing>, <item:minecraft:bucket>], 
        [<tag:item:c:ingots/gold>, <tag:item:c:gears/diamond>, <tag:item:c:ingots/gold>]
    ],
    <item:industrialforegoing:block_placer>: [
        [<tag:item:c:plastics>, <item:minecraft:dropper>, <tag:item:c:plastics>], 
        [<item:minecraft:dropper>, <item:actuallyadditions:iron_casing>, <item:minecraft:dropper>], 
        [<tag:item:c:plastics>, <item:minecraft:redstone>, <tag:item:c:plastics>]
    ],
    <item:industrialforegoing:fluid_transporter_type> * 2: [
        [<tag:item:c:dusts/redstone>, <item:minecraft:ender_pearl>, <tag:item:c:dusts/redstone>], 
        [<tag:item:c:gems/lapis>, <item:actuallyadditions:iron_casing>, <tag:item:c:gems/lapis>], 
        [<tag:item:c:dusts/redstone>, <item:minecraft:piston>, <tag:item:c:dusts/redstone>]
    ],
    <item:industrialforegoing:animal_feeder>: [
        [<tag:item:c:plastics>, <item:minecraft:golden_apple>, <tag:item:c:plastics>], 
        [<item:minecraft:golden_carrot>, <item:actuallyadditions:iron_casing>, <item:minecraft:golden_carrot>], 
        [<tag:item:c:dyes/purple>, <tag:item:c:gears/iron>, <tag:item:c:dyes/purple>]
    ],
    <item:industrialforegoing:resourceful_furnace>: [
        [<tag:item:c:plastics>, <item:minecraft:bucket>, <tag:item:c:plastics>], 
        [<item:minecraft:furnace>, <item:actuallyadditions:iron_casing>, <item:minecraft:furnace>], 
        [<tag:item:c:plastics>, <tag:item:c:gears/gold>, <tag:item:c:plastics>]
    ],
    <item:industrialforegoing:sludge_refiner>: [
        [<tag:item:c:plastics>, <item:minecraft:bucket>, <tag:item:c:plastics>], 
        [<item:minecraft:furnace>, <item:actuallyadditions:iron_casing>, <item:minecraft:furnace>], 
        [<tag:item:c:gears/iron>, <tag:item:c:gears/gold>, <tag:item:c:gears/iron>]
    ],
    <item:industrialforegoing:water_condensator>: [
        [<tag:item:c:plastics>, <item:minecraft:water_bucket>, <tag:item:c:plastics>], 
        [<item:minecraft:piston>, <item:actuallyadditions:iron_casing>, <item:minecraft:piston>], 
        [<tag:item:c:gears/iron>, <item:minecraft:redstone>, <tag:item:c:gears/iron>]
    ],
    <item:industrialforegoing:world_transporter_type> * 2: [
        [<tag:item:c:dusts/redstone>, <item:minecraft:ender_pearl>, <tag:item:c:dusts/redstone>], 
        [<item:minecraft:hopper>, <item:actuallyadditions:iron_casing>, <item:minecraft:hopper>], 
        [<tag:item:c:dusts/redstone>, <item:minecraft:dropper>, <tag:item:c:dusts/redstone>]
    ],
    <item:industrialforegoing:spores_recreator>: [
        [<tag:item:c:plastics>, <tag:item:c:gears/iron>, <tag:item:c:plastics>], 
        [<tag:item:c:mushrooms>, <item:actuallyadditions:iron_casing>, <tag:item:c:mushrooms>], 
        [<tag:item:c:plastics>, <tag:item:c:gears/iron>, <tag:item:c:plastics>]
    ],
    <item:industrialforegoing:sewage_composter>: [
        [<tag:item:c:plastics>, <item:minecraft:furnace>, <tag:item:c:plastics>], 
        [<item:minecraft:piston>, <item:actuallyadditions:iron_casing>, <item:minecraft:piston>], 
        [<item:minecraft:brick>, <tag:item:c:gears/iron>, <item:minecraft:brick>]
    ],
    <item:industrialforegoing:block_breaker>: [
        [<tag:item:c:plastics>, <tag:item:c:gears/gold>, <tag:item:c:plastics>], 
        [<item:minecraft:iron_pickaxe>, <item:actuallyadditions:iron_casing>, <item:minecraft:iron_shovel>], 
        [<tag:item:c:gears/iron>, <item:minecraft:redstone>, <tag:item:c:gears/iron>]
    ],
     <item:industrialforegoing:item_transporter_type> * 2: [
        [<tag:item:c:dusts/redstone>, <item:minecraft:ender_pearl>, <tag:item:c:dusts/redstone>], 
        [<tag:item:c:ingots/gold>, <item:actuallyadditions:iron_casing>, <tag:item:c:ingots/gold>], 
        [<tag:item:c:dusts/redstone>, <item:minecraft:piston>, <tag:item:c:dusts/redstone>]
    ],
    <item:industrialforegoing:plant_gatherer>: [
        [<tag:item:c:plastics>, <item:minecraft:iron_hoe>, <tag:item:c:plastics>], 
        [<item:minecraft:iron_axe>, <item:actuallyadditions:iron_casing>, <item:minecraft:iron_axe>], 
        [<tag:item:c:gears/gold>, <item:minecraft:redstone>, <tag:item:c:gears/gold>]
    ],
    <item:industrialforegoing:fluid_placer>: [
        [<tag:item:c:plastics>, <item:minecraft:water_bucket>, <tag:item:c:plastics>], 
        [<item:minecraft:water_bucket>, <item:actuallyadditions:iron_casing>, <item:minecraft:water_bucket>], 
        [<tag:item:c:gears/iron>, <item:minecraft:redstone>, <tag:item:c:gears/iron>]
    ],
    <item:industrialforegoing:animal_rancher>: [
        [<tag:item:c:plastics>, <tag:item:c:plastics>, <tag:item:c:plastics>], 
        [<item:minecraft:shears>, <item:minecraft:bucket>, <item:minecraft:shears>], 
        [<tag:item:c:gears/gold>, <item:actuallyadditions:iron_casing>, <tag:item:c:gears/gold>]
    ],
    <item:industrialforegoing:bioreactor>: [
        [<tag:item:c:plastics>, <tag:item:c:gears/diamond>, <tag:item:c:plastics>], 
        [<tag:item:c:slimeballs>, <item:actuallyadditions:iron_casing>, <tag:item:c:slimeballs>], 
        [<item:minecraft:brick>, <item:minecraft:sugar>, <item:minecraft:brick>]
    ],
    <item:industrialforegoing:biofuel_generator>: [
        [<tag:item:c:plastics>, <item:minecraft:furnace>, <tag:item:c:plastics>], 
        [<item:minecraft:piston>, <item:actuallyadditions:iron_casing>, <item:minecraft:piston>], 
        [<tag:item:c:gears/gold>, <item:minecraft:piston>, <tag:item:c:gears/gold>]
    ],
    <item:industrialforegoing:plant_sower>: [
        [<tag:item:c:plastics>, <item:minecraft:flower_pot>, <tag:item:c:plastics>], 
        [<item:minecraft:piston>, <item:actuallyadditions:iron_casing>, <item:minecraft:piston>], 
        [<tag:item:c:gears/iron>, <item:minecraft:redstone>, <tag:item:c:gears/iron>]
    ],
    <item:industrialforegoing:mycelial_pink>: [
        [<tag:item:c:dyes/pink>, <tag:item:c:dyes/pink>, <tag:item:c:dyes/pink>], 
        [<tag:item:c:dyes/pink>, <item:minecraft:pink_wool>, <tag:item:c:dyes/pink>], 
        [<item:minecraft:redstone>, <item:mekanism:steel_casing>, <item:minecraft:redstone>]
    ],
    <item:industrialforegoing:fermentation_station>: [
        [<tag:item:c:plastics>, <tag:item:minecraft:logs>, <tag:item:c:plastics>], 
        [<tag:item:minecraft:logs>, <tag:item:c:gears/gold>, <tag:item:minecraft:logs>], 
        [<tag:item:c:plastics>, <item:mekanism:steel_casing>, <tag:item:c:plastics>]
    ],
    <item:industrialforegoing:mycelial_frosty>: [
        [<item:minecraft:snowball>, <item:minecraft:snowball>, <item:minecraft:snowball>], 
        [<item:minecraft:snowball>, <item:minecraft:ice>, <item:minecraft:snowball>], 
        [<item:minecraft:redstone>, <item:mekanism:steel_casing>, <item:minecraft:redstone>]
    ],
    <item:industrialforegoing:laser_drill>: [
        [<tag:item:c:plastics>, <tag:item:c:gears/diamond>, <tag:item:c:plastics>], 
        [<item:minecraft:piston>, <item:mekanism:steel_casing>, <item:minecraft:piston>], 
        [<tag:item:c:gears/gold>, <item:minecraft:redstone>, <tag:item:c:gears/gold>]
    ],
    <item:industrialforegoing:marine_fisher>: [
        [<tag:item:c:plastics>, <item:minecraft:fishing_rod>, <tag:item:c:plastics>], 
        [<item:minecraft:bucket>, <item:mekanism:steel_casing>, <item:minecraft:bucket>], 
        [<tag:item:c:gears/iron>, <item:minecraft:redstone>, <tag:item:c:gears/iron>]
    ],
    <item:industrialforegoing:mycelial_culinary>: [
        [<tag:item:c:crops>, <tag:item:c:crops>, <tag:item:c:crops>], 
        [<tag:item:c:crops>, <item:minecraft:cooked_beef>, <tag:item:c:crops>], 
        [<item:minecraft:redstone>, <item:mekanism:steel_casing>, <item:minecraft:redstone>]
    ],
    <item:industrialforegoing:plant_fertilizer>: [
        [<tag:item:c:plastics>, <item:minecraft:glass_bottle>, <tag:item:c:plastics>], 
        [<item:minecraft:leather>, <item:mekanism:steel_casing>, <item:minecraft:leather>], 
        [<tag:item:c:gears/iron>, <item:minecraft:redstone>, <tag:item:c:gears/iron>]
    ],
    <item:industrialforegoing:mycelial_furnace>: [
        [<tag:item:c:storage_blocks/coal>, <tag:item:c:storage_blocks/coal>, <tag:item:c:storage_blocks/coal>], 
        [<tag:item:c:storage_blocks/coal>, <item:minecraft:furnace>, <tag:item:c:storage_blocks/coal>], 
        [<item:minecraft:redstone>, <item:mekanism:steel_casing>, <item:minecraft:redstone>]
    ],
    <item:industrialforegoing:simulated_hydroponic_bed>: [
        [<tag:item:c:plastics>, <item:industrialforegoing:hydroponic_simulation_processor>.withJsonComponent(<componenttype:industrialforegoing:hydroponic_simulation_processor>, {}), <tag:item:c:plastics>], 
        [<item:minecraft:iron_hoe>, <item:industrialforegoing:fertilizer>, <item:minecraft:iron_hoe>], 
        [<tag:item:c:gears/gold>, <item:mekanism:steel_casing>, <tag:item:c:gears/gold>]
    ],
    <item:industrialforegoing:hydroponic_bed>: [
        [<tag:item:c:plastics>, <item:minecraft:dirt>, <tag:item:c:plastics>], 
        [<item:minecraft:iron_hoe>, <item:industrialforegoing:fertilizer>, <item:minecraft:iron_hoe>], 
        [<tag:item:c:gears/gold>, <item:mekanism:steel_casing>, <tag:item:c:gears/gold>]
    ]
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

DissolutionChamber.remove(<item:industrialforegoing:machine_frame_simple>);
DissolutionChamber.addRecipe(<item:industrialforegoing:machine_frame_simple>,[
    <item:mind:inferior_plastic>,<item:actuallyadditions:iron_casing>,<item:mind:inferior_plastic>,
    <tag:item:c:bricks/nether>,<tag:item:c:bricks/nether>,
    <tag:item:c:ingots/iron>,<tag:item:c:gears/gold>,<tag:item:c:ingots/iron>
],300,<fluid:mind:industrial_lubricants> * 750);

furnace.remove(<item:industrialforegoing:plastic>);
CokeOven.addRecipe(<item:mind:inferior_plastic>,<item:industrialforegoing:dryrubber>,1200,100);

PressureChamber.addRecipe([<item:industrialforegoing:plastic>],[
    <item:pneumaticcraft:plastic> * 3
],3.0);

DissolutionChamber.remove(<item:industrialforegoing:machine_frame_advanced>);
<recipetype:pneumaticcraft:assembly_drill>.addRecipe("machine_frame_advanced_part1", <item:mekanism:steel_casing>,<item:mekanism:cardboard_box>.withJsonComponent(<componenttype:mekanism:block_data>, {state: {Name: "mekanism:steel_casing"}}).withJsonComponent(<componenttype:minecraft:custom_name>, "crafting").withJsonComponent(<componenttype:minecraft:unbreakable>, {}));
<recipetype:pneumaticcraft:assembly_laser>.addRecipe("machine_frame_advanced_part2",<item:mekanism:cardboard_box>.withJsonComponent(<componenttype:mekanism:block_data>, {state: {Name: "mekanism:steel_casing"}}).withJsonComponent(<componenttype:minecraft:custom_name>, "crafting").withJsonComponent(<componenttype:minecraft:unbreakable>, {}),<item:industrialforegoing:machine_frame_advanced>);

MetalPress.addRecipe(<item:industrialforegoing:iron_gear>,<item:minecraft:iron_ingot> * 4,10000,<item:immersiveengineering:mold_gear>);

MetalPress.addRecipe(<item:industrialforegoing:diamond_gear>,<item:minecraft:diamond> * 4,10000,<item:immersiveengineering:mold_gear>);