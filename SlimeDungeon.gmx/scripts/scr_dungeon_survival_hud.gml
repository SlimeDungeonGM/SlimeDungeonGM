draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_text(4,16*0+4, "[F1] Help | " + "Dungeon Points:" +string(dp));
draw_text(4,16*1+4, "Health:" +string(hp)+"/"+string(maxhp));
if(instance_exists(obj_view)){
    var viewtext = "";
    if(obj_view.bcameracontrol){
        viewtext = "Spectator";
    }
    if(obj_view.bfollowplayer){
        viewtext = "Creature";
    }
    draw_text(4,16*2+4, "View Mode:" + viewtext);
}
