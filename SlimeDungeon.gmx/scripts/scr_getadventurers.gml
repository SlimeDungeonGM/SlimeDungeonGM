
creatures[0] = obj_monster_slime;

var count = 0;

for(var i = 0; i < array_length_1d(creatures);i++){
    var obj_count = scr_objectcount(creatures[i]);
    count += obj_count;
}
show_debug_message("Creatures:"+string(count));






