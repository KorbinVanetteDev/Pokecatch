if(obj_game.powerup_time < 0){
	var _obj = choose(obj_powerup_rarecandy, obj_powerup_masterball);
	instance_create_layer(x,y,"Instances", _obj);
	obj_game.powerup_time = 20;
}
audio_play_sound(ca,0,false,1,0,random_range(0.6,1.1));

obj_game.points += 1;

instance_destroy(other);
effect_create_above(ef_explosion,x,y,1,c_white);

direction = random(360);

if(obj_ash.powerup == 2) {
	
	if(instance_number(obj_enemy) < 12) {
		sprite_index = spr_charizard;
		x = -75;
	} else {
		instance_destroy();
	}
} else {

if (sprite_index == spr_charmeleon) {
	sprite_index = spe_charmander;
	instance_copy(true);
} else if(sprite_index == spr_charizard) {
	sprite_index = spr_charmeleon;
	instance_copy(true);
} else if (instance_number(obj_enemy) < 12){
	sprite_index = spr_charizard;
	x = -75;
} else {
	instance_destroy();
}
}