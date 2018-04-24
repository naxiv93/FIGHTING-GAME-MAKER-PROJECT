if(state_new){
    sprite_index = ken_bjump
    image_index = 0
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
    if(y >= global.ground){
        y = global.ground
        atktime = 0
        grav = 1
        state_switch("stand");
    }
}

