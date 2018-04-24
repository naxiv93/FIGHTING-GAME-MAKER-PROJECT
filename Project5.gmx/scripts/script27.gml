if(state_new){
    sprite_index = ken_lp
    image_index = 0 
    image_xscale = -sign(x - oP2.x)
}
atktime++;

if(image_index == 4 ){
    with(instance_create(x,y,oHitbox)){
        stun = 70
        atkType = "HL"
    }
}


if (atktime == 13){
    state_switch("stand")
    atktime = 0
}
