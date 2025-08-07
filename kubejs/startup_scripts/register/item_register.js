StartupEvents.registry("item", event => {
    let research_map = [
        "torcherino"
    ]
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
        "magic_pearl"
    ];
    research_map.forEach((key) => {
        event.create(`mind:${key}_research_point`)
    })
    items.forEach((key) => {
        event.create(`mind:${key}`)
    })
})