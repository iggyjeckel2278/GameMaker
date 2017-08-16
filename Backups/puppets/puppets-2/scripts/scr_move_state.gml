/// scr_move_state
scr_get_input();


state = scr_move_state;

// get direction
dir = point_direction(0,0, xaxis, yaxis);

// get the length
if (xaxis == 0){
    len = 0;
} else {
    len = spd;
}

// get the hspd and vspd
hspd = lengthdir_x(len,dir);

// move
phy_position_x += hspd;

// control the sprite
image_speed = .2;
if (len == 0) image_index = 0;

// horizontal sprites
if (hspd > 0) {
  
} else if (hspd < 0){

}

