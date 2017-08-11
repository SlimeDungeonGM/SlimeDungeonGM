///scr_get_input

help_key = keyboard_check(vk_f1);
f2_key = keyboard_check(vk_f2);
f3_key = keyboard_check(vk_f3);

right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
up_key = keyboard_check(vk_up);
//dash
dash_key = keyboard_check_pressed(ord("C"));
//attack
attack_key = keyboard_check_pressed(ord("X"));
//switch weapon
swap_key = keyboard_check_pressed(ord("Z"));
//fire projectile
spell_key = keyboard_check_pressed(ord("V"));
//pause menu
pause_key = keyboard_check_pressed(vk_escape);
dungeonmenu_key = keyboard_check_pressed(ord("Q"));
camtoggle_key = keyboard_check_pressed(vk_tab);
buildmenu_key = keyboard_check_pressed(ord("B"));
//mouse keys
roll_up = mouse_wheel_up();
roll_down = mouse_wheel_down()


//check if gamepad input
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

if(gamepad_is_connected(0)){
    gamepad_set_axis_deadzone(0,0.35);
    xaxis = gamepad_axis_value(0,gp_axislh);
    yaxis = gamepad_axis_value(0,gp_axislv);
    dash_key = gamepad_button_check_pressed(0,gp_face1);
    attack_key = gamepad_button_check_pressed(0,gp_face3);
    spell_key = gamepad_button_check_pressed(0,gp_face2);    
    pause_key = gamepad_button_check_pressed(0,gp_start);
    swap_key = gamepad_button_check_pressed(0,gp_face4);
    dungeonmenu_key = gamepad_button_check_pressed(0,gp_select);
}

