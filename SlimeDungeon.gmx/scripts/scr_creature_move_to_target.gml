var inst,xx;

inst = instance_nearest(x, y, obj_adventurer_parent);//works

if inst != id
{
    if(inst == noone){
        exit;
    }

    if(inst.hp <= 0){
        exit;
    }

    //var dir = point_direction(x,y,inst.x,inst.y);
    //var dirx = lengthdir_x(3,dir);
    //var diry = lengthdir_y(3,dir);

    if(object_get_physics(object_index) ){
        var facedir = point_direction(x,y,inst.x,inst.y);
        var dirx = lengthdir_x(3,facedir);
        var diry = lengthdir_y(3,facedir);
        phy_position_x +=dirx;
        phy_position_y +=diry;
    }else{
        mp_potential_step(inst.x,inst.y,3,false);
    }
}
