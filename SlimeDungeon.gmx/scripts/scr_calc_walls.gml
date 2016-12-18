/*
left = instance_position(x-16,y+16,obj_wall) != noone;
right = instance_position(x+48,y+16,obj_wall) != noone;
up = instance_position(x+16,y-16,obj_wall) != noone;
down = instance_position(x+16,y+48,obj_wall) != noone;
*/
var i;
var j;
for (j = 0; j < global.pathingHeight; j++)
{
    for (i = 0; i < global.pathingWidth; i++)
    {
        var val = 0;
        if (mp_grid_get_cell(global.pathing, i, j) == -1)
        {
            var check = false;
            /// up
            if (mp_grid_get_cell(global.pathing, i, j-1) == -1)
            {
                val = val | 1;
            }
            else
            {
                check = true;
            }
            /// down
            if (mp_grid_get_cell(global.pathing, i, j+1) == -1)
            {
                val = val | 2;
            }
            else
            {
                check = true;
            }
            /// left
            if (mp_grid_get_cell(global.pathing, i-1, j) == -1)
            {
                val = val | 4;
            }
            else
            {
                check = true;
            }
            /// right
            if (mp_grid_get_cell(global.pathing, i+1, j) == -1)
            {
                val = val | 8;
            }
            else
            {
                check = true;
            }
            /// up+left
            if (mp_grid_get_cell(global.pathing, i-1, j-1) == -1)
            {
                val = val | 16;
            }
            /// up+right
            if (mp_grid_get_cell(global.pathing, i+1, j-1) == -1)
            {
                val = val | 32;
            }
            /// down+left
            if (mp_grid_get_cell(global.pathing, i-1, j+1) == -1)
            {
                val = val | 64;
            }
            /// down+right
            if (mp_grid_get_cell(global.pathing, i+1, j+1) == -1)
            {
                val = val | 128;
            }
            if (check)
            {
                var inst = instance_position((i * CELL_WIDTH) + (CELL_WIDTH / 2), (j * CELL_HEIGHT) + (CELL_HEIGHT / 2), obj_wall);
                if (inst == noone)
                {
                    instance_create(i * CELL_WIDTH, j * CELL_HEIGHT, obj_wall);
                }
            }
        }
        global.wallConnections[i, j] = val;
    }
}
