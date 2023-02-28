//Make GT blocks interachable with other mods blocks
//Make GT Marble, Chisel Marble and Railcraft Quarried Stone interchangable.
//<ore:marble>.add(<Railcraft:cube:7>);


//Make GT Basal and Railcraft Abyssal Stone interchangable.
//mods.chisel.Groups.addGroup("basalt");
//mods.chisel.Groups.addVariation("basalt", <Railcraft:cube:6>);

//Remove trapped chest iron exploit
<ore:chest>.remove(<minecraft:trapped_chest>);

//Remove Chisel crafting shortcuts
//Remove Ornate, Etched and Cobblestone variants from Chisel as these require other processes than straight crafting.
//mods.chisel.Groups.removeVariation(<Railcraft:brick.quarried:3>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.quarried:4>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.quarried:5>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.abyssal:3>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.abyssal:4>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.abyssal:5>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.bleachedbone:3>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.bleachedbone:4>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.bleachedbone:5>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.bloodstained:3>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.bloodstained:4>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.bloodstained:5>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.frostbound:3>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.frostbound:4>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.frostbound:5>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.infernal:3>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.infernal:4>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.infernal:5>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.sandy:3>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.sandy:4>);
//mods.chisel.Groups.removeVariation(<Railcraft:brick.sandy:5>);

//Fix missing Chisel recipes
//Railcraft Netherstone is missing a chisel config.
//mods.chisel.Groups.addGroup("RCNetherStone");
//mods.chisel.Groups.addVariation("RCNetherStone", <Railcraft:brick.nether:1>);
//mods.chisel.Groups.addVariation("RCNetherStone", <Railcraft:brick.nether:2>);

//Add GT Block of Aluminum to Chisel group.



//Remove dye cheats
//Remove Woolenclay from being changable into all the color variants without dyes.
//mods.chisel.Groups.removeGroup("woolen_clay");

//Remove carpet from being changable into all the color variants without dyes.
//mods.chisel.Groups.removeGroup("carpet");

//Remove carpet blocks from being changable into all the color variants without dyes.
//mods.chisel.Groups.removeGroup("carpet_block");

//Quality of life changes
//Add charcoal as an alternative for grimstone and hexplate blocks instead of coal
//recipes.remove(<chisel:grimstone>);
//recipes.addShaped(<chisel:grimstone> * 8, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],[<minecraft:stone>, <minecraft:coal:*>, <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
//recipes.addShaped(<chisel:hexPlating> * 8, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],[<minecraft:stone>, <gregtech:gt.blockgem3:4>, <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
