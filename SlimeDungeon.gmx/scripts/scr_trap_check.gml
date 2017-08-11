objlist[0] = obj_spike.object_index;

var objt = argument0;
var bfound = false;
for(var i = 0; i < array_length_1d(objlist);i++){
	if(objlist[i] == objt){
		bfound = true;
	}
}
return bfound;

