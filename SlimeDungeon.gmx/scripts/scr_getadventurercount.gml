adventurers[0] = obj_thief;
adventurers[1] = obj_warrior;
adventurers[2] = obj_mage;
adventurers[3] = obj_cleric;
adventurers[4] = obj_archer;

var counts = 0;

for(var i = 0; i < array_length_1d(adventurers); i++){
	var obj_count = scr_getobjectcount(adventurers[i]);
	counts += obj_count;
}

show_debug_message("Adventurers: "+string(counts));
global.Adventurer_Counts = counts;

