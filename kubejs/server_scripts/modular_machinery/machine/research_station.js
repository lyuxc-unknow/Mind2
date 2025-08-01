MMREvents.machines(event => {
    event.create("mind:research_station")
        .name("研究站")
        .color("#F8F4F4FF")
        .controllerModel(ControllerModel.of('minecraft:lectern'))
        .structure(
            MMRStructureBuilder.create()
            .pattern([
                [
                    "abbba",
                    "bcccb",
                    "bcccb",
                    "bcccb",
                    "abbba"
                ],
                [
                    "ddddd",
                    "eggfe",
                    "efgge",
                    "eggfe",
                    "ddddd"
                ],
                [
                    "deeed",
                    "dhhfd",
                    "ifhhd",
                    "dhhfd",
                    "deeed"
                ],
                [
                    "ddddd",
                    "eggfe",
                    "efjge",
                    "eggfe",
                    "ddddd"
                ],
                [
                    "abbba",
                    "bcqcb",
                    "bpcob",
                    "bnlkb",
                    "abbba"
                ],
                [
                    "     ",
                    "     ",
                    "  m  ",
                    "     ",
                    "     "
                ]
            ])
            .keys({
                "a": [
                    "minecraft:chiseled_quartz_block"
                ],
                "b": [
                    "minecraft:quartz_bricks"
                ],
                "c": [
                    "minecraft:smooth_quartz"
                ],
                "d": [
                    "minecraft:quartz_pillar[axis=y]"
                ],
                "e": [
                    "modular_machinery_reborn:casing_vent"
                ],
                "f": [
                    "modular_machinery_reborn:casing_gearbox"
                ],
                "g": [
                    "modular_machinery_reborn:casing_circuitry"
                ],
                "h": [
                    "immersiveengineering:storage_silver"
                ],
                "i": [
                    "#modular_machinery_reborn_ars:sourceinputhatch"
                ],
                "j": [
                    "extendedae:silicon_block"
                ],
                "k": [
                    "#modular_machinery_reborn:energyinputhatch"
                ],
                "l": [
                    "#modular_machinery_reborn:inputbus"
                ],
                "n": [
                    "#modular_machinery_reborn:fluidinputhatch"
                ],
                "o": [
                    "#modular_machinery_reborn:experienceinputhatch"
                ],
                "p": [
                    "#modular_machinery_reborn_mekanism:chemicalinputhatch"
                ],
                "q": [
                    "#modular_machinery_reborn:all_casing"
                ]
            }))
})