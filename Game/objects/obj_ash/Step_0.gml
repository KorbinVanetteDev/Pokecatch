x = obj_arrow.x;

y = obj_arrow.y;

var angle = obj_arrow.image_angle;

if(angle >= 0 && angle < 90) {
	sprite_index = spr_ash_right;
	image_index = 0;
} else if(angle >= 90 && angle < 180) {
	sprite_index = spr_ash_up;
	image_index = 0;
} else if(angle >= 180 && angle < 270) {
	sprite_index = spr_ash_left;
	image_index = 0;
} else if(angle >=270 && angle <= 359) {
	sprite_index = spr_ash;
	image_index = 0;
}