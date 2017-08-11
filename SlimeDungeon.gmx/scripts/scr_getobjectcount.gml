var obj_index = argument0;
var count = 0;
with(obj_index){
	if(instance_exists(object_index)){
		//show_debug_message("FOUND SLIME!" + string(instance_id));
		count++;
	}
}

return count;

