///draw
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;
draw_set_colour(c_white);
//draw_text(xx,yy-92, "Abilities Menu");
//draw_text(xx-64,yy-92, "Back[Z]");

var skillcounts = 0;
if(instance_exists(obj_dungeon_status)){
    skillcounts = array_height_2d(global.dm_skills);
}
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
    
    
    draw_text((xx)-256,yy-64+(i*32),global.dm_skills[i,0]+" ["+bowned+"]");
}
