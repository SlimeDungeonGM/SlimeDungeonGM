
// ELEMENTAL COLOURS
global.element_colour = ds_map_create();
if !ds_map_exists(global.element_colour, elements.none) {
    ds_map_add(global.element_colour,elements.none,make_colour_rgb(255,255,255));
}
if !ds_map_exists(global.element_colour, elements.fire) {
    ds_map_add(global.element_colour,elements.fire,make_colour_rgb(255,124,124));
}
if !ds_map_exists(global.element_colour, elements.water) {
    ds_map_add(global.element_colour,elements.water,make_colour_rgb(124,124,255));
}
if !ds_map_exists(global.element_colour, elements.air) {
    ds_map_add(global.element_colour,elements.air,make_colour_rgb(170,170,170));
}
if !ds_map_exists(global.element_colour, elements.earth) {
    ds_map_add(global.element_colour,elements.earth,make_colour_rgb(124,255,124));
}

// ELEMENTAL STRONG VS
global.element_strength = ds_map_create();
if !ds_map_exists(global.element_strength, elements.water) {
    ds_map_add(global.element_strength,elements.water,elements.fire);
}
if !ds_map_exists(global.element_strength, elements.fire) {
    ds_map_add(global.element_strength,elements.fire,elements.air);
}
if !ds_map_exists(global.element_strength, elements.air) {
    ds_map_add(global.element_strength,elements.air,elements.earth);
}
if !ds_map_exists(global.element_strength, elements.earth) {
    ds_map_add(global.element_strength,elements.earth,elements.water);
}

// ELEMENTAL WEAK VS
global.element_weakness = ds_map_create();
if !ds_map_exists(global.element_weakness, elements.water) {
    ds_map_add(global.element_weakness,elements.water,elements.earth);
}
if !ds_map_exists(global.element_weakness, elements.fire) {
    ds_map_add(global.element_weakness,elements.fire,elements.water);
}
if !ds_map_exists(global.element_weakness, elements.air) {
    ds_map_add(global.element_weakness,elements.air,elements.fire);
}
if !ds_map_exists(global.element_weakness, elements.earth) {
    ds_map_add(global.element_weakness,elements.earth,elements.air);
}
