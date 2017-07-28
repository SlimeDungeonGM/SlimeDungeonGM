///draw
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;
draw_set_colour(c_white);
draw_set_halign(fa_left);

//draw_text(xx,yy-92, "Abilities Menu");
//draw_text(xx-64,yy-92, "Back[Z]");

var skillcounts = 0;
if(instance_exists(obj_dungeon_status)){
    skillcounts = array_height_2d(global.dm_skills);
}
draw_text(xx,yy-92, "Skills own:"+string(skillcounts));

var list_count = 0;
//abilities_index
if(abilities_index <= 0){
    abilities_index = 0;
}
//check if array list max list to not move
if(array_height_2d(global.dm_skills) <= list_max){
    abilities_index = 0;
}else{
    if(abilities_index > array_height_2d(global.dm_skills) - list_max){
        abilities_index = array_height_2d(global.dm_skills) - list_max;
    }
}

for (i = abilities_index; i < array_height_2d(global.dm_skills); i++){    
    if(list_count >= list_max){
        break;
    }
    //if(screenx > 4 and screenx < (32+4) and screeny > (yy - 64 + (32+4)*list_count) and screeny < (yy - 32 + (32+4)*list_count)){
    //}
    
    var bowned = "buy";
    if(global.dm_skills[i,4] == 0){
        bowned = "buy: " + string(global.dm_skills[i,5]) + " DP";
    }else{
        bowned = "own";    
    }   
    draw_text((xx)-256,yy-64+(list_count*32)+32,global.dm_skills[i,0]+" ["+bowned+"]");
               
    //draw_text(48,yy+((32+4)*list_count)-64,slotlist[ i, 0]);
    //if(slotlist[ i, 1] != noone){
        //var xOffset = sprite_get_xoffset(slotlist[ i, 1]);
        //var yOffset = sprite_get_yoffset(slotlist[ i, 1]);
        //draw_sprite(slotlist[ i, 1],0,4+xOffset,yy+((32+4)*list_count)-64+yOffset);
    //}else{
        //draw_sprite(spr_slot,0,4,yy+((32+4)*list_count)-64);
    //}
    list_count++;
}
//var detect = detect_mouse_area((xx)-256,yy-64+(0*32),32,32);
//show_debug_message(string(detect));
draw_text((xx)-256,yy-64+(0*32),"[^]");

draw_text((xx)-256,yy-64+(6*32),"[v]");

//var detect = detect_mouse_area((xx)-256,yy-64+(6*32),32,32);


