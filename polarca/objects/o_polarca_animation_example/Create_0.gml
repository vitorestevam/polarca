image_blend = c_orange
//polarca_animation(_attribute,_value, _animcurv, _channel_index, _curve_speed)
a1 = new polarca_animation("x",800,ac,0,0.005)
a2 = new polarca_animation("y",y-200,ac,1,0.009)
polarca_animation_start([a1,a2])