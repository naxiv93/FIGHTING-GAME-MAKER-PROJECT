if(state_new){
    sprite_index = ken_lp
    image_index = 0 
    image_xscale = -sign(x - opponent.x)
}
atktime++;
    if(image_index == 4 ){
            with(instance_create(x,y,oHitbox)){
                opponent= other.opponent
                from = other.from
                image_xscale = -sign(x - opponent.x)
                stun = 16
                atkType = "HL"
                atk ="slp"
                hitend = 5
                drag = 10
                state_recog()
            }
        }
        


if (atktime == 13){
    state_switch("stand")
    atktime = 0
}
