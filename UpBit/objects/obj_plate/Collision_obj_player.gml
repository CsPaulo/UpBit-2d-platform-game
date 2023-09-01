if (!instance_exists(obj_text_message)) {
    var text_message = instance_create_layer(obj_plate.x, obj_plate.y, "Instances", obj_text_message);
    text_message.message = "Oh, parece que você não consegue pular";
    text_message.timer = 40; // O tempo em frames que o texto ficará visível
}
