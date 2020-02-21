/// @description Insert description here
// You can write your code in this editor

vitesse = 0.05;
vitesse_max = 4;

if(keyboard_check(vk_left)){
	image_angle += 5;
}

if(keyboard_check(vk_right)){
	image_angle -= 5;
}

/*if(keyboard_check(vk_up)){
	if(speed <= vitesse_max){
		motion_add(image_angle, vitesse);	
	}
}*/

if(keyboard_check(vk_up)){
	motion_add(image_angle, vitesse);	
} else if(speed > 0.1){
	speed -= 0.1;
} else {
	//speed = 0;
}

move_wrap(true, true, sprite_width/2);