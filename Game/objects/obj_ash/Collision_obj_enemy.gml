if(powerup == 2) exit;

effect_create_above(ef_firework, x,y,1,c_white);
instance_destroy(obj_arrow);
instance_destroy();
audio_play_sound(explode, 0, false);
with(obj_game){
	alarm[0] = 165;
}
audio_stop_sound(snd_music);
audio_play_sound(snd_lose, 0, false);

