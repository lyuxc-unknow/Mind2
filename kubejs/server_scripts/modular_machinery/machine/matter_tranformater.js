MMREvents.machines(event => {
    event.create("mind:matter_tranformater")
        .name("物质转换装置")
        .color("#FFFFFFFF")
        .structure(
            MMRStructureBuilder.create()
                .pattern([
                    [
                        "aaaaa",
                        "abbba",
                        "abcba",
                        "abbba",
                        "aaaaa"
                    ],
                    [
                        "abbba",
                        "bdddb",
                        "bdedb",
                        "bdddb",
                        "abbba"
                    ],
                    [
                        "abhba",
                        "bdddb",
                        "gdddf",
                        "bdddb",
                        "abbba"
                    ],
                    [
                        "abbba",
                        "bdddb",
                        "bdddb",
                        "bdddb",
                        "abbba"
                    ],
                    [
                        "aamaa",
                        "abbba",
                        "abiba",
                        "abbba",
                        "aaaaa"
                    ]
                ])
                .keys({
                    "a": [
                        "mekanism:sps_casing"
                    ],
                    "b": [
                        "mekanism:structural_glass"
                    ],
                    "c": [
                        "modular_machinery_reborn:energyinputhatch_ultimate"
                    ],
                    "d": [
                        "minecraft:air"
                    ],
                    "e": [
                        "mekanism:supercharged_coil[facing=up]"
                    ],
                    "f": [
                        "modular_machinery_reborn:outputbus_ludicrous"
                    ],
                    "g": [
                        "modular_machinery_reborn_ars:sourceinputhatch_vacuum"
                    ],
                    "h": [
                        "modular_machinery_reborn:height_meter"
                    ],
                    "i": [
                        "modular_machinery_reborn:inputbus_ludicrous"
                    ]
                })
        )
})