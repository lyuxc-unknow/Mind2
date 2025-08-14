LootJS.modifiers(event => {
    event.addTableModifier(/.*/)
        .matchDimension(["minecraft:overworld"])
        .replaceLoot("minecraft:iron_ingot", "mind:rusty_iron_ingot")
        .replaceLoot("enderio:dark_steel_ingot", "mind:rusty_iron_ingot")
        .replaceLoot("immersiveengineering:ingot_steel", "mind:rusty_iron_ingot")
        ;
});