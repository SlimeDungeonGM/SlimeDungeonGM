var inst,xx;

inst = instance_nearest(x, y, obj_monster_parent);//works
if inst != id
{
	var dir = point_direction(x,y,inst.x,inst.y);
	var dirx = lengthdir_x(32,dir);
	var diry = lengthdir_y(32,dir);
	
	if(alarm[10] <= 0){
		//show_debug_message("DIR:"+string(dir));
		//show_debug_message("HEALTH:"+string(hp));
		//show_debug_message("HEALTH EMENY:"+string(inst.hp));
		//show_debug_message(" POINT DIR:"+string(dirx) +":"+ string(diry));
		dirx = x + dirx;
		diry = y + diry;
		
		//show_debug_message("DIR:"+string(dirx) +":"+ string(diry));
		
		var damage = instance_create(dirx,diry, obj_damage);
		//var damage = instance_create_layer(x,y,"effects", obj_damage);
		//damage.sprite_index = //image draw
		damage.creator = id;
		//damage.damage = obj_player_stats.attack;
		damage.damage = 5;
		
		//attacked = true;
		alarm[10] = room_speed *2;
	}
}


