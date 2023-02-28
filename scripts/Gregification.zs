import mods.nei.NEI;
import mods.MTUtilsGT;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
/***************************************************************************************************/
/* Bio Shared Library, put it on top of every script make the script independent, use the v.x to track progress
v.2-stack-normalization*/
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
  recipes.remove(output.definition.makeStack(1));
  recipes.addShaped(output,recipe);
}

function addShapelessr(output as minetweaker.item.IItemStack,recipe as minetweaker.item.IIngredient[]){
  recipes.remove(output.definition.makeStack(1));
  recipes.addShapeless(output,recipe);
}

function addShaped(output as minetweaker.item.IItemStack,recipe as minetweaker.item.IIngredient[][]){
  recipes.addShaped(output,recipe);
}

function addShapeless(output as minetweaker.item.IItemStack,recipe as minetweaker.item.IIngredient[]){
  recipes.addShapeless(output,recipe);
}
/***************************************************************************************************/

val bar=<gregtech:gt.block.bars.wood>;

// Gregify crafting table
val ptable = <ProjRed|Expansion:projectred.expansion.machine2:10>;
remove(<netherlicious:NetherCraftingTable>);
remove(<netherlicious:NetherCraftingTable:1>);
remove(<netherlicious:NetherCraftingTable:2>);
addShaped(bar,[[<ore:beamWood>,<ore:stickWood>],[<ore:stickWood>,<ore:craftingToolSawAxe>]]);
addShapedr(<minecraft:crafting_table>,[[Knife,bar],[<ore:beamWood>,<ore:beamWood>]]);
addShapedr(<minecraft:crafting_table>*2,[[bar,bar,bar],[bar,Saw,bar],[bar,bar,bar]]);
addShapedr(<Forestry:factory2:2>,[[bar,bar,bar],[Knife,<minecraft:crafting_table>,<ore:craftingToolSawAxe>],[<ore:beamWood>,<ore:chest>,<ore:beamWood>]]);
addShapelessr(ptable,[<Forestry:factory2:2>,HHammer,<ore:craftingToolSawAxe>,<gregtech:gt.multitileentity:32025>]);
addShapedr(<ProjRed|Expansion:projectred.expansion.machine2:11>,[[<ProjRed|Expansion:projectred.expansion.machine2:11>]]);
addShapedr(<BuildCraft|Factory:autoWorkbenchBlock>,[[<BuildCraft|Factory:autoWorkbenchBlock>]]);

// Gregify paper (the method is in greg just remove vanilla)
remover(<minecraft:paper>);

// Galena Arrow Head
val gal=<ore:gemGalena>;
addShaped(<gregtech:gt.meta.toolHeadArrow:820>,[[File,gal],[gal,<ore:itemFlint>]]);
addShaped(<gregtech:gt.meta.toolHeadArrow:820>,[[<ore:itemFlint>,gal],[gal,File]]);

// Gregify Furnace
remove(<atum:tile.furnaceIdle>);
remove(<netherlicious:FurnaceBlackstone>);
val bbox=<gregtech:gt.multitileentity:1199>;
val furnace=<minecraft:furnace>;
val sbplatei=<gregtech:gt.meta.plateCurved:8500>; //curved stone plate
val splatei=<gregtech:gt.meta.plate:8500>;
val splate=<ore:plateStone>;
val sbplate=<ore:plateCurvedStone>;
val basin=<gregtech:gt.multiitem.randomtools:990>;
//addShaped(splate*4,[[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],[<ore:itemFlint>,HHammer,<ore:itemFlint>],[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]]);
//addShaped(sbplate*2,[[splate,HHammer],[<ore:craftingToolSawAxe>,splate]]);
addShapedr(furnace,[[splate,HHammer,splate],[sbplate,bbox,sbplate],[splate,<ore:chest>,splate]]);
addShapedr(<IC2:blockMachine:1>,[[<ore:plateAnyIron>,HHammer,<ore:plateAnyIron>],[<ore:plateCurvedAnyIron>,furnace,<ore:plateCurvedAnyIron>],[<ore:plateAnyIron>,<ore:chest>,<ore:plateAnyIron>]]);
addShapedr(bbox,[[<minecraft:brick>,splate,<minecraft:brick>],[<minecraft:brick_block>,<ore:craftingFirestarter>,<minecraft:brick_block>],[HHammer,<gregtech:gt.multitileentity:1755>,<ore:craftingToolSawAxe>]]);
// use campfirebackported mod to get pre furnace bricks
mods.campfirebackport.addCampfireRecipe("regular", [<ore:itemClay>], <minecraft:brick>);
mods.campfirebackport.addCampfireRecipe("regular", [<ore:itemMud>], <BiomesOPlenty:misc>);
mods.campfirebackport.addCampfireRecipe("regular", [basin], <gregtech:gt.multitileentity:1755>);
val scp=<ore:scrapGtAnyStone>;
val brk=<minecraft:brick>;
val stn=<ore:cobblestone>;
addShapeless(<ore:scrapGtStone>.firstItem,[scp]);<ore:scrapGtStone>.firstItem.addTooltip(format.green("Comes from breaking Tools and Anvils"));
//addShapeless(<ore:scrapGtStone>.firstItem*2,[HHammer,<ore:dirt>]);
//addShapeless(<ore:scrapGtStone>.firstItem*4,[HHammer,stn]);
// for item in <ore:dustAnyStone>.items // Scrap factory
// {MTUtilsGT.addCustomRecipe("gt.recipe.shredder", true, 8, 128, 0, [10000], [item], [], [], [<ore:scrapGtStone>.firstItem*9]);
// MTUtilsGT.addCustomRecipe("gt.recipe.mortar", true, 8, 128, 0, [10000], [item], [], [], [<ore:scrapGtStone>.firstItem]);}
addShapedr(<minecraft:brick_block>,[[scp,brk,scp],[brk,scp,brk],[scp,brk,scp]]);
addShaped(<minecraft:stone>*5,[[stn,scp,stn],[scp,stn,scp],[stn,scp,stn]]);
MTUtilsGT.addCustomRecipe("gt.recipe.anvil", true, 8, 128, 0, [10000], [<minecraft:stone>], [], [], [splatei*4]);
MTUtilsGT.addCustomRecipe("gt.recipe.anvil.bend.big", true, 8, 128, 0, [10000], [splatei], [], [], [sbplatei]);

