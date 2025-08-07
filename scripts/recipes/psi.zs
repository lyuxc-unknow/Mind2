import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.util.math.BlockPos;

val removeItem as IItemStack[] = [
    <item:psi:cad_assembler>,
    <item:psi:programmer>,
    <item:psi:cad_assembly_iron>,
    <item:psi:cad_assembly_gold>,
    <item:psi:cad_assembly_psimetal>,
    <item:psi:cad_assembly_ivory_psimetal>,
    <item:psi:cad_assembly_ebony_psimetal>
];

val shapedRecipes as IIngredient[][][IItemStack] = {
    
};

val shapelessRecipes as IIngredient[][IItemStack] = {
    
};

for item in removeItem {
    craftingTable.remove(item);
}

for output,inputs in shapedRecipes {
    CraftingTableRecipe.addShaped(output,inputs);
}

for output,inputs in shapelessRecipes {
    CraftingTableRecipe.addShapeless(output,inputs);
}

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .blockIn(<block:actuallyadditions:black_quartz_block>)
    .itemIn(<item:ars_nouveau:source_gem>)
    .condition(LycheeConditions.block(<block:minecraft:piston>,new BlockPos(0,1,0)))
    .post(LycheePosts.placeBlock(<block:psi:cad_assembler>))
);

LycheeRecipeManager.addRecipe(<recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .blockIn(<block:actuallyadditions:black_quartz_block>)
    .itemIn(<item:ars_nouveau:source_gem>)
    .condition(LycheeConditions.block(<block:psi:psidust_block>,new BlockPos(0,1,0)))
    .post(LycheePosts.placeBlock(<block:psi:programmer>))
);

<recipetype:pneumaticcraft:assembly_drill>.addRecipe("cad_assemibly_iron", <item:pneumaticcraft:ingot_iron_compressed> * 4, <item:psi:cad_assembly_iron>);

<recipetype:pneumaticcraft:assembly_drill>.addRecipe("cad_assemibly_gold", <item:minecraft:gold_ingot> * 4, <item:psi:cad_assembly_gold>);

<recipetype:pneumaticcraft:assembly_drill>.addRecipe("cad_assemibly_psimetal", <item:psi:psimetal> * 4, <item:psi:cad_assembly_psimetal>);

<recipetype:pneumaticcraft:assembly_drill>.addRecipe("cad_assemibly_ivory_psimetal", <item:psi:ivory_psimetal> * 4, <item:psi:cad_assembly_ivory_psimetal>);

<recipetype:pneumaticcraft:assembly_drill>.addRecipe("cad_assemibly_ebony_psimetal", <item:psi:ebony_psimetal> * 4, <item:psi:cad_assembly_ebony_psimetal>);