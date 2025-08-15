import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:biomeswevegone:aspen_crafting_table>,
    <item:biomeswevegone:baobab_crafting_table>,
    <item:biomeswevegone:blue_enchanted_crafting_table>,
    <item:biomeswevegone:cika_crafting_table>,
    <item:biomeswevegone:cypress_crafting_table>,
    <item:biomeswevegone:ebony_crafting_table>,
    <item:biomeswevegone:fir_crafting_table>,
    <item:biomeswevegone:florus_crafting_table>,
    <item:biomeswevegone:green_enchanted_crafting_table>,
    <item:biomeswevegone:holly_crafting_table>,
    <item:biomeswevegone:ironwood_crafting_table>,
    <item:biomeswevegone:jacaranda_crafting_table>,
    <item:biomeswevegone:mahogany_crafting_table>,
    <item:biomeswevegone:maple_crafting_table>,
    <item:biomeswevegone:palm_crafting_table>,
    <item:biomeswevegone:pine_crafting_table>,
    <item:biomeswevegone:rainbow_eucalyptus_crafting_table>,
    <item:biomeswevegone:redwood_crafting_table>,
    <item:biomeswevegone:sakura_crafting_table>,
    <item:biomeswevegone:skyris_crafting_table>,
    <item:biomeswevegone:spirit_crafting_table>,
    <item:biomeswevegone:white_mangrove_crafting_table>,
    <item:biomeswevegone:willow_crafting_table>,
    <item:biomeswevegone:zelkova_crafting_table>
];

for item in removeItem {
    craftingTable.remove(item);
}

YTechHammering.addRecipe(<item:biomesoplenty:rose_quartz_block>, <item:ytech:iron_hammer>,<item:biomesoplenty:rose_quartz_chunk> * 4,30);