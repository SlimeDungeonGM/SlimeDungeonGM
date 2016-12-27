var xPos = argument[0];
var yPos = argument[1];
var val = argument[2]
var up = (val & 1 != 0);
var down = (val & 2 != 0);
var left = (val & 4 != 0);
var right = (val & 8 != 0);
var upleft = (val & 16 != 0);
var upright = (val & 32 != 0);
var downleft = (val & 64 != 0);
var downright = (val & 128 != 0);


if (((!left && upleft) || (!right && upright))  && up)
{
    draw_sprite_stretched(spr_dirt,0,x,y-16,32,16);
    if (!left && upleft)
    {
        draw_sprite(wall_testing,12,xPos,yPos-16);
    }
    if (!right && upright)
    {
        draw_sprite(wall_testing,12,xPos+16,yPos-16);
    }
}
if (up)
{
    if (left)
    {
        draw_sprite(wall_testing,5,xPos,yPos-16);
    }
    else
    {
        draw_sprite(wall_testing,2,xPos,yPos-16);
    }
    if (right)
    {
        draw_sprite(wall_testing,5,xPos+16,yPos-16);
    }
    else
    {
        draw_sprite(wall_testing,3,xPos+16,yPos-16);
    }
}
else
{
    if (left)
    {
        draw_sprite(wall_testing,4,xPos,yPos-16);
    }
    else
    {
        draw_sprite(wall_testing,0,xPos,yPos-16);
    }
    if (right)
    {
        draw_sprite(wall_testing,4,xPos+16,yPos-16);
    }
    else
    {
        draw_sprite(wall_testing,1,xPos+16,yPos-16);
    }
}
if (down)
{
    if (left)
    {
        draw_sprite(wall_testing,5,xPos,yPos);
    }
    else
    {
        draw_sprite(wall_testing,2,xPos,yPos);
    }
    if (right)
    {
        draw_sprite(wall_testing,5,xPos+16,yPos);
    }
    else
    {
        draw_sprite(wall_testing,3,xPos+16,yPos);
    }
}
else
{
    if (left)
    {
        draw_sprite(wall_testing,8,xPos,yPos);
    }
    else
    {
        draw_sprite(wall_testing,6,xPos,yPos);
    }
    if (right)
    {
        draw_sprite(wall_testing,8,xPos+16,yPos);
    }
    else
    {
        draw_sprite(wall_testing,7,xPos+16,yPos);
    }
}
if(!down)
{
    if (left)
    {
        draw_sprite(wall_testing,12,xPos,yPos+16);
    }
    else
    {
        draw_sprite(wall_testing,11,xPos,yPos+16);
    }
    if (right)
    {
        draw_sprite(wall_testing,12,xPos+16,yPos+16);
    }
    else
    {
        draw_sprite(wall_testing,13,xPos+16,yPos+16);
    }
}
