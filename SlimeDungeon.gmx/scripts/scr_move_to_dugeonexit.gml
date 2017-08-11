//physics does work with path_start
_CELLWIDTH = CELLWIDTH;
_CELLHEIGHT = CELLHEIGHT;

//if(path !=noone){
//	show_debug_message("PATH: "+string(path_get_number(path)));
//}

//if(bpath_start){
	var xx = (obj_dungeon_exit.x div _CELLWIDTH) * _CELLWIDTH + _CELLWIDTH/2;
	var yy = (obj_dungeon_exit.y div _CELLHEIGHT) * _CELLHEIGHT + _CELLHEIGHT/2;
	
	if(mp_grid_path(global.grid_path, path,x,y,xx,yy,true)){
		//show_debug_message("path pass!");
		
		//if the target distance is close change state
		if(point_distance(x,y,xx,yy) < 5){
			//path_step++;
			script_state = noone;
			instance_destroy();//destroy adventure when exit the dungeon
		}
		
		var px = path_get_point_x(path,path_step);
		var py = path_get_point_y(path,path_step);
		//show_debug_message("path x:"+string(px)+ ":"+string(py));
		//mp_potential_step(px,py,3,false);//doesnt work with the physics checked
		
		
		if(object_get_physics(object_index) ){
			var facedir = point_direction(x,y,px,py);
			var dirx = lengthdir_x(3,facedir);
			var diry = lengthdir_y(3,facedir);
			phy_position_x +=dirx;
			phy_position_y +=diry;
		}else{
			mp_potential_step(px,py,3,false);
		}
		
		//path_start(path, 5, path_action_stop, false);
		//show_debug_message( "PATH:" + string( path_get_length(path)));
		//show_debug_message( "PATH:" + string( path_get_number(path)));
		//path_get_point_x()
		//bpath_start = false;
		//x+=5;
		//phy_position_x += 5;
		//phy_position_x = x;
		
	}else{
		show_debug_message("path fail!");
	}
//}

