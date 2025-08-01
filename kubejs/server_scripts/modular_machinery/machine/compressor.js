MMREvents.machines(event => {
    event.create("mind:work_space_machine")
        .name("立体合成器")
        .color("#FF929292")
        .structure(
            MMRStructureBuilder.create()
            .pattern([
                [
                    "aaaaa",
                    "abbba",
                    "abbba",
                    "abbba",
                    "aaaaa"
                ],
                [
                    "aggga",
                    "feeed",
                    "feeed",
                    "feeed",
                    "accca"
                ],
                [
                    "aggga",
                    "feeed",
                    "feeed",
                    "feeed",
                    "accca"
                ],
                [
                    "aggga",
                    "feeed",
                    "feeed",
                    "feeed",
                    "accca"
                ],
                [
                    "ajmia",
                    "ahhha",
                    "ahhha",
                    "ahhha",
                    "aaaaa"
                ]
            ])
            .keys({
                "a": [
                    "allthecompressed:cobblestone_1x"
                ],
                "b": [
                    "minecraft:piston[extended=false,facing=up]"
                ],
                "c": [
                    "minecraft:piston[extended=false,facing=east]"
                ],
                "d": [
                    "minecraft:piston[extended=false,facing=north]"
                ],
                "e": [
                    "minecraft:air"
                ],
                "f": [
                    "minecraft:piston[extended=false,facing=south]"
                ],
                "g": [
                    "minecraft:piston[extended=false,facing=west]"
                ],
                "h": [
                    "minecraft:piston[extended=false,facing=down]"
                ],
                "i": [
                    "#modular_machinery_reborn:itembus"
                ],
                "j": [
                    "#modular_machinery_reborn:itembus"
                ]
            }))
})