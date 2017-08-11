adventurers[0] = obj_thief;
adventurers[1] = obj_warrior;
adventurers[2] = obj_mage;
adventurers[3] = obj_cleric;
adventurers[4] = obj_archer;

show_debug_message("create party");

var rng = irandom(array_length_1d(adventurers));

show_debug_message("create party:"+string(rng));

