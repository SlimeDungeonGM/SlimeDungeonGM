///input state
if(alarm[0] <= 0){
    if(obj_input.swap_key){
        show_debug_message("back?scr_creaturesmenu_state");
        current_state = scr_dungeonmenu_state;
    }
}
