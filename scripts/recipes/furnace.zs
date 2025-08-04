import crafttweaker.api.item.IItemStack;

val items as IItemStack[] = [
    <item:immersiveengineering:ingot_uranium>,
    <item:moremekanismprocessing:azure_silver_ingot>,
    <item:minecraft:copper_ingot>,
    <item:stellaris:plutonium_ingot>,
    <item:stellaris:heavy_metal_ingot>,
    <item:immersiveengineering:ingot_nickel>,
    <item:create:zinc_ingot>,
    <item:moremekanismprocessing:platinum_ingot>,
    <item:immersiveengineering:ingot_silver>,
    <item:moremekanismprocessing:lithium_ingot>,
    <item:immersiveengineering:ingot_constantan>,
    <item:moremekanismprocessing:cobalt_ingot>,
    <item:stellaris:desh_ingot>,
    <item:mekanism_extras:ingot_naquadah>,
    <item:immersiveengineering:ingot_steel>,
    <item:moremekanismprocessing:calorite_ingot>,
    <item:mekanism:ingot_osmium>,
    <item:moremekanismprocessing:tungsten_ingot>,
    <item:immersiveengineering:ingot_electrum>,
    <item:mekanism:ingot_bronze>,
    <item:immersiveengineering:ingot_aluminum>,
    <item:minecraft:gold_ingot>,
    <item:immersiveengineering:ingot_lead>,
    <item:draconicevolution:draconium_ingot>,
    <item:mekanism:ingot_tin>,
    <item:justdirethings:blazegold_ingot>,
    <item:moremekanismprocessing:iridium_ingot>,
    <item:stellaris:neptunium_ingot>,
    <item:minecraft:iron_ingot>,
    <item:appflux:harden_insulating_resin>,
    <item:moremekanismprocessing:bismuth_ingot>,
    <item:justdirethings:eclipsealloy_ingot>,
    <item:moremekanismprocessing:ostrum_ingot>,
    <item:moremekanismprocessing:crimson_iron_ingot>,
    <item:moremekanismprocessing:titanium_ingot>,
    <item:stellaris:corronium_ingot>,
    <item:minecraft:netherite_ingot>
];

for item in items {
    furnace.remove(item);
}