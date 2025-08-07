MMREvents.machines(event => {
    event.create("mind:magic_source_matrix_multiblock")
        .color("#FF4460FF")
        .name("魔源合成矩阵")
        .structure(
            MMRStructureBuilder.create()
            .pattern([
                [
                    "       ",
                    "       ",
                    "d     b",
                    "       ",
                    "       ",
                    "   a   "
                ],
                [
                    " efffe ",
                    " fhhhf ",
                    " fhhhf ",
                    " fhhhf ",
                    " efffe ",
                    "       "
                ],
                [
                    "       ",
                    "       ",
                    "       ",
                    "       ",
                    "       ",
                    "       "
                ],
                [
                    "       ",
                    "       ",
                    "   m   ",
                    "       ",
                    "       ",
                    "       "
                ],
                [
                    "       ",
                    "       ",
                    "   k   ",
                    "       ",
                    "       ",
                    "       "
                ]
            ])
            .keys({
                "a": [
                    "modular_machinery_reborn_ars:sourceinputhatch_vacuum"
                ],
                "b": [
                    "modular_machinery_reborn:inputbus_tiny"
                ],
                "d": [
                    "modular_machinery_reborn:outputbus_big"
                ],
                "e": [
                    "minecraft:zombie_head"
                ],
                "f": [
                    "minecraft:white_candle"
                ],
                "h": [
                    "ars_nouveau:arcane_pedestal"
                ],
                "k": [
                    "#modular_machinery_reborn:parallelhatch",
                    "minecraft:air"
                ]
            }))
        .controllerModel(ControllerModel.of("mind:magic_source_matrix"))
})