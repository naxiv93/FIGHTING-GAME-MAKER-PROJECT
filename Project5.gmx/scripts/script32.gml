if(state_new){
    sprite_index = ken_fjlp
    image_index = 0

}

atktime++
if(image_xscale == 1){
    x+=5
}else if (image_xscale == -1){
    x-=5
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

