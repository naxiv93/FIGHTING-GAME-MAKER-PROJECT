if(state_new){
    sprite_index  = ken_crouch
    image_xscale = -sign(x - oP2.x)
}
if(image_xscale==1){
    if(!left){
        state_switch("crouch")
    } else if (!down){
        state_switch("back")
    } 
}else if (image_xscale==-1){
    if(!right){
        state_switch("crouch")
    }else if(!down){
        state_switch("back")
    }
}
