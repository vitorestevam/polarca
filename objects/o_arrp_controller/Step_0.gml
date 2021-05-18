var _value = arrp(val1,val2,pos, curve)

pos+=anim_speed
pos = clamp(pos,0,1)
variable_instance_set(obj,attribute_name,_value)

if(pos >=1) instance_destroy()