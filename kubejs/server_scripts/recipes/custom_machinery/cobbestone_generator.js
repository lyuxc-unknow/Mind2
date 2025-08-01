ServerEvents.recipes(event => {
    const { recipes } = event
    recipes.custommachinery.custom_machine("custommachinery:cobblestone_generator",10)
        .produceItem("1x minecraft:cobblestone")
})