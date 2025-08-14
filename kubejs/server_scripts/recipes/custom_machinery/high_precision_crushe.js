ServerEvents.recipes(event => {
    let { custommachinery } = event.recipes
    custommachinery.custom_machine("custommachinery:high_precision_crushe",600)
        .requireItem('stellaris:ice_shard')
        .requireChemical("mekanism:sulfuric_acid")
        .requirePressure(3,8,500)
        .produceItem('mind:space_ice',"output")
})