/// @desc Initalize Player
// TODO NPC disposition system - NEXT RELEASE
// TODO Player energy system - LATER RELEASE
// TODO Redo player control
image_angle = 90;
ship_hull_max = 100;
ship_hull = ship_hull_max;
shield_max = 50;
shield = shield_max;
spd = 3;
rotation_speed = 0.05 * global.player_sensitivity;
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
health_percent = 100;
shield_percent = 100;
move = false;
wraps = 0;
ui_handler.player_exists = true;
var shield_render = instance_create_depth(x, y, -1, obj_effect_renderer);
shield_render.effect = effects.shield;