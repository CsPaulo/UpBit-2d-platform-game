if (!instance_exists(target_)) exit;

var target_x = target_.x - width_ / 2;
var target_y = target_.y - height_ / 2;

var smoothing = 0.2; // Ajuste este valor para controlar a suavidade do movimento da câmera

x = lerp(x, target_x, smoothing);
y = lerp(y, target_y, smoothing);

camera_set_view_pos(view_camera[0], x, y);
