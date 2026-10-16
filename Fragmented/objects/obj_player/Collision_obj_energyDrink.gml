obj_popUpText.item_text = "You've collected the energy drink!\nThe energy has given you an additional jump!\nPress Space to double jump in the air!"
jump_count = 2;
obj_popUpText.item_gain = true;
alarm[1] = 300;
instance_destroy(other);