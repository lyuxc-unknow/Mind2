ServerEvents.recipes(event => {
    let villages = [
        "minecraft:village_snowy",
        "minecraft:village",
        "minecraft:village_decays",
        "minecraft:village_desert",
        "minecraft:village_plains",
        "minecraft:village_savanna",
        "minecraft:village_taiga",
        "biomeswevegone:village/swamp",
        "biomeswevegone:village/salem",
        "biomeswevegone:village/pumpkin_patch",
        "biomeswevegone:village/red_rock",
        "biomeswevegone:village/forgotten",
        "biomeswevegone:village/skyris"
    ]
    AStages.addRestrictionForStructure("mind/village","village",villages)
})