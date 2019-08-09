loot = pointer_null;
led_effect = instance_create_depth(x, y, 0, obj_effect_renderer);
led_effect.effect = effects.capsule;
enum loot_types {
	sm_hp,
	life,
	shield,
	pu_damage
}
sprite_index = registry.spr_capsule;
image_index = 0;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;