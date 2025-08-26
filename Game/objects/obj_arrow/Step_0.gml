var l669D8151_0;
l669D8151_0 = keyboard_check(vk_up);
var speed_ship = 0;
if(l669D8151_0) {

	motion_add(image_angle, 0.1);
	
}
var ll669D8151_0;
l669D8151_0 = keyboard_check(vk_left);
if(l669D8151_0){
	image_angle += 4;
}

if(keyboard_check(vk_right)){
	image_angle -= 4;
}

if(keyboard_check(vk_down)) {
	speed_ship -= 0.01;
	if(speed_ship < -0.1) {
		motion_add(image_angle, -0.1);
	} else {
		motion_add(image_angle, speed_ship);
	}
	
}
if(image_angle == 360) {
	image_angle  =0;
}

move_wrap(true, true, 0);

if(mouse_check_button_pressed(mb_left)) {
	if(obj_ash.powerup == 1) {
		instance_create_layer(x,y, "Instances", obj_masterball);
		audio_play_sound(snd_throw, 0, false,1,0,random_range(0.8, 1.2))
	} else {
		instance_create_layer(x,y, "Instances", obj_ball);
		audio_play_sound(snd_throw, 0, false,1,0,random_range(0.8, 1.2));
	}
	
}
if(keyboard_check_pressed(vk_space)) {
	if(obj_ash.powerup == 1) {
		instance_create_layer(x,y, "Instances", obj_masterball);
		audio_play_sound(snd_throw, 0, false,1,0,random_range(0.8, 1.2))
	} else {
		instance_create_layer(x,y, "Instances", obj_ball);
		audio_play_sound(snd_throw, 0, false,1,0,random_range(0.8, 1.2));
	}
}