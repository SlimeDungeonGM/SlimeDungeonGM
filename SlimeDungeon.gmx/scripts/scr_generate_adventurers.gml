adventurers[0] = obj_thief;
adventurers[1] = obj_warrior;
adventurers[2] = obj_mage;
adventurers[3] = obj_cleric;
adventurers[4] = obj_archer;


if(instance_exists(obj_dungeon_exit)){
	var xx = obj_dungeon_exit.x;
	var yy = obj_dungeon_exit.y;
	
	var obj_tmp = instance_create(xx,yy,obj_thief);
	scr_getadventurercount();	
}

