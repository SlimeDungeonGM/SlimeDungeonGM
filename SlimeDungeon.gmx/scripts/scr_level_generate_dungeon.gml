///scr_level_generate_dungeon()
// resize room
room_width = (CELL_WIDTH/16) * 720;
room_height = (CELL_HEIGHT/16) * 720;

//set the grid and height
var width = room_width div CELL_WIDTH;
var height = room_height div CELL_HEIGHT;

//create the grid
grid = ds_grid_create(width, height);

//fill the grid with the void
ds_grid_set_region(grid, 0, 0, width - 1, height - 1, WALL);

// randomize the world
randomize();

//create the controller in the center of the grid
var cx = width div 2;
var cy = height div 2;

//create the player
instance_create(cx*CELL_WIDTH+CELL_WIDTH/2,cy*CELL_HEIGHT+CELL_HEIGHT/2,obj_dungeon_core);
//center floor
grid[# cx, cy] = FLOOR;

grid[# cx-1, cy] = FLOOR; //left
grid[# cx-1, cy-1] = FLOOR;//left top
grid[# cx, cy-1] = FLOOR; //top
grid[# cx+1, cy-1] = FLOOR;//top right
grid[# cx+1, cy] = FLOOR;//right
grid[# cx+1, cy+1] = FLOOR;//bottom right
grid[# cx, cy+1] = FLOOR;//bottom
grid[# cx-1, cy+1] = FLOOR;//bottom left

//create instance object.
for(var yy = 1;yy < height - 1;yy++){
    for(var xx = 1;xx < width - 1;xx++){
        if(grid[# xx,yy] == FLOOR){
            instance_create(xx*CELL_WIDTH,yy*CELL_WIDTH,obj_dirt);
        }
        if(grid[# xx,yy] == WALL){
            instance_create(xx*CELL_WIDTH,yy*CELL_WIDTH,obj_wall);
        }
    }
}

