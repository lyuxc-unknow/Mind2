ServerEvents.recipes(event => {
    AStages.addRestrictionForDimension("mind/restrication_nather","nether","the_nether")
    AStages.addRestrictionForDimension("mind/restrication_end","the_end","the_end")
    AStages.addRestrictionForOre("mind/restrication_draconium_ore","the_end",Block.getBlock('draconicevolution:end_draconium_ore').defaultBlockState(),Block.getBlock('minecraft:end_stone').defaultBlockState())
})