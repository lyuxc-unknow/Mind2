StartupEvents.registry("block",event => {
    event.create("mind:magic_source_matrix")
        .hardness(5)
    event.create("mind:annihilation_dye_with_dirt")
        .hardness(0.0)
        .box(3,0,3,13,1,13)
        .soundType("grass")
        .renderType("cutout")
})

