var searchTarget = noone;
if (command == commands.none)
{
    commandTarget = noone;
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
    }
}
else if (command == commands.move)
{
    if(instance_exists(commandTarget))
    {
        var tarDis = point_distance(x,y,commandTarget.x,commandTarget.y);
        if (tarDis < 2)
        {
            commandTarget = noone;
            command = commands.none;
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
    }
}
target = searchTarget;
