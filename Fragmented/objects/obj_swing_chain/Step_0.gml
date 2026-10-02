if(!pause) { 

	var value=sin(image_angle/360);

	image_yscale = 6.8 - value*0.5;//clamp(6.8 - value*0.45, 6.2, 6.9);//value * platformID.moveX/100;
	
	image_angle = point_direction(x,y,platformID.x+xOffset,platformID.y)+91;
	
}
