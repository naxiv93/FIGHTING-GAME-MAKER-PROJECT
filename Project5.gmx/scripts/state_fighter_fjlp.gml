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
if(image_index == 4 ){
            with(instance_create(x,y,oHitbox)){
                opponent= other.opponent
                from = other.from
                image_xscale = -sign(x - opponent.x)
                stun = 16
                atkType = "HL"
                drag = 8
                hitend = 8
                atk ="fjlp"
                state_recog()
            }
        }
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

