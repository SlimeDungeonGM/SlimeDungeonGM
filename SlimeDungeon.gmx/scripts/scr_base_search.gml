searchTarget = noone;
searchTargetDist = -1;
with (obj_lifeform_parent)
{
    if (other.id != self.id)
    {
        if (faction != other.faction || (faction == factions.hunger && other.faction == factions.hunger))
        {
            var dist = point_distance(x, y, other.x, other.y);
            if (dist < other.sight)
            {
                if (other.searchTarget == noone || dist < other.searchTargetDist)
                {
                    other.searchTarget = self;
                    other.searchTargetDist = dist;
                }
            }
        }
    }
}
target = searchTarget;
