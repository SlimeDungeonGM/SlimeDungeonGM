///draw
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;
draw_set_colour(c_white);
//draw_text(xx,yy-92, "Items Menu");
//draw_text(xx-64,yy-92, "Back[Z]");

var itemcounts = 0;
if(instance_exists(obj_dungeon_status)){
    itemcounts = array_height_2d(global.dm_inventory);
}

draw_set_color(c_blue);
draw_rectangle(xx-392,yy-72,xx+392,yy+160,false);
draw_set_color(c_white);


draw_text(xx,yy-92, "Items own:"+string(itemcounts));

for(var i=0; i < array_height_2d(global.dm_inventory);i++){

    //draw_set_colour(c_gray)
    //if(i == status_index){
        //draw_set_colour(c_white);
    //}
    draw_text((xx)-256,yy-64+(i*32),global.dm_inventory[i,0]+"");
}

