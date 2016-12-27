var xOffset = sprite_get_xoffset(target.sprite_index);
var yOffset = sprite_get_yoffset(target.sprite_index);
var centerX = sprite_get_width(target.sprite_index) / 2.0;
var centerY = sprite_get_height(target.sprite_index) / 2.0;
var dir = point_direction(x,y,target.x - xOffset + centerX,target.y - yOffset + centerY);
xaxis = lengthdir_x(1,dir);
yaxis = lengthdir_y(1,dir);
if(!followTarget.followingPath)
{
    var readd = false;
    var readdX = target.x div CELL_WIDTH;
    var readdY = target.y div CELL_HEIGHT;
    if(command == commands.mine && target == commandTarget)
    {
        if (mp_grid_get_cell(global.pathing, readdX, readdY) == -1)
        {
            mp_grid_clear_cell(global.pathing, readdX, readdY);
            readd = true;
        }
    }
    if (mp_grid_path(global.pathing, followTarget.path, x, y, target.x - xOffset + centerX,target.y - yOffset + centerY, 1))
    {
        with(followTarget)
        {
            x = other.x;
            y = other.y;
            xStart = x;
            yStart = y;
            spd = other.spd;
            path_start(path, spd, path_action_stop, 0);
            followingPath = true;
            alarm[11] = room_speed * (1+random(2));
        }
    }
    else
    {
        target = noone;
        commandTarget = noone;
    }
    if(readd)
    {
        mp_grid_add_cell(global.pathing, readdX, readdY);
    }
}
movement = MOVE;
