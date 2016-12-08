target = noone;
scr_base_search();
if (target != noone)
{
    if (faction == factions.hunger && baseFaction != target.baseFaction)
    {
        faction = baseFaction;
    }
}
if (target == noone && hunger <= maxHunger*warningHunger)
{
    scr_base_hunger();
}
if (target == noone && hunger <= maxHunger*criticalHunger)
{
    scr_base_starving();
}
if (target != noone)
{
    scr_base_chase();
    movement = MOVE;
}
else
{
    scr_base_wander();
}
scr_move_axis();
