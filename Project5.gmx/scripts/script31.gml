if(state_new){
    sprite_index = ken_bjump
    image_index = 0
    image_xscale = -sign(x - oP2.x)
}


atktime++
if(image_xscale == 1){
    x-=5
}else if (image_xscale == -1){
    x+=5
}

y-=yspeed
if(atktime >= 10){
    y += grav
    grav++
    if(y >= 352){
        y = 352
        atktime = 0
        grav = 1
        state_switch("stand");
    }
}

