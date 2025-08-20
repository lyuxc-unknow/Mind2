ServerEvents.recipes(event => {
    let { custommachinery } = event.recipes
    custommachinery.custom_machine("custommachinery:miniature_dragon_reactor", 9600)
        .produceEnergyPerTick(200000)
        .requireEnergyPerTick(100000)
        .produceItem('draconicevolution:small_chaos_frag')
        .requireItem('draconicevolution:awakened_draconium_nugget')
})