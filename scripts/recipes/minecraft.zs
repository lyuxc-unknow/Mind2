import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.text.Component;

val removeItem as IItemStack[] = [
    <item:minecraft:bucket>,
    <item:minecraft:piston>,
    <item:minecraft:bricks>,
    <item:minecraft:nether_bricks>,
    <item:minecraft:lodestone>,
    <item:minecraft:cauldron>,
    <item:minecraft:flint_and_steel>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    <item:minecraft:piston>: [
        [<tag:item:minecraft:planks>, <tag:item:minecraft:planks>, <tag:item:minecraft:planks>], 
        [<tag:item:c:cobblestones/normal>, <tag:item:c:ingots/steel>, <tag:item:c:cobblestones/normal>], 
        [<tag:item:c:cobblestones/normal>, <item:minecraft:redstone>, <tag:item:c:cobblestones/normal>]
    ],
    <item:minecraft:lodestone>: [
        [<item:minecraft:chiseled_stone_bricks>,<item:minecraft:chiseled_stone_bricks>,<item:minecraft:chiseled_stone_bricks>],
        [<item:minecraft:chiseled_stone_bricks>,<item:naturesaura:sky_ingot>,<item:minecraft:chiseled_stone_bricks>],
        [<item:minecraft:chiseled_stone_bricks>,<item:minecraft:chiseled_stone_bricks>,<item:minecraft:chiseled_stone_bricks>]
    ],
    <item:minecraft:cauldron>: [
        [<tag:item:c:ingots/dark_steel>,<item:minecraft:air>,<tag:item:c:ingots/dark_steel>],
        [<tag:item:c:ingots/dark_steel>,<item:minecraft:air>,<tag:item:c:ingots/dark_steel>],
        [<tag:item:c:ingots/dark_steel>,<tag:item:c:ingots/dark_steel>,<tag:item:c:ingots/dark_steel>]
    ]
};

val shapelessRecipes as IIngredient[][IItemStack] = {
    <item:minecraft:flint_and_steel>: [
        <tag:item:c:ingots/steel>,<item:minecraft:flint>
    ]
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

WorkspaceCrafting.addRecipe(<item:minecraft:bricks>,<tag:item:c:hammers>,
    [
        "   ",
        "   ",
        "   "
    ],
    [
        "BB ",
        "BB ",
        "   "
    ],
    [
        "BB ",
        "BB ",
        "   "
    ],
    {
        "B": {"item": "minecraft:brick"}
    },
    "minecraft_bricks_1"
);

WorkspaceCrafting.addRecipe(<item:minecraft:bricks>,<tag:item:c:hammers>,
    [
        "   ",
        "   ",
        "   "
    ],
    [
        " BB",
        " BB",
        "   "
    ],
    [
        " BB",
        " BB",
        "   "
    ],
    {
        "B": {"item": "minecraft:brick"}
    },
    "minecraft_bricks_2"
);

WorkspaceCrafting.addRecipe(<item:minecraft:bricks>,<tag:item:c:hammers>,
    [
        "   ",
        "   ",
        "   "
    ],
    [
        "   ",
        "BB ",
        "BB "
    ],
    [
        "   ",
        "BB ",
        "BB "
    ],
    {
        "B": {"item": "minecraft:brick"}
    },
    "minecraft_bricks_3"
);

WorkspaceCrafting.addRecipe(<item:minecraft:bricks>,<tag:item:c:hammers>,
    [
        "   ",
        "   ",
        "   "
    ],
    [
        "   ",
        " BB",
        " BB"
    ],
    [
        "   ",
        " BB",
        " BB"
    ],
    {
        "B": {"item": "minecraft:brick"}
    },
    "minecraft_bricks_4"
);

WorkspaceCrafting.addRecipe(<item:minecraft:nether_bricks>,<tag:item:c:hammers>,
    [
        "   ",
        "   ",
        "   "
    ],
    [
        "BB ",
        "BB ",
        "   "
    ],
    [
        "BB ",
        "BB ",
        "   "
    ],
    {
        "B": {"item": "minecraft:nether_brick"}
    },
    "minecraft_nether_brick_1"
);

WorkspaceCrafting.addRecipe(<item:minecraft:nether_bricks>,<tag:item:c:hammers>,
    [
        "   ",
        "   ",
        "   "
    ],
    [
        " BB",
        " BB",
        "   "
    ],
    [
        " BB",
        " BB",
        "   "
    ],
    {
        "B": {"item": "minecraft:nether_brick"}
    },
    "minecraft_nether_brick_2"
);

WorkspaceCrafting.addRecipe(<item:minecraft:nether_bricks>,<tag:item:c:hammers>,
    [
        "   ",
        "   ",
        "   "
    ],
    [
        "   ",
        "BB ",
        "BB "
    ],
    [
        "   ",
        "BB ",
        "BB "
    ],
    {
        "B": {"item": "minecraft:nether_brick"}
    },
    "minecraft_nether_brick_3"
);

WorkspaceCrafting.addRecipe(<item:minecraft:nether_bricks>,<tag:item:c:hammers>,
    [
        "   ",
        "   ",
        "   "
    ],
    [
        "   ",
        " BB",
        " BB"
    ],
    [
        "   ",
        " BB",
        " BB"
    ],
    {
        "B": {"item": "minecraft:nether_brick"}
    },
    "minecraft_nether_brick_4"
);

CraftingTableRecipe.addShapedFaked(<item:minecraft:diamond_block>,[
    [<item:minecraft:dirt>, <item:minecraft:dirt>, <item:minecraft:dirt>],
    [<item:minecraft:dirt>, IIngredientEmpty.getInstance(), <item:minecraft:dirt>],
    [<item:minecraft:dirt>, <item:minecraft:dirt>, <item:minecraft:dirt>]
]);

// LycheeRecipeManager.addRecipe(<recipetype:lychee:dripstone_dripping>,new LycheeRecipeBuilder()
//     .sourceBlock(<fluid:minecraft:lava>)
//     .targetBlock(<block:cursedearth:cursed_earth>)
//     .post(LycheePosts.placeBlock(<block:minecraft:soul_soil>))
// );

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>,new LycheeRecipeBuilder()
    .comment(Component.translatable("tips.lychee.crafting_brick").getString())
    .itemIn(<tag:item:minecraft:coals>)
    .blockIn(<block:minecraft:bricks>)
    .post([
        LycheePosts.dropItem(<item:minecraft:bricks>).condition([LycheeConditions.smokey(true),LycheeConditions.chance(0.5)]),
        LycheePosts.placeBlock(<block:minecraft:air>).condition([LycheeConditions.chance(0.1)])
    ])
);

LycheeRecipeManager.addRecipe(<recipetype:lychee:item_inside>,new LycheeRecipeBuilder()
    .itemIn(<item:mind:rusty_iron_ingot>)
    .blockIn(<block:mekanism:sulfuric_acid>)
    .insideBlockTime(10)
    .post(LycheePosts.dropItem(<item:minecraft:iron_ingot>).condition(LycheeConditions.chance(0.7)))
);


CreateRecipeManager.addRecipe(<recipetype:create:haunting>, new CreateRecipeBuilder()
    .inputs([<item:mind:bottle_of_tear>])
    .results([<item:minecraft:ghast_tear> % 70])
);

YTechAlloying.remove(<item:minecraft:glass>);
YTechAlloying.addRecipe(<item:minecraft:glass>,<item:ytech:crushed_galena>,<tag:item:c:sands>,1000,200);