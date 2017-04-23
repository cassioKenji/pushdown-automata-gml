///Main loop

key_left = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

move = (key_right + key_left);
hsp = move * move_speed;

if (vsp < 10) {
  vsp += grav;
}

if (place_meeting(x,y+1, obj_simple_platform)) {
  vsp = key_jump * -jump_speed;
}

x += hsp;
y += vsp;