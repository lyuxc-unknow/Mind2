import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;

Replacer.create()
    .filter(ModsFilteringRule.of("create"))
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:create:polished_rose_quartz>, <item:biomesoplenty:rose_quartz_chunk>)
    .execute();