if(state_new){
    sprite_index = ken_back
    image_index = 0
    image_xscale = -sign(x - opponent.x)
}
if(image_xscale==1){
    x-=5
    if(up){
        state_switch("bjump")
    }
    if(!left){
        state_switch("stand")
    }   
}else if(image_xscale==-1){
    x+=5
    if(up){
        state_switch("bjump")
    }
    if(!right){
        state_switch("stand")
    }
}

if(lp){
    state_switch("slp")
}
