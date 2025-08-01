import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.BlockStatePropertyLootCondition;
import crafttweaker.api.loot.modifier.CommonLootModifiers;

loot.modifiers.register(
    "steel_ore_modify",
    LootConditions.allOf([
        BlockStatePropertyLootCondition.create(<block:stellaris:deepslate_steel_ore>),
        BlockStatePropertyLootCondition.create(<block:stellaris:steel_ore>)
    ]),
    CommonLootModifiers.clearLoot()
);