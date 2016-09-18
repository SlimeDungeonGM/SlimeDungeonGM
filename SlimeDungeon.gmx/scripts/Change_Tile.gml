/// Change Tile [instance id,Tile]
inst = argument[0];

with (inst){
    instance_change(s_Edit_Tiles_Pointer.tile,true);
    global.Tile[(x div 32)*2+1,y div 32]= object_get_name(s_Edit_Tiles_Pointer.tile);
    }