if(state_new){
    sprite_index = ken_fjlp
    image_index = 0

}

atktime++
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

