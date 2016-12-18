var searchTarget = noone;
if (command == commands.none)
{
    commandTarget = noone;
    followTarget.followingPath = false;
}
else if (command == commands.mine)
{
    if(instance_exists(commandTarget))
    {
        searchTarget = commandTarget;
        
    }
    else
    {
        commandTarget = noone;
        command = commands.none;
        followTarget.followingPath = false;
    }
}
else if (command == commands.move)
{
    if(instance_exists(commandTarget))
    {
        var xOffset = sprite_get_xoffset(commandTarget.sprite_index);
        var yOffset = sprite_get_yoffset(commandTarget.sprite_index);
        var centerX = sprite_get_width(commandTarget.sprite_index) / 2.0;
        var centerY = sprite_get_height(commandTarget.sprite_index) / 2.0;
        var tarDis = point_distance(x,y,commandTarget.x - xOffset + centerX,commandTarget.y - yOffset + centerY);

        //var tarDis = point_distance(x,y,commandTarget.x,commandTarget.y);
        if (tarDis < 2)
        {
            commandTarget = noone;
            command = commands.none;
            followTarget.followingPath = false;
        }
        else
        {
            searchTarget = commandTarget;
        }
    }
    else
    {
        commandTarget = noone;
        command = commands.none;
        followTarget.followingPath = false;
    }
}
else if (command == commands.attack)
{
    if(instance_exists(commandTarget))
    {
        searchTarget = commandTarget;
    }
    else
    {
        commandTarget = noone;
        command = commands.none;
        followTarget.followingPath = false;
    }
}
target = searchTarget;
