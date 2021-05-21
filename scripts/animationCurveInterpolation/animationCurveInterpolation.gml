/// @param _attribute -> name of the attribute you like do change
/// @param _value -> Value that you want to attribute reach
/// @param _animcurv -> animation curve that controller should use
/// @param _channel_index -> channel index from animation curve that controller should use 
/// @param _curve_speed -> animation speed
function Animation(_attribute,_value, _animcurv, _channel_index, _curve_speed) constructor{
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

/// @description returns a value between val1 and val2 from amount. Works very similar to LERP
/// @param val1
/// @param val2
/// @param amount
/// @param animation_curve
function arrp(val1, val2, amount, curve){	
	//setup
	amount = clamp(amount,0,1) // prevent erro
	
	var _distance = val2 - val1
	var _curve_struct = animcurve_get(curve)
	var _curve_channel = animcurve_get_channel(_curve_struct,0)
	
	//movement
	var _value = animcurve_channel_evaluate(_curve_channel,amount)

	return val1+(_distance*_value)
}

/// @description creates a controller that does the interpolation for you with only one function call
/// @param _arr -> an array of Animations
function arrp_start(_arr){
	var _controller = instance_create_depth(0, 0, 0, o_arrp_controller_arr)
	with(_controller){
		animations = _arr
		init()
	}
}


