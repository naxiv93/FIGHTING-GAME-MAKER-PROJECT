if(state_new){
    sprite_index = ken_lp
    image_index = 0 
    image_xscale = -sign(x - opponent.x)
    atktime = 1
    
}
if (atktime == ken[1,0]){
    hitbox = instance_create(x,y,oHitbox)
    
    with(hitbox){
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
if (atktime ==  ken[2,0]
