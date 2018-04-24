if(state_new){
sprite_index = sprite15
image_index = 0
image_xscale = -sign(x - opponent.x)
hits++
}

if (drag != 0){
    if(image_xscale == 1){
        x -= drag;
        drag -= 2
    }else{
        x += drag;
        drag -= 2
    }
}
stun -=1
if(stun == 0){
    state_switch("stand")
    drag = 0 
}
