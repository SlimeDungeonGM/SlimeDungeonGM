//https://forum.yoyogames.com/index.php?threads/get-list-of-child-objects-for-a-parent-object.2915/
// run that once, at the very beginning of the game
// the objects hierarchy will be then quickly available for the rest, as long as you don't change it

global.hierarchy = ds_map_create();
var obj = 0;
var parent;

for (var obj = 0; object_exists(obj); obj++)
{
    // adding a new list assigned to the object, if needed
    if (!ds_map_exists(global.hierarchy, obj)) ds_map_add_list(global.hierarchy, obj, ds_list_create());

    // this will populate parent's list with direct children
    parent = object_get_parent(obj);
    if (object_exists(parent))
    {
        if (!ds_map_exists(global.hierarchy, parent)) ds_map_add_list(global.hierarchy, parent, ds_list_create());
        ds_list_add(global.hierarchy[? parent], obj);
        //show_debug_message("add?"+object_get_name(obj));
    }

    // this will populate parent's list with all descendant objects
    // if you want to use that variation instead, remove the direct children variation
    /*
    parent = object_get_parent(obj);
    for (parent = object_get_parent(obj); object_exists(parent); parent = object_get_parent(parent))
    {
        if (!ds_map_exists(global.hierarchy, parent)) ds_map_add_list(global.hierarchy, parent, ds_list_create());
        ds_list_add(global.hierarchy[? parent], obj);
    }
    */
}

var children = global.hierarchy[? obj_lifeform_parent];
show_debug_message("LIST?");
show_debug_message(string(children));
var child = children[| irandom(ds_list_size(children)-1) ];
show_debug_message(string(child));
show_debug_message(string(object_get_name(child)));


