with (obj_lifeform_parent)
{
    if (other.id != self.id)
    {
        var dist = point_distance(x, y, other.x, other.y);
        if (dist < other.sight)
        {
            if (baseFaction != other.baseFaction)
            {
                loyalty += 10;
            }
            else
            {
                loyalty -= 10;
            }
        }
    }
}
