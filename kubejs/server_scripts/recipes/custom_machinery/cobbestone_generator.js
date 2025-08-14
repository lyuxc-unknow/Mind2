ServerEvents.recipes(event => {
    let { custommachinery } = event.recipes
    custommachinery.custom_machine("custommachinery:cobblestone_generator",10)
        .produceItem("1x minecraft:cobblestone")
})