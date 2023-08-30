right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check_pressed(ord("W"));
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));

hspd = (right - left) * spd;

if right || left{
	sprite_index = spr_player_running;
    
}else {
	sprite_index = spr_player;
	image_angle = 0; // Reseta a inclinação quando parado
}

if !place_meeting(x, y + 1, obj_wall){
	vspd += graviti;
	sprite_index = spr_player_jumping;
}else{
	if up{
	vspd = -2.5;
	}	
    
}


if place_meeting(x + hspd, y, obj_wall){
	while !place_meeting(x + sign(hspd), y, obj_wall){
	x += sign(hspd);
	}
	
	hspd = 0;
}

x += hspd;

if place_meeting(x, y + vspd, obj_wall){
	while !place_meeting(x, y + sign(vspd), obj_wall){
	y += sign(vspd);
	}
	
	vspd = 0;
}

y += vspd;


//Invertendo as sprites
// Inversão do sprite
if (xDirection != 0) {
    image_xscale = xDirection; // Inverte o sprite horizontalmente
}
