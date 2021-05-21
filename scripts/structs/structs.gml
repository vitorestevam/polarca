function ArrpAnimation(_attribute,_value, _animcurv, _channel_index, _curve_speed) constructor{
    instance= other.id;
    attribute_name= _attribute;
	value1 = variable_instance_get(other,_attribute)
	value2=_value;
	animcurv = _animcurv;
	channel_index = _channel_index;
	curve_speed = _curve_speed;
	
	get_value = function(pos){
		return arrp(value1,value2,pos, animcurv)
	}
	
	instance_set_value = function(_value){
		variable_instance_set(instance,attribute_name,_value)
	}
	
	instance_update = function (pos){
		var _value = get_value(pos)
		instance_set_value(_value)
	}
}