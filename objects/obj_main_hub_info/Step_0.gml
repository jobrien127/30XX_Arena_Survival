//Audio
if (!audio_is_playing(snd_menu_selection_2) && !audio_is_playing(snd_main_hub_bg)) {
	audio_play_sound(snd_main_hub_bg, 4, 0);	
}
