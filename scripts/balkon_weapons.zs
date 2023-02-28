import mods.nei.NEI;
import mods.MTUtilsGT;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;

/***************************************************************************************************/
/* Bio Shared Library, put it on top of every script make the script independent, use the v.x to track progress
v.1
*/
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
  item.addTooltip("REMOVED");
  print("Removed & hid Item: " + item.name);
}

function remover(item as minetweaker.item.IItemStack) {
  recipes.remove(item);
  print("Removed crafting table Recipe for" + item.name);
}

function addShapedr(output as minetweaker.item.IItemStack,recipe as minetweaker.item.IIngredient[][]){
  recipes.remove(output);
  recipes.addShaped(output,recipe);
}

function addShapelessr(output as minetweaker.item.IItemStack,recipe as minetweaker.item.IIngredient[]){
  recipes.remove(output);
  recipes.addShapeless(output,recipe);
}

function addShaped(output as minetweaker.item.IItemStack,recipe as minetweaker.item.IIngredient[][]){
  recipes.addShaped(output,recipe);
}

function addShapeless(output as minetweaker.item.IItemStack,recipe as minetweaker.item.IIngredient[]){
  recipes.addShapeless(output,recipe);
}
/***************************************************************************************************/

remove(<weaponmod:spear.wood>);
remove(<weaponmod:halberd.wood>);
remove(<weaponmod:battleaxe.wood>);
remove(<weaponmod:warhammer.wood>);
remove(<weaponmod:katana.wood>);
remove(<weaponmod:katana.stone>);
remove(<weaponmod:flail.wood>);
remove(<weaponmod:boomerang.stone>);
remove(<weaponmod:knife.wood>);
remove(<weaponmod:knife.stone>);
remove(<weaponmod:battleaxe.stone>);
remove(<weaponmod:halberd.stone>);

addShapedr(<weaponmod:cannon>,[[<ore:pipeMediumSteel>,<ore:pipeMediumSteel>,<ore:pipeMediumSteel>],[HHammer,<ore:gearGtSmallSteel>,<ore:stickLongWoodTreated>],[<ore:plankTreatedWood>,<ore:gearGtSmallSteel>,<ore:stickLongWoodTreated>]]);
addShapedr(<weaponmod:cannonball>,
[[n,<ore:rockGtAnyStone>,n],[<ore:rockGtAnyStone>,<ore:rockGtAnyStone>,<ore:rockGtAnyStone>],[n,<ore:rockGtAnyStone>,n]]);
addShapedr(<weaponmod:boomerang.wood>,[[<ore:plankWoodTreated>,<ore:plankWoodTreated>,<ore:plankWoodTreated>],
[n,Saw,<ore:plankWoodTreated>],[n,n,<ore:plankWoodTreated>]]);
addShapedr(<weaponmod:boomerang.stone>,[[<weaponmod:boomerang.wood>,<ore:rockGtAnyStone>],[<ore:rockGtAnyStone>,SHammer]]);
addShapedr(<weaponmod:boomerang.iron>,[[<weaponmod:boomerang.wood>,<ore:plateAnyIron>],[<ore:boltAnyIron>,HHammer]]);
addShapedr(<weaponmod:boomerang.gold>,[[<weaponmod:boomerang.wood>,<ore:plateGold>],[<ore:boltGold>,HHammer]]);
addShapedr(<weaponmod:boomerang.diamond>,[[<weaponmod:boomerang.iron>,<ore:diamond>],[<ore:screwSteel>,Screwdriver]]);
addShapedr(<weaponmod:blowgun>,[[n,Knife],[<minecraft:reeds>,<minecraft:reeds>,<minecraft:reeds>]]);
addShapedr(<weaponmod:spear.stone>,[[Knife,<ore:rockGtAnyStone>],[<ore:stickWood>]]);
addShapedr(<weaponmod:spear.stone>,[[Knife,<ore:gemFlint>],[<ore:stickWood>]]);


addShapelessr(<weaponmod:javelin>*1,[<weaponmod:spear.stone>]);
addShapelessr(<weaponmod:javelin>*1,[<weaponmod:spear.iron>]);
addShapelessr(<weaponmod:flail.stone>,[<minecraft:fishing_rod>,<ore:rockGtAnyStone>]);
addShapelessr(<weaponmod:flail.iron>,[<minecraft:fishing_rod>,<ore:roundAnyIron>]);
addShapelessr(<weaponmod:flail.gold>,[<minecraft:fishing_rod>,<ore:roundGold>]);
addShapelessr(<weaponmod:flail.diamond>,[<minecraft:fishing_rod>,<ore:diamond>]);
addShapelessr(<weaponmod:firerod>,[<weaponmod:spear.iron:*>,<ore:materialCloth>,<ore:listAllcookingoil>]);
addShapelessr(<weaponmod:dynamite>*8,[Saw,<gregtech:gt.multitileentity:32713>]);
addShapelessr(<weaponmod:dynamite>*16,[Saw,<gregtech:gt.multitileentity:32712>]);

addShapelessr(<weaponmod:dart:0>*4,[<ore:arrowGtWoodEmpty>,<gregtech:gt.multiitem.bottles:3400>]);
addShapelessr(<weaponmod:dart:1>*4,[<ore:arrowGtWoodEmpty>,<minecraft:rotten_flesh>]);
addShapelessr(<weaponmod:dart:2>*4,[<ore:arrowGtWoodEmpty>,<ore:slimeball>]);
addShapelessr(<weaponmod:dart:3>*4,[<ore:arrowGtWoodEmpty>,<minecraft:spider_eye>]);



