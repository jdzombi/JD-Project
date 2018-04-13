///Collisions

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_GrassTile)) {
    while(!place_meeting(x+sign(hsp),y,obj_GrassTile)) {
        x += sign(hsp);
    }
    hsp = 0;
    dir *= -1;
}

//Vertical Collision
if (place_meeting(x,y+vsp,obj_GrassTile)) { 
    while(!place_meeting(x,y+sign(vsp),obj_GrassTile)) {
        y += sign(vsp);
    }
    vsp = 0;
    
    //Ledge checking
    if (!position_meeting (x+(32)*dir, y+(32)+8, obj_GrassTile)) {
        dir *= -1
    }
}

//Movement
x += hsp;
y += vsp;
