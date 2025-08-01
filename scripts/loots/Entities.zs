import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.RandomSource;
import stdlib.List;

loot.modifiers.register(
    "iron_golem",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:entities/iron_golem>)),
    (stacks, context) => {
        var list as List<IItemStack> = new List<IItemStack>();
        list.add(<item:mind:rusty_iron_ingot> * context.level.random.nextInt(1,6));
        list.add(<item:minecraft:poppy>);
        return list;
    }
);