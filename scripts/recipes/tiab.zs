craftingTable.removeByName("tiab:time_in_a_bottle");
LycheeRecipeManager.addRecipe(<recipetype:lychee:item_inside>,new LycheeRecipeBuilder()
    .itemIn(<item:naturesaura:bottle_two_the_rebottling>)
    .blockIn(<blockstate:justdirethings:time_fluid_block:level=0>)
    .post([LycheePosts.dropItem(<item:tiab:time_in_a_bottle>
            .withJsonComponent(<componenttype:tiab:stored_time>, {total: 864000, stored: 864000})
            .withJsonComponent(<componenttype:minecraft:lore>, ["{\"color\":\"green\",\"translate\":\"item.tiab.time_in_a_bottle.tooltip.stored_time\",\"with\":[\"12\",\"00\",\"00\"]}", "{\"color\":\"gray\",\"translate\":\"item.tiab.time_in_a_bottle.tooltip.total_accumulated_time\",\"with\":[\"12\",\"00\",\"00\"]}"])
        ),
        LycheePosts.placeBlock(<block:minecraft:air>)
    ])
);