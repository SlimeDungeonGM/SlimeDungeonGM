///input state
if(alarm[0] <= 0){
    if(obj_input.right_key){
        if(menu_index < array_length_1d(option)-1){
            menu_index++;
        }else{
            menu_index = 0;
        }
        scr_dungeonmenuselect(menu_index);
        alarm[0] = room_speed/6;
    }

    if(obj_input.left_key){
        if(menu_index > 0){
            menu_index--;
        }else{
            menu_index = array_length_1d(option)-1;
        }
        scr_dungeonmenuselect(menu_index);        
        alarm[0] = room_speed/6;
    }
    
    
    if(obj_input.dash_key){
        switch(menu_index){
            case 0:
                current_state = scr_statusmenu_state;
                break;
            case 1:
                current_state = scr_creaturesmenu_state;
                break;
            case 2:
                current_state = scr_abilitiesmenu_state;
                break;
            case 3:
                current_state = scr_researchmenu_state;
                break;
            case 4:
                current_state = scr_itemsmenu_state;
                break;
            default:
                break;
        }
        obj_input.dash_key = false;
    }
    
}