// CampFire
mods.campfirebackport.addCampfireIgnitor("both", <ore:craftingFirestarter>, "damageable");
remover(<campfirebackport:campfire_base>);remover(<campfirebackport:campfire>);
addShaped(<campfirebackport:campfire_base>,[[n,<ore:stickWood>],[<ore:itemGrassDry>,<ore:craftingFirestarter>,<ore:itemGrassDry>],[<ore:logWood>,<ore:logWood>,<ore:logWood>]]);
addShapeless(<campfirebackport:campfire>,[<campfirebackport:campfire_base>,<ore:craftingFirestarter>]);

//Chest
<betterstorage:cardboardBox>.addTooltip(format.yellow("You need Imagination to use this"));<betterstorage:cardboardBox>.addTooltip(format.red("a chest that keeps its content, but it has a duribility"));
<minecraft:chest>.addTooltip(format.green("You Can use an Axe Instead of Saw to make this"));
addShapedr(<minecraft:chest>,[[SHammer,<ore:plateAnyWood>,<ore:craftingToolSawAxe>],[<ore:ringAnyWood>,<ore:stickAnyWood>,<ore:ringAnyWood>],[<ore:plateAnyWood>,<ore:beamWood>,<ore:plateAnyWood>]]);
addShaped(<minecraft:chest>,[[<ore:craftingToolSawAxe>,<ore:plateAnyWood>,SHammer],[<ore:ringAnyWood>,<ore:stickAnyWood>,<ore:ringAnyWood>],[<ore:plateAnyWood>,<ore:beamWood>,<ore:plateAnyWood>]]);
addShapedr(<Backpack:backpack:31999>,[[HHammer,<ore:plateObsidian>,Saw],[<ore:ringObsidian>,<ore:stickObsidian>,<ore:ringObsidian>],[<ore:plateObsidian>,<ore:gemEnderEye>,<ore:plateObsidian>]]);
remove(<minecraft:ender_chest>);

//Bed
<minecraft:bed>.addTooltip(format.green("Goodbuy Dark ages, and Hello Darker Ages!!"));
//<ore:pillow>.add(<minecraft:feather>);
<ore:pillow>.add(<minecraft:wool:0>);
<ore:sheets>.add(<OpenBlocks:sleepingBag>);
<ore:bedframe>.add(<IC2:blockScaffold>);
addShapedr(<minecraft:bed>,[[<ore:sheets>,<ore:sheets>,<ore:pillow>],[<ore:screwBronze>,<ore:plateBronze>,<ore:screwBronze>],[<ore:bedframe>,Screwdriver,<ore:bedframe>]]);
remove(<harvestthenether:netherbedItem>);
addShapedr(<CarpentersBlocks:itemCarpentersBed>,[[<ore:sheets>,<ore:sheets>,<ore:pillow>],[<ore:screwBronze>,<ore:plateBronze>,<ore:screwBronze>],[<CarpentersBlocks:blockCarpentersBlock>,Screwdriver,<CarpentersBlocks:blockCarpentersBlock>]]);

val screwMetals = [<ore:screwBronze>,<ore:screwAnyIron>,<ore:screwLead>] as minetweaker.item.IIngredient[];
//IC2 scaffs
remover(<IC2:blockScaffold>);
for scw in screwMetals {
addShaped(<IC2:blockScaffold>*5,[[<ore:plateAnyNormalWood>,Screwdriver,<ore:plateAnyNormalWood>],[<ore:stickAnyNormalWood>,scw,<ore:stickAnyNormalWood>],[<ore:plateAnyNormalWood>,<ore:plateAnyNormalWood>,<ore:plateAnyNormalWood>]]);}

//IE scaff tWood
remover(<ImmersiveEngineering:woodenDecoration:5>);
for scw in screwMetals {
addShaped(<ImmersiveEngineering:woodenDecoration:5>*5,[[<ore:plateAnyTreatedWood>,Screwdriver,<ore:plateAnyTreatedWood>],[<ore:stickAnyTreatedWood>,scw,<ore:stickAnyTreatedWood>],[<ore:plateAnyTreatedWood>,<ore:plateAnyTreatedWood>,<ore:plateAnyTreatedWood>]]);}

//Carpenters Block
remover(<CarpentersBlocks:blockCarpentersBlock>);
for scw in screwMetals {
addShaped(<CarpentersBlocks:blockCarpentersBlock>*10,[[<ore:stickAnyTreatedWood>,Screwdriver,<ore:stickAnyTreatedWood>],[<ore:plateAnyTreatedWood>,scw,<ore:plateAnyTreatedWood>],[<ore:stickAnyTreatedWood>,<ore:stickAnyTreatedWood>,<ore:stickAnyTreatedWood>]]);}

//Ladders

