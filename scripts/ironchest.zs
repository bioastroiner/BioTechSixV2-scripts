import mods.MTUtilsGT;
import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;

val Screwdriver = <ore:craftingToolScrewdriver>;
val HHammer = <ore:craftingToolHardHammer>;
val SHammer = <ore:craftingToolSoftHammer>;
val Knife = <ore:craftingToolKnife>;
val Saw = <ore:craftingToolSaw>;
val Wrench = <ore:craftingToolWrench>;
val Chisel = <ore:craftingToolChisel>;
val Cutter = <ore:craftingToolWireCutter>;
val File = <ore:craftingToolFile>;
val n = null;

function remove(item as IItemStack) {
  mods.nei.NEI.hide(item);
  recipes.remove(item);
}

function addShapedr(output as IItemStack,recipe as IIngredient[][]){
  recipes.remove(output);
  recipes.addShaped(output,recipe);
}

function addShapelessr(output as IItemStack,recipe as IIngredient[]){
  recipes.remove(output);
  recipes.addShapeless(output,recipe);
}

function addShaped(output as IItemStack,recipe as IIngredient[][]){
  recipes.remove(output);
  recipes.addShaped(output,recipe);
}

function addShapeless(output as IItemStack,recipe as IIngredient[]){
  recipes.remove(output);
  recipes.addShapeless(output,recipe);
}

recipes.remove(<IronChest:BlockIronChest:*>);

val Copper2IronUp = <IronChest:copperIronUpgrade>;
val Copper2SteelUp = <IronChest:copperSilverUpgrade>;
val Diamond2CrystalUp = <IronChest:diamondCrystalUpgrade>;
val Diamond2ObsidianUp = <IronChest:diamondObsidianUpgrade>;
val Gold2DiamondUp = <IronChest:goldDiamondUpgrade>;
val Iron2GoldUp = <IronChest:ironGoldUpgrade>;
val Steel2GoldUp = <IronChest:silverGoldUpgrade>;
val Wood2CopperUp = <IronChest:woodCopperUpgrade>;
val Wood2IronUp = <IronChest:woodIronUpgrade>;

// --- All Uppgrades
recipes.remove(Copper2IronUp);
recipes.remove(Copper2SteelUp);
recipes.remove(Diamond2CrystalUp);
recipes.remove(Diamond2ObsidianUp);
recipes.remove(Gold2DiamondUp);
recipes.remove(Iron2GoldUp);
recipes.remove(Steel2GoldUp);
recipes.remove(Wood2CopperUp);
recipes.remove(Wood2IronUp);

recipes.addShapeless(Copper2IronUp,[<IronChest:BlockIronChest:0>,Saw,File]);
recipes.addShapeless(Copper2SteelUp,[<IronChest:BlockIronChest:4>,Saw]);
recipes.addShapeless(Diamond2CrystalUp,[<ore:lensGlass>,Cutter,Saw]);
recipes.addShapeless(Diamond2ObsidianUp,[<ore:plateDoubleObsidian>,<ore:plateDoubleObsidian>,<ore:plateDoubleObsidian>,<ore:plateDoubleObsidian>,Saw,File,Cutter]);
recipes.addShapeless(Gold2DiamondUp,[<IronChest:BlockIronChest:2>,Saw]);
recipes.addShapeless(Iron2GoldUp,[<IronChest:BlockIronChest:1>,Saw]);
recipes.addShapeless(Steel2GoldUp,[<IronChest:BlockIronChest:1>,Saw,File]);
recipes.addShapeless(Wood2CopperUp,[<IronChest:BlockIronChest:3>,Saw]);
recipes.addShapeless(Wood2IronUp,[<IronChest:BlockIronChest:0>,Saw]);

recipes.addShaped(Wood2IronUp,[[SHammer,<ore:plateAnyIron>,Saw],
[<ore:ringAnyIron>,<ore:stickAnyIron>,<ore:ringAnyIron>],
[<ore:plateAnyIron>,<ore:plateAnyIron>,<ore:plateAnyIron>]]);
recipes.addShaped(Wood2CopperUp,[[SHammer,<ore:plateCopper>,Saw],
[<ore:ringCopper>,<ore:stickCopper>,<ore:ringCopper>],
[<ore:plateCopper>,<ore:plateCopper>,<ore:plateCopper>]]);

recipes.addShaped(<IronChest:BlockIronChest:0>,[[HHammer,<ore:plateAnyIron>,Saw],
[<ore:ringAnyIron>,<ore:stickAnyIron>,<ore:ringAnyIron>],
[<ore:plateAnyIron>,<ore:plateAnyIron>,<ore:plateAnyIron>]]);

recipes.addShaped(<IronChest:BlockIronChest:1>,[[HHammer,<ore:plateGold>,Saw],
[<ore:ringGold>,<ore:stickGold>,<ore:ringGold>],
[<ore:plateGold>,<ore:plateGold>,<ore:plateGold>]]);

recipes.addShaped(<IronChest:BlockIronChest:2>,[[HHammer,<ore:plateGemAnyDiamond>,Saw],
[<ore:ringAnyDiamond>,<ore:stickAnyDiamond>,<ore:ringAnyDiamond>],
[<ore:plateGemAnyDiamond>,<ore:plateGemAnyDiamond>,<ore:plateGemAnyDiamond>]]);

recipes.addShaped(<IronChest:BlockIronChest:3>,[[HHammer,<ore:plateCopper>,Saw],
[<ore:ringCopper>,<ore:stickCopper>,<ore:ringCopper>],
[<ore:plateCopper>,<ore:plateCopper>,<ore:plateCopper>]]);

recipes.addShaped(<IronChest:BlockIronChest:4>,[[HHammer,<ore:plateSteel>,Saw],
[<ore:ringSteel>,<ore:stickSteel>,<ore:ringSteel>],
[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]]);

recipes.addShapeless(<IronChest:BlockIronChest:5>,[<IronChest:BlockIronChest:2>,<ore:lensGlass>,Cutter]);
recipes.addShapeless(<IronChest:BlockIronChest:5>,[<IronChest:BlockIronChest:2>,<ore:lensAny>,Cutter]);

recipes.addShaped(<IronChest:BlockIronChest:6>,[[<ore:plateObsdian>,<ore:plateObsdian>,<ore:plateObsdian>],
[<ore:plateObsdian>,<IronChest:BlockIronChest:2>,<ore:plateObsdian>],
[<ore:plateObsdian>,<ore:plateObsdian>,<ore:plateObsdian>]]);

for item in <ore:plateQuintupleAnyIron>.items{
    MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 8, 128,0, [10000], 
						[item], 
						[], 
						[], 
						[<IronChest:BlockIronChest:0>]);
}

for item in <ore:plateQuintupleGold>.items{
    MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 4, 64,0, [10000], 
						[item], 
						[], 
						[], 
						[<IronChest:BlockIronChest:1>]);
}

for item in <ore:plateGemAnyDiamond>.items{
    MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 16, 64,0, [10000], 
						[item * 5], 
						[], 
						[], 
						[<IronChest:BlockIronChest:2>]);
}

for item in <ore:plateQuintupleCopper>.items{
    MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 8, 80,0, [10000], 
						[item], 
						[], 
						[], 
						[<IronChest:BlockIronChest:3>]);
}

for item in <ore:plateQuintupleSteel>.items{
    MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 16, 200,0, [10000], 
						[item], 
						[], 
						[], 
						[<IronChest:BlockIronChest:4>]);
}