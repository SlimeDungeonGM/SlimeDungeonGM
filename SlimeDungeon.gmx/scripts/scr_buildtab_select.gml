///select dungeon to display
var menu_index = argument0;
switch(menu_index){
    case 0:
        obj_dungeonbuild_menu.slotlist = obj_dungeonbuild_menu.tileblock;
        break;
    case 1:
        obj_dungeonbuild_menu.slotlist = obj_dungeonbuild_menu.traps;
        break;
    case 2:
        obj_dungeonbuild_menu.slotlist = obj_dungeonbuild_menu.tools;
        break;
    case 3:
        obj_dungeonbuild_menu.slotlist = obj_dungeonbuild_menu.items;
        break;
    case 4:
        obj_dungeonbuild_menu.slotlist = obj_dungeonbuild_menu.creatures;
        break;
    default:
        break;
}
