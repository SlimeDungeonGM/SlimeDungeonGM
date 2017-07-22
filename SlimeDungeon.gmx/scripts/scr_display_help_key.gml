//draw_text(4,16+4, "Help Keys");
draw_set_colour(c_gray);
draw_rectangle(0, 0, 200, 200, 0);
draw_set_colour(c_white);

for(var i=0; i<= array_length_1d(helpkeys)-1;i++){
    draw_text(4,i*16,helpkeys[i]);
}
