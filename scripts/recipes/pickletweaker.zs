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
        [IIngredientEmpty.getInstance(), <tag:item:c:rods/wooden>, <tag:item:ytech:grass_twines>], 
        [<tag:item:c:rods/wooden>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]
    ],
    <item:pickletweaks:flint_sickle>: [
        [IIngredientEmpty.getInstance(), <item:minecraft:flint>, IIngredientEmpty.getInstance()], 
        [IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance(), <item:minecraft:flint>], 
        [<tag:item:c:rods/wooden>, <item:minecraft:flint>, <tag:item:ytech:grass_twines>]
    ],
    <item:pickletweaks:flint_paxel>: [
        [<item:pickletweaks:flint_axe>, <item:pickletweaks:flint_pickaxe>, <item:pickletweaks:flint_shovel>], 
        [IIngredientEmpty.getInstance(), <tag:item:c:rods/wooden>, <tag:item:ytech:grass_twines>], 
        [IIngredientEmpty.getInstance(), <tag:item:c:rods/wooden>, IIngredientEmpty.getInstance()]
    ],
    <item:pickletweaks:flint_shears>: [
        [IIngredientEmpty.getInstance(), <item:minecraft:flint>], 
        [<item:minecraft:flint>, <tag:item:ytech:grass_twines>]
    ],
    <item:pickletweaks:flint_hoe>: [
        [<item:minecraft:flint>, <item:minecraft:flint>,<tag:item:ytech:grass_twines>], 
        [IIngredientEmpty.getInstance(), <tag:item:c:rods/wooden>, IIngredientEmpty.getInstance()], 
        [IIngredientEmpty.getInstance(), <tag:item:c:rods/wooden>, IIngredientEmpty.getInstance()]
    ],
    <item:pickletweaks:flint_axe>: [
        [<item:minecraft:flint>, <item:minecraft:flint>, <tag:item:ytech:grass_twines>], 
        [<item:minecraft:flint>, <tag:item:c:rods/wooden>, IIngredientEmpty.getInstance()], 
        [IIngredientEmpty.getInstance(), <tag:item:c:rods/wooden>, IIngredientEmpty.getInstance()]
    ],
    <item:pickletweaks:flint_shovel>: [
        [<item:minecraft:flint>, <tag:item:ytech:grass_twines>], 
        [<tag:item:c:rods/wooden>, IIngredientEmpty.getInstance()], 
        [<tag:item:c:rods/wooden>, IIngredientEmpty.getInstance()]
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

craftingTable.addShaped("flint_pickaxe_modifiter",<item:pickletweaks:flint_pickaxe>, [
        [<item:mind:sharp_flint> | <item:minecraft:flint>, <item:minecraft:flint>, <item:minecraft:flint>], 
        [IIngredientEmpty.getInstance(), <tag:item:c:rods/wooden>, <tag:item:ytech:grass_twines>], 
        [IIngredientEmpty.getInstance(), <tag:item:c:rods/wooden>, IIngredientEmpty.getInstance()]
    ],(out,ins) => {
        if (ins[0][0] == <item:mind:sharp_flint>){
            return <item:pickletweaks:flint_pickaxe>;
        }
        return <item:pickletweaks:flint_pickaxe>.withJsonComponent(<componenttype:minecraft:damage>, 118).withJsonComponent(<componenttype:minecraft:custom_name>, "残破的燧石镐");
    }
);