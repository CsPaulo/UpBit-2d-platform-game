


if (global.last_checkpoint != id) {
        sprite_index = spr_checkpoint_touched; // Altera o sprite do checkpoint
		global.touched_checkpoint = true;
        global.last_checkpoint = id; // Define o último checkpoint tocado
        global.checkpoint_x = x; 
		global.checkpoint_y = y; 

        
}