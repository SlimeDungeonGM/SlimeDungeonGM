///draw
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;

//draw_text(xx,yy-92, "Status Menu");
//draw_text(xx-64,yy-92, "Back[Z]");

if(instance_exists(obj_dungeon_status)){
   status[0] = "Name:" + obj_dungeon_status.name;
   status[1] = "Race:" + obj_dungeon_status.race;
   status[2] = "Gender:" + string(obj_dungeon_status.born_gender);
   status[3] = "Age:" + string(obj_dungeon_status.age);
   status[4] = "Level:" + string(obj_dungeon_status.level);
   status[5] = "Rank:" + obj_dungeon_status.threatlevel;
}

for(var i=0; i<= array_length_1d(status)-1;i++){
    draw_set_colour(c_gray)
    if(i == status_index){
        draw_set_colour(c_white);
    }
    draw_text((xx)-256,yy-64+(i*32),status[i]+"");
}

