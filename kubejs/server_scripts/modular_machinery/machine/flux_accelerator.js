MMREvents.machines(event => {
    event.create("mind:flux_accelerator")
        .name("通量加速器")
        .color("#FF707070")
        .structure(
            MMRStructureBuilder.create()
                .pattern([
                    [
                        "             ",
                        "    bbbbb    ",
                        "   b     b   ",
                        "  b       b  ",
                        " b         b ",
                        " b         b ",
                        " b         b ",
                        " b         b ",
                        " b         b ",
                        "  b       b  ",
                        "   b     b   ",
                        "    bbbbb    ",
                        "             "
                    ],
                    [
                        "    bbhbb    ",
                        "   deeeeed   ",
                        "  debbbbbed  ",
                        " deb     bed ",
                        "beb       beb",
                        "beb       beb",
                        "geb       bef",
                        "beb       beb",
                        "beb       beb",
                        " deb     bed ",
                        "  debbbbbed  ",
                        "   deeeeed   ",
                        "    bbcbb    "
                    ],
                    [
                        "      m      ",
                        "    bbbbb    ",
                        "   b     b   ",
                        "  b       b  ",
                        " b         b ",
                        " b         b ",
                        " b         b ",
                        " b         b ",
                        " b         b ",
                        "  b       b  ",
                        "   b     b   ",
                        "    bbbbb    ",
                        "             "
                    ]
                ])
                .keys({
                    "b": [
                        "immersiveengineering:coil_hv"
                    ],
                    "c": [
                        "#modular_machinery_reborn:inputbus"
                    ],
                    "d": [
                        "modular_machinery_reborn:casing_vent"
                    ],
                    "e": [
                        "draconicevolution:draconium_block"
                    ],
                    "f": [
                        "#modular_machinery_reborn:energyinputhatch"
                    ],
                    "g": [
                        "#modular_machinery_reborn_mekanism:chemicalinputhatch"
                    ],
                    "h": [
                        "#modular_machinery_reborn:fluidoutputhatch"
                    ]
                })
        )
})