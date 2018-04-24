if(state_new){
    sprite_index = ken_fw
    image_index = 0
}
if(image_xscale==1 or image_xscale == 0){
    x+=5
    if(up){
        state_switch("fjump")
    }
    if(!right){
        state_switch("stand")
    }
}else if(image_xscale==-1 or image_xscale == 0){
    x-=5
    if(up){
        state_switch("fjump")
    }
    if(!left){
        state_switch("stand")
    }
}

if(lp){
    state_switch("slp")
}
