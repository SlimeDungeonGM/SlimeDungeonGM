///select dungeon to display
var menu_index = argument0;
switch(menu_index){
    case 0:
        currentmenu = scr_statusmenu;
        break;
    case 1:
        currentmenu = scr_creatures;    
        break;
    case 2:
        currentmenu = scr_abilitiesmenu;    
        break;
    case 3:
        currentmenu = scr_researchmenu;    
        break;
    case 4:
        currentmenu = scr_itemsmenu;    
        break;
    default:
        break;
}
