ServerEvents.recipes(event => {
    let disabled_items = [
        "chancecubes:chance_icosahedron",
        "chancecubes:compact_giant_chance_cube",
        "chancecubes:chance_pendant_tier1",
        "chancecubes:chance_pendant_tier2",
        "chancecubes:chance_pendant_tier3",
        "chancecubes:reward_selector_pendant",
        "chancecubes:creative_pendant"
    ]
    
    AStages.addRestrictionForItem("mind/disabled_stage","disabled_stage",disabled_items)
            .setHideInJEI(true)
    AStages.addRestrictionForDimension("mind/restrication_nather","nether","the_nether")
})