_WALL = WALL;
_FLOOR = FLOOR;

show_debug_message("update?");

var walls = 0;
var floors = 0;
var allcounts = 0;

with(all){
    var _CELLWIDTH = CELLWIDTH;
    var _CELLHEIGHT = CELLHEIGHT;
    //var oname = object_get_name(object_index);
    //show_debug_message("object name:"+oname);
    //instance_id
    if(scr_floor_check(object_index)){
        //show_debug_message("object name:"+oname);
        //show_debug_message("Found Floor!")
        mp_grid_clear_cell(global.grid_path, x/_CELLWIDTH, y/_CELLHEIGHT);
        		floors += 1;
    }
	
    if(scr_wall_check(object_index)){
        //show_debug_message("object name:"+oname);
        //show_debug_message("Found wall!")
        mp_grid_add_cell(global.grid_path, x/_CELLWIDTH, y/_CELLHEIGHT);
        		walls += 1;
    }	
    	allcounts++;
}

grid_path = global.grid_path;
show_debug_message("Floors:"+ string(floors));
show_debug_message("Walls:"+ string(walls));
show_debug_message("All:"+ string(allcounts));

