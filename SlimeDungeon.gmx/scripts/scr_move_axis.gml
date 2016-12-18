///scr_move_axis
//mp_potential_step_object(x,y,spd,obj_wall);
// in progress change to use potential step instead of axis
var dir = point_direction(xprevious,yprevious,x,y);
var hspd = lengthdir_x(spd,dir);
var vspd = lengthdir_y(spd,dir);
if(hspd != 0){
    image_xscale = sign(hspd);
}
scr_get_face(dir);

phy_position_x += hspd
phy_position_y += vspd;

