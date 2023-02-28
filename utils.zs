import mods.nei.NEI;
import mods.MTUtilsGT;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;

global Screwdriver = <ore:craftingToolScrewdriver>;
global HHammer = <ore:craftingToolHardHammer>;
global SHammer = <ore:craftingToolSoftHammer>;
global Knife = <ore:craftingToolKnife>;
global Saw = <ore:craftingToolSaw>;
global Wrench = <ore:craftingToolWrench>;
global Chisel = <ore:craftingToolChisel>;
global Cutter = <ore:craftingToolWireCutter>;
global File = <ore:craftingToolFile>;
global n = null;

# use scripts.utils.foo()
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