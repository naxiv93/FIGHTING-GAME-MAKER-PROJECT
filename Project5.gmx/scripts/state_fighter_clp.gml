if(state_new){
    sprite_index = ken_clp
    image_index = 0
    image_xscale = -sign(x - opponent.x)
}
atktime++;
if (atktime == 7){
    if(down){
        state_switch("crouch")
        atktime = 0
    }else if(!down){
        state_switch("stand")
        atktime = 0
    }
}
