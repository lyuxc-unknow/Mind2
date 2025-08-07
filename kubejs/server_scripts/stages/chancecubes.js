ServerEvents.recipes(event => {
    AStages.addRestrictionForMod("mind/chancecubes_stage", "chancecubes", "chancecubes")
    .setCanPickedUp(true)
    .setCanBeStoredInInventory(true)
    .setCanBePlaced(false)
})