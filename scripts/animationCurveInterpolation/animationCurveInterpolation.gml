


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
/// @param _attribute -> name of the attribute you like do change
/// @param amount -> Amount value you want to attribute reach
/// @param _curve -> animation curve that controller should use
/// @param _speed -> animation speed
function arrp_start(_instance,_attribute,_amount,_curve, _speed){
		
	var _other = _instance
	if(!animcurve_exists(_curve)) return noone;
	if(!variable_instance_exists(_other,_attribute)) return noone
	
	var _controller = instance_create_depth(0, 0, 0, o_arrp_controller)
	with(_controller){
		val1 = variable_instance_get(_other,_attribute)
		val2 = _amount
		curve = _curve
		obj = _other
		attribute_name = _attribute
		anim_speed = _speed
	}
	
	return _controller
}


/// @description creates a controller that does the interpolation for you with only one function call
/// @param _attribute -> name of the attribute you like do change
/// @param amount -> Amount value you want to attribute reach
/// @param _curve -> animation curve that controller should use
/// @param _speed -> animation speed
function arrp_arr_start(_arr){
		
	var index = 0
	
	var _controller = instance_create_depth(0, 0, 0, o_arrp_controller_arr)
	with(_controller){
		animations = _arr
		init()
	}
	
	//var _other = _instance
	//if(!animcurve_exists(_curve)) return noone;
	//if(!variable_instance_exists(_other,_attribute)) return noone
	
	//var _controller = instance_create_depth(0, 0, 0, o_arrp_controller)
	//with(_controller){
	//	val1 = variable_instance_get(_other,_attribute)
	//	val2 = _amount
	//	curve = _curve
	//	obj = _other
	//	attribute_name = _attribute
	//	anim_speed = _speed
	//}
	
	//return _controller
}


