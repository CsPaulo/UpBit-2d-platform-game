if (message_index <= string_length(message)) {
    displayed_message = string_copy(message, 1, message_index);
    message_index += typing_speed;
} else if (player_distance != -1) {
    displayed_message = string_copy(message, 1, message_index);
    message_index -= typing_speed; // Aqui estamos diminuindo o índice para apagar o texto
    if (message_index < 1) {
        instance_destroy();
    }
}

if (player_distance == -1) {
    var player = instance_nearest(x, y, obj_player);
    if (player) {
        player_distance = point_distance(x, y, player.x, player.y);
    }
} else {
    var player = instance_nearest(x, y, obj_player);
    if (!player || point_distance(x, y, player.x, player.y) > player_distance) {
        instance_destroy();
    }
}
