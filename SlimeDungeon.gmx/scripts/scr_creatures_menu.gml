var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;

draw_set_color(c_blue);
draw_rectangle(xx-392,yy-72,xx+392,yy+160,false);
draw_set_color(c_white);

//global.Creature_Counts = 0;
//global.Creature_OldCounts = 0;
if(global.Creature_Counts != global.Creature_OldCounts){
	global.Creature_OldCounts = global.Creature_Counts;
	show_debug_message("UPDATE CREATURE LIST!");
	scr_dungeon_update_creature_list();
}


draw_text(xx,yy-92, "Creatures own:"+string(global.Creature_Counts));

draw_set_halign(fa_left);

for(var i=0; i < array_length_1d(creaturetexts) ;i++){

    //draw_set_colour(c_gray)
    //if(i == status_index){
        //draw_set_colour(c_white);
    //}
    
    draw_text((xx)-320,yy-64+(i*32),creaturetexts[i]);
}
