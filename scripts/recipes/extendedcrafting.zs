import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:extendedcrafting:black_iron_ingot>,
    <item:extendedcrafting:basic_table>,
    <item:extendedcrafting:elite_table>,
    <item:extendedcrafting:ender_crafter>,
    <item:extendedcrafting:crafting_core>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:extendedcrafting:ender_crafter>: [
        [<item:minecraft:ender_eye>,<item:minecraft:ender_eye>,<item:minecraft:ender_eye>],
        [<item:extendedcrafting:ender_ingot>,<item:industrialforegoing:machine_frame_supreme>,<item:extendedcrafting:ender_ingot>],
        [<item:extendedcrafting:ender_ingot>,<item:extendedcrafting:ender_ingot>,<item:extendedcrafting:ender_ingot>]
    ],
    <item:extendedcrafting:crafting_core>: [
        [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:elite_catalyst>, <item:extendedcrafting:black_iron_ingot>], 
        [<item:extendedcrafting:elite_component>, <item:extendedcrafting:frame>, <item:extendedcrafting:elite_component>], 
        [<item:extendedcrafting:black_iron_ingot>, <item:enderio:frank_n_zombie>, <item:extendedcrafting:black_iron_ingot>]
    ]
};

for item in removeItem {
    craftingTable.remove(item);
}

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}

LycheeRecipeManager.addRecipe(<recipetype:lychee:item_inside>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:iron_ingot>)
    .blockIn(<blockstate:mind:black_fluid:level=0>)
    .insideBlockTime(10)
    .post([
        LycheePosts.dropItem(<item:extendedcrafting:black_iron_ingot>),
        LycheePosts.placeBlock(<block:minecraft:air>).condition(LycheeConditions.chance(0.5))
    ])
);

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:extendedcrafting:basic_catalyst>)
    .blockIn(<block:immersiveengineering:craftingtable>)
    .post(LycheePosts.placeBlock(<block:extendedcrafting:basic_table>))
);

<recipetype:extendedcrafting:table>.remove(<item:extendedcrafting:crystaltine_ingot>);

ArcFurnace.addRecipe([<item:extendedcrafting:crystaltine_ingot>],<item:justdirethings:ferricore_ingot>,[
    <item:minecraft:nether_star>,<item:mind:annihilation_dye>,<item:actuallyadditions:empowered_diamatine_crystal>,<item:appflux:insulating_resin>
],200000,240);

<recipetype:mekanism:metallurgic_infusing>.addRecipe("elite_table", <item:extendedcrafting:frame>, <chemical:crafttweaker:crystaltine> * 300, <item:extendedcrafting:elite_table>, false);

craftingTable.removeByName("extendedcrafting:ender_ingot");
ArcFurnace.addRecipe([<item:extendedcrafting:ender_ingot>],<item:minecraft:ender_pearl>,[
    <item:reliquary:nebulous_heart>,<item:enderio:vibrant_alloy_ingot>
],20000,120);

<recipetype:extendedcrafting:table>.addShaped("b10ee6f5-cfff-4cad-ae33-ecd251cb8fe4", 4, <item:extendedcrafting:the_ultimate_ingot>, [
	[<item:mekanism:ingot_tin>, <item:mekanism:ingot_osmium>, <item:mekanism:ingot_refined_glowstone>, <item:mekanism:ingot_refined_obsidian>, <item:mekanism:ingot_bronze>, <item:megacells:sky_osmium_ingot>, <item:immersiveengineering:ingot_silver>, <item:immersiveengineering:ingot_nickel>, <item:immersiveengineering:ingot_uranium>], 
	[<item:immersiveengineering:ingot_constantan>, <item:immersiveengineering:ingot_electrum>, <item:immersiveengineering:ingot_steel>, <item:megacells:sky_steel_ingot>, <item:megacells:sky_bronze_ingot>, <item:industrialforegoing:pink_slime_ingot>, <item:extendedae:entro_ingot>, <item:extendedcrafting:crystaltine_ingot>, <item:extendedcrafting:enhanced_redstone_ingot>], 
	[<item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:enhanced_ender_ingot>, <item:immersiveengineering:ingot_hop_graphite>, <item:immersiveengineering:ingot_aluminum>, <item:immersiveengineering:ingot_lead>, <item:extendedcrafting:ender_ingot>, <item:create:andesite_alloy>, <item:appflux:harden_insulating_resin>], 
	[<item:minecraft:netherite_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:iron_ingot>, <item:mysticalagradditions:insanium_ingot>, <item:mysticalagriculture:prosperity_ingot>, <item:mysticalagriculture:inferium_ingot>, <item:mysticalagriculture:prudentium_ingot>, <item:mysticalagriculture:tertium_ingot>], 
	[<item:mysticalagriculture:imperium_ingot>, <item:mysticalagriculture:supremium_ingot>, <item:psi:ebony_psimetal>, <item:psi:psimetal>, <item:avaritia:neutron_ingot>, <item:justdirethings:eclipsealloy_ingot>, <item:justdirethings:blazegold_ingot>, <item:justdirethings:ferricore_ingot>, <item:mekanism_extras:ingot_naquadah>], 
	[<item:enderio:end_steel_ingot>, <item:enderio:soularium_ingot>, <item:stellaris:neptunium_ingot>, <item:stellaris:plutonium_ingot>, <item:enderio:copper_alloy_ingot>, <item:enderio:energetic_alloy_ingot>, <item:enderio:vibrant_alloy_ingot>, <item:enderio:redstone_alloy_ingot>, <item:enderio:conductive_alloy_ingot>], 
	[<item:enderio:pulsating_alloy_ingot>, <item:enderio:dark_steel_ingot>, <item:stellaris:desh_ingot>, <item:stellaris:heavy_metal_ingot>, <item:pneumaticcraft:ingot_iron_compressed>, <item:mysticalextendedtier:ouranium_ingot>, <item:mysticalextendedtier:tornium_ingot>, <item:mysticalextendedtier:lightium_ingot>, <item:mysticalextendedtier:ornium_ingot>], 
	[<item:mysticalagriculture:soulium_ingot>, <item:mysticalagriculture:awakened_supremium_ingot>, <item:draconicevolution:awakened_draconium_ingot>, <item:draconicevolution:draconium_ingot>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);