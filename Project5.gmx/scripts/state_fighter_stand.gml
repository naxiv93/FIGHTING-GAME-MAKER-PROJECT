if(state_new){
sprite_index = ken_idle
image_index = 0
}
if(image_xscale == 1){
    if(right and up){
        state_switch("fjump")
    }else if (left and up){
        state_switch("bjump")
    }else if(right){
        state_switch("forward")
    }else if(left){
        state_switch("back")
    }else if(down){
        state_switch("crouch")
    }else if(up){
        state_switch("jump")
    }
}else if(image_xscale == -1){
    if(left and up){
        state_switch("fjump")
    }else if (right and up){
        state_switch("bjump")
    }else if(left){
        state_switch("forward")
    }else if(right){
        state_switch("back")
    }else if(down){
        state_switch("crouch")
    }else if (up){
        state_switch("jump")
    }
}


if(lp){
    state_switch("slp")
}
