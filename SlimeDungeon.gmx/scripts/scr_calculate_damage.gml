
var attacker = argument0;
var defender = argument1;
var damage = argument2;
var type = argument3;
var finalDamage = 0;
var elementMultiplier = 1.0;

if ds_map_exists(global.element_strength, attacker.element) {
    if ds_map_find_value(global.element_strength, attacker.element) == defender.element {
        elementMultiplier *= 2;
    }
}
if ds_map_exists(global.element_weakness, attacker.element) {
    if ds_map_find_value(global.element_weakness, attacker.element) == defender.element {
        elementMultiplier /= 2;
    }
}

if type == damageTypes.physical {
    var physicalPortion = damage / 2;
    var elementPortion = damage / 2;
    physicalPortion *= 1;//replace 1 with armour calculation after implementing armour and agreeing a armour value to reduction formulae
    elementPortion *= elementMultiplier;
    finalDamage = physicalPortion+elementPortion;
} else if type == damageTypes.magical {
    var magicPortion = damage / 2;
    var elementPortion = damage / 2;
    elementPortion *= elementMultiplier;
    finalDamage = (elementPortion+magicPortion) * 1;//replace 1 with resist calculation after implementing resist and agreeing a resist value to reduction formulae
}






