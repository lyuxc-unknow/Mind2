StartupEvents.registry("item", event => {
    let items = [
        "rough_grinding_iron_ingot",
        "rusty_iron_ingot",
        "coal_with_clay_mixture",
        "sharp_flint",
        "bottle_of_tear",
        "blast_bricks",
        "unfired_blast_bricks",
        "inferior_plastic",
        "uv_lamp",
        "infinity_iron_mixed",
        "mind_coin",
        "redstone_prism",
        "magic_pearl",
        "finals_token",
        "end_petal",
        "annihilation_dye",
        "space_ice",
        "conversion_media",
        "empty_philosophers_stone"
    ];
    items.forEach((key) => {
        event.create(`mind:${key}`)
    })
    event.create("mind:ender_dragon_killer")
        .maxStackSize(1)
        .use((level,player,interactionHand) => {
            if (!level.isClientSide()) {
                level.runCommandSilent("kill @e[type=minecraft:ender_dragon]")
                let itemStack = player.getMainHandItem()
                itemStack.setCount(0)
                player.setHeldItem(interactionHand,itemStack.item)
            }
            return true
        })
})