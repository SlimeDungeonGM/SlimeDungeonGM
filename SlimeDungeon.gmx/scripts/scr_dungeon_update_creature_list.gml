//global.dm_creatures = creatures;
//creaturetexts

//creaturetexts = array_create(0);
creaturetexts = noone;

//var creatures = array_create(0);
var creatures = noone;
creatures[0] = obj_slime;
creatures[1] = obj_chinlin;
creatures[2] = obj_flame_slime;

//var counts = 0;
var creature_type_count = 0;

for(var i = 0; i < array_length_1d(creatures); i++){
	var obj_count = scr_getobjectcount(creatures[i]);
	if(obj_count != 0){
		creaturetexts[creature_type_count] = creatures[i].name + " : "+ string(obj_count);
		creature_type_count++;
	}
	//counts += obj_count;
}
//show_debug_message("creatures: "+string(counts));
//global.Creature_Counts = counts;

