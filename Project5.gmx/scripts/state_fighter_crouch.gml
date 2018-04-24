if(state_new){
    sprite_index  = ken_crouch
    image_xscale = -sign(x - opponent.x)
}



if(image_xscale==1){
    if(left){
        state_switch("bcrouch")
    }  
}else if (image_xscale==-1){
    if(right){
        state_switch("bcrouch")
    }
}



if (!down){
    state_switch("stand")
}
if (lp){
    state_switch("clp")
}
