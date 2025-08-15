import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

val removeItem as IItemStack[] = [
    <item:pickletweaks:flint_sword>,
    <item:pickletweaks:flint_pickaxe>,
    <item:pickletweaks:flint_shovel>,
    <item:pickletweaks:flint_axe>,
    <item:pickletweaks:flint_hoe>,
    <item:pickletweaks:flint_shears>,
    <item:pickletweaks:flint_paxel>,
    <item:pickletweaks:flint_sickle>,
    <item:pickletweaks:flint_scythe>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:pickletweaks:flint_sword>: [
        [<item:minecraft:flint>], 
        [<item:minecraft:flint>], 
        [<tag:item:c:rods/wooden>,<tag:item:ytech:grass_twines>]
    ],
    <item:pickletweaks:flint_scythe>: [
        [<item:minecraft:flint>, <item:minecraft:flint>, <tag:item:c:rods/wooden>], 
        [<item:minecraft:air>, <tag:item:c:rods/wooden>, <tag:item:ytech:grass_twines>], 
        [<tag:item:c:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
    ],
    <item:pickletweaks:flint_sickle>: [
        [<item:minecraft:air>, <item:minecraft:flint>, <item:minecraft:air>], 
        [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:flint>], 
        [<tag:item:c:rods/wooden>, <item:minecraft:flint>, <tag:item:ytech:grass_twines>]
    ],
    <item:pickletweaks:flint_paxel>: [
        [<item:pickletweaks:flint_axe>, <item:pickletweaks:flint_pickaxe>, <item:pickletweaks:flint_shovel>], 
        [<item:minecraft:air>, <tag:item:c:rods/wooden>, <tag:item:ytech:grass_twines>], 
        [<item:minecraft:air>, <tag:item:c:rods/wooden>, <item:minecraft:air>]
    ],
    <item:pickletweaks:flint_shears>: [
        [<item:minecraft:air>, <item:minecraft:flint>], 
        [<item:minecraft:flint>, <tag:item:ytech:grass_twines>]
    ],
    <item:pickletweaks:flint_hoe>: [
        [<item:minecraft:flint>, <item:minecraft:flint>,<tag:item:ytech:grass_twines>], 
        [<item:minecraft:air>, <tag:item:c:rods/wooden>, <item:minecraft:air>], 
        [<item:minecraft:air>, <tag:item:c:rods/wooden>, <item:minecraft:air>]
    ],
    <item:pickletweaks:flint_axe>: [
        [<item:minecraft:flint>, <item:minecraft:flint>, <tag:item:ytech:grass_twines>], 
        [<item:minecraft:flint>, <tag:item:c:rods/wooden>, <item:minecraft:air>], 
        [<item:minecraft:air>, <tag:item:c:rods/wooden>, <item:minecraft:air>]
    ],
    <item:pickletweaks:flint_shovel>: [
        [<item:minecraft:flint>, <tag:item:ytech:grass_twines>], 
        [<tag:item:c:rods/wooden>, <item:minecraft:air>], 
        [<tag:item:c:rods/wooden>, <item:minecraft:air>]
    ]
};

for item in removeItem {
    craftingTable.remove(item);
}

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}

craftingTable.addShaped("flint_pickaxe_modifiter",<item:pickletweaks:flint_pickaxe>, [
        [<item:mind:sharp_flint> | <item:minecraft:flint>, <item:minecraft:flint>, <item:minecraft:flint>], 
        [<item:minecraft:air>, <tag:item:c:rods/wooden>, <tag:item:ytech:grass_twines>], 
        [<item:minecraft:air>, <tag:item:c:rods/wooden>, <item:minecraft:air>]
    ],(out,ins) => {
        if (ins[0][0] == <item:mind:sharp_flint>){
            return <item:pickletweaks:flint_pickaxe>;
        }
        return <item:pickletweaks:flint_pickaxe>.withJsonComponent(<componenttype:minecraft:damage>, 118).withJsonComponent(<componenttype:minecraft:custom_name>, "残破的燧石镐");
    }
);