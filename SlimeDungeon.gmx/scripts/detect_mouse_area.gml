var px = argument0;
var py = argument1;

var bwidth = argument2;
var bheight = argument3;

var bdisplay = false;
//if is_real(argument4){
//    bdisplay = argument4;
//}

var screenx = device_mouse_x_to_gui(0);
var screeny = device_mouse_y_to_gui(0);

draw_rectangle(px,py,px+bwidth,py+bheight,false);


if(screenx > px and screenx < (bwidth+px) and screeny > (py) and screeny < (bheight+py)){
    return true;
}else{
    return false;
}
