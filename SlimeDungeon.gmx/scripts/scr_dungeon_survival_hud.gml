draw_set_colour(c_white);
draw_set_halign(fa_left);

draw_text(4,16*0+6, "(F1) Help | " + "DP:" +string(dp));
draw_text(4,16*1+6, "Health:" +string(100));
var cameratext = "none";
if(toggle_camera){
	cameratext = "Spectator";
}else{
	cameratext = "Player";
}

draw_text(4,16*2+6, "View Mode:" + cameratext);

draw_text(4,16*4+6, "Creatures:" + string(global.Creature_Counts));
draw_text(4,16*5+6, "Adventurers:" + string(global.Adventurer_Counts));

