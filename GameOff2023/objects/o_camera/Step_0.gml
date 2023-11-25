follow = selTarget;
if device_mouse_check_button_pressed(0,mb_left){
	for(i = 0 ; i < instance_number(o_unit) ; i++){
		temp = instance_find(o_unit,i);
		
		if temp.selected = true {
			selTarget = temp;
		}
	}
	
}

if (follow != noone){
	xTo = follow.x;
	yTo = follow.y;
}

x+= (xTo - x)/25;
y+= (yTo - y)/25;


#region//Zooming

var wheel = mouse_wheel_down() - mouse_wheel_up();

if (wheel != 0){ wheel *=0.1;}

var addW = camWidth * wheel;
var addH = camHeight * wheel;

camWidth += addW;
camHeight += addH;

if mouse_wheel_up(){
	if camWidth < maxCamWidth camWidth = maxCamWidth
	if camHeight < maxCamHeight camHeight = maxCamHeight
}

if mouse_wheel_down(){
	if camWidth > minCamWidth camWidth = minCamWidth
	if camHeight > minCamHeight camHeight = minCamHeight
}


#endregion

if keyboard_check_pressed(vk_shift){
	zoom = true;
}
if zoom{
	if camWidth > maxCamWidth camWidth-=100
	if camHeight > maxCamHeight camHeight-=100
	
	if camWidth < maxCamWidth zoom = false;
}


camera_set_view_pos(view_camera[0],x-(camWidth*0.5),y-(camHeight*0.5));
camera_set_view_size(view_camera[0],camWidth,camHeight);

