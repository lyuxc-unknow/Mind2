MMREvents.machines(event => {
    event.create("mmr:empty")
    event.create("mind:die_casting_machine")
        .color("#FFD7D7D7")
        .name("小型压铸机")
        .structure(MMRStructureBuilder.create()
            .pattern([
                [
                    "aaabaaa"
                ],
                [
                    "edddddc"
                ],
                [
                    "afffffa"
                ],
                [
                    "aaamaaa"
                ]
            ])
            .keys({
                "a": [
                    "immersiveengineering:sheetmetal_iron",
                    "#modular_machinery_reborn:parallelhatch"
                ],
                "b": [
                    "#modular_machinery_reborn:energyinputhatch"
                ],
                "c": [
                    "#modular_machinery_reborn:inputbus"
                ],
                "d": [
                    "immersiveengineering:conveyor_basic[facing=north,waterlogged=false]"
                ],
                "e": [
                    "#modular_machinery_reborn:outputbus"
                ],
                "f": [
                    "minecraft:piston[extended=false,facing=down]"
                ]
            }
        )
    )
})