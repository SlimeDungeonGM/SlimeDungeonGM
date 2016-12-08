var tarDis = point_distance(x,y,target_x,target_y);
if((target_x == -1 || target_y == -1) || (tarDis < 2 && tarDis != 0)|| alarm[0] <= 0)
{
    target_x = x;
    target_y = y;
    movement = IDLE;
    if (irandom(3) == 0)
    {
        var xDir = random_range(-1,1)*CELL_WIDTH;
        var yDir = random_range(-1,1)*CELL_HEIGHT;
        target_x = x+xDir;
        target_y = y+yDir;
        movement = MOVE;
    }
    alarm[0] = room_speed*2;
}
xaxis = target_x - x;
yaxis = target_y - y;
