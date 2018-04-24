if(state_new){
sprite_index = sprite15
image_index = 0
image_xscale = -sign(x - oP1.x);
}

hits++
stun -=1
if(stun == 0){
    state_switch("stand")
}
