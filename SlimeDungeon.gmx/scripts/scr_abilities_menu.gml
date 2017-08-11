///draw
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;
//draw_set_colour(c_white);
//draw_text(xx,yy-92, "Abilities Menu");
//draw_text(xx-64,yy-92, "Back[Z]");

var skillcounts = 0;
if(instance_exists(obj_dungeon_status)){
    skillcounts = array_height_2d(global.dm_skills);
}


draw_set_color(c_blue);
draw_rectangle(xx-392,yy-72,xx+392,yy+160,false);
draw_set_color(c_white);
draw_set_halign(fa_left);

draw_text(xx,yy-92, "Skills own:"+string(skillcounts));

for(var i=0; i < array_height_2d(global.dm_skills);i++){

    //draw_set_colour(c_gray)
    //if(i == status_index){
        //draw_set_colour(c_white);
    //}
    var bowned = "buy";
    if(global.dm_skills[i,4] == 0){
        bowned = "buy: " + string(global.dm_skills[i,5]) + " DP";
    }else{
        bowned = "own";    
    }
    
    draw_text((xx)-320,yy-64+(i*32),global.dm_skills[i,0]+" ["+bowned+"]");
}

