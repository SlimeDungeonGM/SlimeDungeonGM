///select dungeon to display
var menu_index = argument0;
switch(menu_index){
    case 0:
        obj_dungeon_menu.currentmenu = scr_status_menu;
        obj_dungeon_menu.current_state = scr_dungeon_menu_state;
        break;
    case 1:
        obj_dungeon_menu.currentmenu = scr_creatures_menu;
        obj_dungeon_menu.current_state = scr_creatures_menu_state;
        break;
    case 2:
        obj_dungeon_menu.currentmenu = scr_abilities_menu;
        obj_dungeon_menu.current_state = scr_abilities_menu_state;
        break;
    case 3:
        obj_dungeon_menu.currentmenu = scr_research_menu;
        obj_dungeon_menu.current_state = scr_research_menu_state;
        break;
    case 4:
        obj_dungeon_menu.currentmenu = scr_items_menu;
        obj_dungeon_menu.current_state = scr_items_menu_state;
        break;
    default:
        break;
}
