if !selected{
	for(i = 0 ; i < instance_number(o_unit) ; i ++){
		temp = instance_find(o_unit,i);
	
		with(temp){selected = false};
	
		selected = true;
	}
}else if selected {
	selected = false;
	o_camera.selTarget = o_cursor
}

