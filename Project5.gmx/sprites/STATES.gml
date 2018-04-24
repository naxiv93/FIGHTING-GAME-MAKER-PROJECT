#define state_fighter_stand
if(state_new){
sprite_index = ken_idle
image_index = 0
image_xscale = -sign(x - opponent.x);
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

#define state_fighter_back
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

#define state_fighter_forward
if(state_new){
    sprite_index = ken_fw
    image_index = 0
    image_xscale = -sign(x - opponent.x)
}
if(image_xscale==1){
    x+=5
    if(up){
        state_switch("fjump")
    }
    if(!right){
        state_switch("stand")
    }
}else if(image_xscale==-1){
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

#define state_fighter_crouch
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

#define state_fighter_slp
if(state_new){
    sprite_index = ken_lp
    image_index = 0 
    image_xscale = -sign(x - opponent.x)
}
atktime++;

if(image_index == 4 ){
    with(instance_create(x,y,oHitbox)){
        stun = 70
        atkType = "HL"
    }
}


if (atktime == 13){
    state_switch("stand")
    atktime = 0
}

#define state_fighter_clp
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

#define state_fighter_fjump
if(state_new){
    sprite_index = ken_fjump
    image_index = 0
    image_xscale = -sign(x - opponent.x)
}

atktime++
if(image_xscale == 1){
    x+=5
}else if (image_xscale == -1){
    x-=5
}
y-=yspeed
if(lp){
    state_switch("fjlp")
}
if(atktime >= 10){
    y += grav
    grav++
    if(y >= 352){
        y = 352
        atktime = 0
        grav = 1
        state_switch("stand");
    }
}



#define state_fighter_jump
if(state_new){
    sprite_index = ken_jump
    image_index = 0
    image_xscale = -sign(x - opponent.x)
}

atktime++
y-=yspeed
if(atktime >= 10){
    y += grav
    grav++
    if(y >= 352){
        y = 352
        atktime = 0
        grav = 1
        state_switch("stand");
    }
}



#define state_fighter_bjump
if(state_new){
    sprite_index = ken_bjump
    image_index = 0
    image_xscale = -sign(x - opponent.x)
}


atktime++
if(image_xscale == 1){
    x-=5
}else if (image_xscale == -1){
    x+=5
}

y-=yspeed
if(atktime >= 10){
    y += grav
    grav++
    if(y >= 352){
        y = 352
        atktime = 0
        grav = 1
        state_switch("stand");
    }
}


#define state_fighter_fjlp
if(state_new){
    sprite_index = ken_fjlp
    image_index = 0

}

atktime++
if(image_xscale == 1){
    x+=5
}else if (image_xscale == -1){
    x-=5
}
y-=yspeed

if(atktime >= 10){
    y += grav
    grav++
    if(y >= 352){
        y = 352
        atktime = 0
        grav = 1
        state_switch("stand");
    }
}


#define state_fighter_bcrouch
if(state_new){
    sprite_index  = ken_crouch
    image_xscale = -sign(x - opponent.x)
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

#define state_fighter_hstun
if(state_new){
sprite_index = sprite15
image_index = 0
image_xscale = -sign(x - opponent.x)
}

hits++
stun -=1
if(stun == 0){
    state_switch("sstand")
}

#define state_fighter_sstand
image_xscale = -sign(x - opponent.x)

