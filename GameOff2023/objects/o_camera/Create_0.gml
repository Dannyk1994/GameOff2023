////Resolution
//#macro RES_W 1366
//#macro RES_H 768

//RES_SCALE = 1;

//#macro CAM_SMOOTH 0.1

//view_enabled = true;
//view_visible[0] = true;

///// Create camera
//camera = camera_create_view(0,0,RES_W,RES_H);

//view_set_camera(0,camera);

//// Resize window & application surface
//window_set_size(RES_W * RES_SCALE,RES_H * RES_SCALE);
//surface_resize(application_surface,RES_W * RES_SCALE,RES_H * RES_SCALE)

//display_set_gui_size(RES_W,RES_H);

////Center Window
//var display_width = display_get_width();
//var display_height = display_get_height();

//var window_width = RES_W * RES_SCALE;
//var window_height = RES_H * RES_SCALE;

//window_set_position(display_width/2 - window_width/2 , display_height/2 - window_height/2);

camWidth = 1366;
camHeight = 768

maxCamWidth = 1366 / 2;
maxCamHeight = 768/ 2;

minCamWidth = 1366 * 2;
minCamHeight = 768 * 2;

selTarget = noone;

follow = selTarget;

xTo = x;
yTo = y;

zoom = false;