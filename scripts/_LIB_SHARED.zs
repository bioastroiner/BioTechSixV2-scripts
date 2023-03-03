/***************************************************************************************************/
/* Bio Shared Library, put it on top of every script make the script independent, use the v.x to track progress
v.LATEST-If it's in _LIB_SHARED.zs , it's the latest*/
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

function remove(item as minetweaker.item.IItemStack) {
  mods.nei.NEI.hide(item);
  remover(item);
  item.addTooltip(format.red("REMOVED"));
  print("Removed & hid Item: " + item.name);
  val ores = item.ores; if(ores.length > 0) for it in ores {it.remove(item);} // removes ore dicts from this item 
}

function removeA(item as minetweaker.item.IItemStack[]) {
  for it in item{remove(it);}
}

function remover(item as minetweaker.item.IItemStack) {
  recipes.remove(item.anyAmount());
  print("Removed crafting table Recipe for" + item.name);
}

function addShapedr(output as minetweaker.item.IItemStack,recipe as minetweaker.item.IIngredient[][]){
  remover(output);
  recipes.addShaped(output,recipe);
}

function addShapelessr(output as minetweaker.item.IItemStack,recipe as minetweaker.item.IIngredient[]){
  remover(output);
  recipes.addShapeless(output,recipe);
}

function addShaped(output as minetweaker.item.IItemStack,recipe as minetweaker.item.IIngredient[][]){
  recipes.addShaped(output,recipe);
}

function addShapeless(output as minetweaker.item.IItemStack,recipe as minetweaker.item.IIngredient[]){
  recipes.addShapeless(output,recipe);
}
/***************************************************************************************************/