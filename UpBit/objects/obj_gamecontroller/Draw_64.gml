//var camera_width = 130; // Largura da câmera
//var camera_height = 80; // Altura da câmera

//var hud_x = camera_width / 2;
//var hud_y = camera_height / 2;


draw_sprite_ext(spr_hud, 0, 680, 385, 10.6, 10, 0, c_white, 1);

draw_set_font(ft_gui);
draw_set_color(#cc978c);
draw_text(30, -6, "coins: " + string(coins) + "/10");
draw_set_font(-1);
draw_set_color(-1);

draw_set_font(ft_gui);
draw_set_color(#cc978c);
draw_text(250, -6, "timer: " + string(showTime));
draw_set_font(-1);
draw_set_color(-1);

