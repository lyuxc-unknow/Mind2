import crafttweaker.api.item.IItemStack;

val removeItem as IItemStack[] = [
    <item:torchmaster:megatorch>
];

for item in removeItem {
    craftingTable.remove(item);
}


Compressor.addRecipe(<item:torchmaster:megatorch>,<item:minecraft:torch>,1024,<item:extendedcrafting:advanced_catalyst>,100000,1000);