
other.x = global.checkpoint_x;
other.y = global.checkpoint_y;
  
other.spd = 0;
other.graviti = 0;
other.vspd = 0; 

other.pause_timer = room_speed * 1;


if (pause_timer > 0) {
    pause_timer -= 1;

} else {
  other.spd = 1;
  other.graviti = 0.1;
  other.vspd = 0; 

}
