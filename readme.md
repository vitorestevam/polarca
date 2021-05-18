# Animation Curve Interpolation

>  it works in a very similar way to LERP(), but receives an animation curve and returns the value of the position

## how to use:
     // create
     pos = 0

<br>

     //step
     x = arrp(0,800,pos, ac1)
     pos+=0.005
     pos = clamp(pos, 0,1)