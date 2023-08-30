image_angle += rotation_speed; // Atualiza a rotação da serra


// No evento Step da serra
if (moving_right) {
    y += spd;
    if (y >= right_limit) {
        y = right_limit;
        moving_right = false;
    }
} else {
    y -= spd;
    if (y <= left_limit) {
        y = left_limit;
        moving_right = true;
    }
}
