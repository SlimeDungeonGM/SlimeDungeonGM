//var creatures = array_create(0);
creatures[0] = obj_slime;
creatures[1] = obj_flame_slime;
creatures[2] = obj_chinlin;

var counts = 0;

for(var i = 0; i < array_length_1d(creatures); i++){
	var obj_count = scr_getobjectcount(creatures[i]);
	counts += obj_count;
}

show_debug_message("creatures: "+string(counts));

global.Creature_Counts = counts;

