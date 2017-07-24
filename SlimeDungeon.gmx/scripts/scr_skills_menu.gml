///draw
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;
draw_set_colour(c_white);
//draw_text(xx-64,yy-92, "Back[Z]");
var skillcounts = 0;

if(instance_exists(obj_dungeon_status)){
    skillcounts = array_length_1d(global.dm_skills);
}

draw_text(xx,yy-92, "Skill owns:"+string(skillcounts));
