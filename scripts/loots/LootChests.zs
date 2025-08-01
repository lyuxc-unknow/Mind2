import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.RandomSource;
import stdlib.List;

loot.modifiers.register(
    "buried_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/buried_treasure>)),
    (stacks, context) => {
        stacks.remove(<item:minecraft:iron_ingot>);
        stacks.add(<item:mind:rusty_iron_ingot>);
        return stacks;
    }
);

loot.modifiers.register(
    "woodland_mansion",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/woodland_mansion>)),
    (stacks, context) => {
        stacks.remove(<item:minecraft:iron_ingot>);
        stacks.add(<item:mind:rusty_iron_ingot>);
        return stacks;
    }
);

loot.modifiers.register(
    "pillager_outpost",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/pillager_outpost>)),
    (stacks, context) => {
        stacks.remove(<item:minecraft:iron_ingot>);
        stacks.add(<item:mind:rusty_iron_ingot>);
        return stacks;
    }
);

loot.modifiers.register(
    "shipwreck_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_treasure>)),
    (stacks, context) => {
        stacks.remove(<item:minecraft:iron_ingot>);
        stacks.add(<item:mind:rusty_iron_ingot>);
        return stacks;
    }
);

loot.modifiers.register(
    "abandoned_mineshaft",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/abandoned_mineshaft>)),
    (stacks, context) => {
        stacks.remove(<item:minecraft:iron_ingot>);
        stacks.add(<item:mind:rusty_iron_ingot>);
        return stacks;
    }
);