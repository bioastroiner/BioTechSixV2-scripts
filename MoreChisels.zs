
val rod = <ore:woodStick>;

val Screwdriver = <ore:craftingToolScrewdriver>;
val Hammer = <ore:craftingToolHardHammer>;
val SHammer = <ore:craftingToolSoftHammer>;
val Knife = <ore:craftingToolKnife>;
val Saw = <ore:craftingToolSaw>;
val Wrench = <ore:craftingToolWrench>;
val Chisel = <ore:craftingToolChisel>;
val Cutter = <ore:craftingToolWireCutter>;
val file = <ore:craftingToolFile>;
val n = null;

// function remove(item as IItemStack) {
//   mods.nei.NEI.hide(item);
//   recipes.remove(item);
// }

// function addShapedr(output as IItemStack,recipe as IIngredient[][]){
//   recipes.remove(output);
//   recipes.addShaped(output,recipe);
// }

// function addShapelessr(output as IItemStack,recipe as IIngredient[]){
//   recipes.remove(output);
//   recipes.addShapeless(output,recipe);
// }

// function addShaped(output as IItemStack,recipe as IIngredient[][]){
//   recipes.remove(output);
//   recipes.addShaped(output,recipe);
// }

// function addShapeless(output as IItemStack,recipe as IIngredient[]){
//   recipes.remove(output);
//   recipes.addShapeless(output,recipe);
// }

//fix the oreDict for ruby conflict
val oreSapph = <ore:toolHeadChiselAnySapphireMinusRuby>;
<ore:toolHeadChiselAnySapphireMinusRuby>.addAll(<ore:toolHeadChiselAnySapphire>);
for item in <ore:toolHeadChiselRuby>.items{
    oreSapph.remove(item);
}

// for i,item in <ore:toolHeadChiselAnySapphire>.items {
//     if(item in <ore:toolHeadChiselRuby>.items as IItemStack[]){
//         oreSapph.remove(item);
//     }
// }

// More CHisel Recipes
recipes.remove(<morechisels:ItemChiselGemSapphire>);
recipes.remove(<morechisels:ItemChiselGemEmerald>);
recipes.remove(<morechisels:ItemChiselGemMalachite>);
recipes.remove(<morechisels:ItemChiselGemAmber>);
recipes.remove(<morechisels:ItemChiselGemTanzanite>);
recipes.remove(<morechisels:ItemChiselGemAmethyst>);
recipes.remove(<morechisels:ItemChiselGemTopaz>);
recipes.remove(<morechisels:ItemChiselGemRuby>);
recipes.remove(<morechisels:ItemChiselGemPeridot>);
// recipes.remove(<morechisels:ItemChiselBedrockium>);
// recipes.remove(<morechisels:ItemChiselUnstable>);

recipes.addShaped(<morechisels:ItemChiselGemSapphire>,[[Hammer,oreSapph,n],[rod,file,n]]);
recipes.addShaped(<morechisels:ItemChiselGemEmerald>,[[Hammer,<ore:toolHeadChiselAnyEmerald>,n],[rod,file,n]]);
recipes.addShaped(<morechisels:ItemChiselGemMalachite>,[[Hammer,<ore:stickLongMalachite>,n],[rod,file,n]]);
recipes.addShaped(<morechisels:ItemChiselGemAmber>,[[Hammer,<ore:toolHeadChiselAmber>,n],[rod,file,n]]);
recipes.addShaped(<morechisels:ItemChiselGemTanzanite>,[[Hammer,<ore:toolHeadChiselTanzanite>,n],[rod,file,n]]);
recipes.addShaped(<morechisels:ItemChiselGemAmethyst>,[[Hammer,<ore:toolHeadChiselAmethyst>,n],[rod,file,n]]);
recipes.addShaped(<morechisels:ItemChiselGemTopaz>,[[Hammer,<ore:toolHeadChiselTopaz>,n],[rod,file,n]]);
recipes.addShaped(<morechisels:ItemChiselGemRuby>,[[Hammer,<ore:toolHeadChiselRuby>,n],[rod,file,n]]);
recipes.addShaped(<morechisels:ItemChiselGemPeridot>,[[Hammer,<ore:toolHeadChiselPeridot>,n],[rod,file,n]]);

// recipes.addShaped(<morechisels:ItemChiselBedrockium>,[[Hammer,<ore:stickLongBedrockium>,n],[rod,<ore:ingotUnstable>,<ore:stickLongObsidian>]]);
// recipes.addShaped(<morechisels:ItemChiselUnstable>,[[Hammer,<ore:ingotUnstable>,n],[rod,file,<ore:stickLongObsidian>]]);