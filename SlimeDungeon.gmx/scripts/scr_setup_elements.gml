global.element_colour = ds_map_create();
if !ds_map_exists(global.element_colour, NO_ELEMENT) {
    ds_map_add(global.element_colour,NO_ELEMENT,make_colour_rgb(255,255,255));
}
if !ds_map_exists(global.element_colour, FIRE_ELEMENT) {
    ds_map_add(global.element_colour,FIRE_ELEMENT,make_colour_rgb(255,124,124));
}
if !ds_map_exists(global.element_colour, WATER_ELEMENT) {
    ds_map_add(global.element_colour,WATER_ELEMENT,make_colour_rgb(124,124,255));
}
if !ds_map_exists(global.element_colour, AIR_ELEMENT) {
    ds_map_add(global.element_colour,AIR_ELEMENT,make_colour_rgb(170,170,170));
}
if !ds_map_exists(global.element_colour, EARTH_ELEMENT) {
    ds_map_add(global.element_colour,EARTH_ELEMENT,make_colour_rgb(124,255,124));
}
