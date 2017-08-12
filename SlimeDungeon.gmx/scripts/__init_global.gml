/// default var only

global.Adventurers = 0;
global.Adventurer_Current = 0;
global.Adventurer_Counts = 0; // number of current adventure in the dungeon

global.Creatures = 0;
global.Creature_Current = 0;
global.Creature_Counts = 0;
global.Creature_OldCounts = 0;

global.Dungeon_Threat_Level = 0;
global.Dungeon_Helper = noone;
global.Dungeon_Map = noone;
global.Dungeon_Path = noone;
global.Dungeon_Time = 0;
global.Dungeon_RaidTime = 0; //Time when party or adventure explore dungeon
global.Dungeon_RNGTime = 0;

global.Dungeon_Upgrading = false; //for kick party for dungeon upgrading
global.level_generate = false;

//debug tools
global.bdisplay_map_path = false;
global.bdisplay_creature_path = false;

global._ismenu = true;
global._ishud = true;

//global._isdefault = true;
//global._isdefault = false;
//global.level_generate = true; //create level default boolean
global.level_generate = false; //create level default boolean

global._display_dungeon = true;
global._display_player = false;
global.pathingWidth = room_width div CELL_WIDTH;
global.pathingHeight = room_height div CELL_HEIGHT;
global.pathing = mp_grid_create(0, 0, global.pathingWidth, global.pathingHeight, CELL_WIDTH, CELL_HEIGHT);
global.wallConnections[global.pathingWidth, global.pathingHeight] = 0;
