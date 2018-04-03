///Collisions   
     //Horizontal Collision
    if (place_meeting(x+hsp,y,obj_GrassTile)) {
        while(!place_meeting(x+sign(hsp),y,obj_GrassTile)) {
            x += sign(hsp);
        }
        hsp = 0;    
        dir *= -1;
    }
    x+= hsp;

    //Vertical Collision
    if (place_meeting(x,y+vsp,obj_GrassTile)) {
        while(!place_meeting(x,y+sign(vsp),obj_GrassTile)) {
            y += sign(vsp);
        }
        vsp = 0;
        if !position_meeting (x+(sprite_width/2)*dir, y+(sprite_height/2)+8, obj_GrassTile) {
            dir *= -1
        }
    }
    y+= vsp;
