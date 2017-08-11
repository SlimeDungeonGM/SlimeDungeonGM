_WALL = WALL;
_FLOOR = FLOOR;


show_debug_message("update?");

var walls = 0;
var floors = 0;

with(all){
	var _CELLWIDTH = CELLWIDTH;
	var _CELLHEIGHT = CELLHEIGHT;
	var oname = object_get_name(object_index);
	//show_debug_message("object name:"+oname);
	//instance_id
	if(scr_floor_check(object_index)){
		//show_debug_message("object name:"+oname);
		//show_debug_message("Found Floor!")
		mp_grid_clear_cell(obj_level_generate_dungeon.grid_path, x/_CELLWIDTH, y/_CELLHEIGHT);
		floors += 1;
	}
	
	if(scr_wall_check(object_index)){
		//show_debug_message("object name:"+oname);
		//show_debug_message("Found wall!")
		mp_grid_add_cell(obj_level_generate_dungeon.grid_path, x/_CELLWIDTH, y/_CELLHEIGHT);
		walls += 1;
	}	
}
show_debug_message("floors:"+ string(floors));
show_debug_message("walls:"+ string(walls));

