///input state
if(alarm[0] <= 0){
    var xx = display_get_gui_width()/2;
    var yy = display_get_gui_height()/2;
    /*
    if(obj_input.swap_key){
        show_debug_message("back?scr_abilitiesmenu_state");
        current_state = scr_dungeon_menu_state;
    }
    */
    if(detect_mouse_area((xx)-256,yy-64+(0*32),32,32)){
        if(mouse_check_button(mb_left) == true){
            show_debug_message("press");            
            abilities_index -= 1;
            alarm[0] = room_speed/6;
        }
    }
    
    if(detect_mouse_area((xx)-256,yy-64+(6*32),32,32)){
        if(mouse_check_button(mb_left) == true){
            show_debug_message("press");
            abilities_index += 1;
            alarm[0] = room_speed ;
        }
    }    
}
