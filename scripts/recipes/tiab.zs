craftingTable.removeByName("tiab:time_in_a_bottle");
LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>,new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:glass_bottle>)
    .blockIn(<block:torcherino:compressed_torcherino>)
    .post([LycheePosts.dropItem(<item:tiab:time_in_a_bottle>
            .withJsonComponent(<componenttype:tiab:stored_time>, {total: 1728000, stored: 1728000})
            .withJsonComponent(<componenttype:minecraft:lore>, ["{\"color\":\"green\",\"translate\":\"item.tiab.time_in_a_bottle.tooltip.stored_time\",\"with\":[\"24\",\"00\",\"00\"]}", "{\"color\":\"gray\",\"translate\":\"item.tiab.time_in_a_bottle.tooltip.total_accumulated_time\",\"with\":[\"24\",\"00\",\"00\"]}"])
        ),
        LycheePosts.placeBlock(<block:minecraft:air>)
    ])
);