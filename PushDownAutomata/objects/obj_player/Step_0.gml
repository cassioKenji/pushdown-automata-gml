///Main loop

key_left = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

move = (key_right + key_left);
hsp = move * move_speed;

if (vsp < 10) {
  vsp += grav;
}

if (place_meeting(x,y+1, obj_simple_platform)){
  vsp = key_jump * -jump_speed;
}

if (place_meeting(x+hsp,y,obj_simple_platform)){
  while(!place_meeting(x+sign(hsp),y,obj_simple_platform)){
    x += sign(hsp);
  }
  hsp = 0;
}
x += hsp;

if (place_meeting(x,y+vsp,obj_simple_platform)){
  while(!place_meeting(x,y+sign(vsp),obj_simple_platform)){
    y += sign(vsp);
  }
  vsp = 0;
}
y += vsp;