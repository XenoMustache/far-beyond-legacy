/// @desc Initalize Player
// TODO NPC disposition system
// TODO Player energy system
// TODO Redo player controls / add control schemes
image_angle = 90;
ship_hull_max = 100;
ship_hull = ship_hull_max;
shield_max = 50;
shield = shield_max;
spd = 4;
rotation_speed = 0.05;
is_moving = false;
can_take_damage = true;
hit = false;
can_shoot = true;
attack_speed = 4;
bullet_speed = 40;
bullet_damage = 50;
damage_cooldown = 0.5;
accuracy = 0.75;
has_shield = true;
can_rechage_shield = false;
recharge_cooldown = 2;
recharge_rate = 0.5;
health_percent = pointer_null;
shield_percent = pointer_null;
move = false;