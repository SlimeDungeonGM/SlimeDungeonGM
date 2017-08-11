var tab_index = argument0;

obj_admin.bshow_adventure = false;
obj_admin.bshow_dungeon = false;
obj_admin.bshow_map = false;

switch(tab_index){
	case 0:
		obj_admin.bshow_adventure = true;
		break;
	case 1:
		obj_admin.bshow_dungeon = true;
		break;
	case 2:
		obj_admin.bshow_map = true;
		break;
}

