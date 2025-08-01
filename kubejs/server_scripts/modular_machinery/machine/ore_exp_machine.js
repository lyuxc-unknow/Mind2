MMREvents.machines(event => {
    event.create("mind:quarry_machine")
        .name("虚空采石场")
        .color("#FF10845D")
        .structure(
            MMRStructureBuilder.create()
            .pattern([
                [
                    "  bbb  ",
                    " bbbbb ",
                    "bbbbbbb",
                    "bbbbbbb",
                    "bbbbbbb",
                    " bbbbb ",
                    "  bbb  "
                ],
                [
                    "   m   ",
                    "  d d  ",
                    " d   d ",
                    "e     e",
                    " d   d ",
                    "  d d  ",
                    "   c   "
                ],
                [
                    "   e   ",
                    "  f f  ",
                    " f   f ",
                    "e     e",
                    " f   f ",
                    "  f f  ",
                    "   e   "
                ],
                [
                    "   e   ",
                    "  d d  ",
                    " d   d ",
                    "e     e",
                    " d   d ",
                    "  d d  ",
                    "   e   "
                ],
                [
                    "       ",
                    "   e   ",
                    "  ghg  ",
                    " ehihe ",
                    "  ghg  ",
                    "   e   ",
                    "       "
                ],
                [
                    "       ",
                    "       ",
                    "   j   ",
                    "  jkj  ",
                    "   j   ",
                    "       ",
                    "       "
                ],
                [
                    "       ",
                    "   l   ",
                    "  n n  ",
                    " l   l ",
                    "  n n  ",
                    "   l   ",
                    "       "
                ],
                [
                    "       ",
                    "   l   ",
                    "  n n  ",
                    " l   l ",
                    "  n n  ",
                    "   l   ",
                    "       "
                ],
                [
                    "       ",
                    "   j   ",
                    "  n n  ",
                    " j   j ",
                    "  n n  ",
                    "   j   ",
                    "       "
                ],
                [
                    "       ",
                    "       ",
                    "   o   ",
                    "  opo  ",
                    "   o   ",
                    "       ",
                    "       "
                ]
            ])
            .keys({
                "b": [
                    "mekanismadditions:light_gray_reinforced_plastic"
                ],
                "c": [
                    "modular_machinery_reborn:outputbus_huge"
                ],
                "d": [
                    "mekanismadditions:white_plastic_glow"
                ],
                "e": [
                    "mekanismadditions:black_reinforced_plastic"
                ],
                "f": [
                    "extendedcrafting:enhanced_ender_ingot_block"
                ],
                "g": [
                    "ae2:fluix_block"
                ],
                "h": [
                    "modular_machinery_reborn:casing_circuitry"
                ],
                "i": [
                    "extendedcrafting:luminessence_block"
                ],
                "j": [
                    "modular_machinery_reborn:casing_vent"
                ],
                "k": [
                    "minecraft:beacon[waterlogged=true]"
                ],
                "l": [
                    "modular_machinery_reborn:casing_reinforced"
                ],
                "n": [
                    "extendedae:entro_block"
                ],
                "o": [
                    "modular_machinery_reborn:casing_gearbox"
                ],
                "p": [
                    "modular_machinery_reborn:energyinputhatch_reinforced"
                ]
            }))
})