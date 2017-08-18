///scr_get_input
r_key = keyboard_check(vk_right);
l_key = keyboard_check(vk_left);
u_key = keyboard_check(vk_up);
d_key = keyboard_check(vk_down);
dash_key = keyboard_check_pressed(ord('C'));

// get the axis
xaxis = (r_key - l_key);
yaxis = (d_key - u_key);
