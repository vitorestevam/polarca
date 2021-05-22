/// @description struct that store all the important information about our animation
/// @param _attribute -> name of the attribute you like do change
/// @param _value -> Value that you want to attribute reach
/// @param _animcurv -> animation curve that controller should use
/// @param _channel_index -> channel index from animation curve that controller should use 
/// @param _curve_speed -> animation speed
function polarca_animation(_attribute,_value, _animcurv, _channel_index, _curve_speed) constructor{
    instance= other.id;
    attribute_name= _attribute;
	value1 = variable_instance_get(other,_attribute)
	value2=_value;
	animcurv = _animcurv;
	channel_index = _channel_index;
	curve_speed = _curve_speed;
	
	update_initial_value = function(){
		value1 = variable_instance_get(instance,attribute_name)
	}
	
	get_value = function(pos){
		return arrp(value1,value2,pos, animcurv,channel_index)
	}
	
	instance_set_value = function(_value){
		variable_instance_set(instance,attribute_name,_value)
	}
	
	instance_update = function (pos){
		var _value = get_value(pos)
		instance_set_value(_value)
	}
}

/// @description returns a value between _val1 and _val2 from _amount. Works very similar to LERP
/// @param _val1
/// @param _val2
/// @param _amount
/// @param animation__curve
function arrp(_val1, _val2, _amount, _curve, _channel_index){	
	//setup
	//_amount = clamp(_amount,0,1) // prevent erro
	
	var _distance = _val2 - _val1
	var _curve_struct = animcurve_get(_curve)
	var _curve_channel = animcurve_get_channel(_curve_struct,_channel_index)
	
	//movement
	var _value = animcurve_channel_evaluate(_curve_channel,_amount)

	return _val1+(_distance*_value)
}

/// @description creates a controller that does the interpolation for you with only one function call
/// @param _arr -> an array of Animations
function polarca_animation_start(_arr){
	var _controller = instance_create_depth(0, 0, 0, o_polarca_animation_controller)
	with(_controller){
		animations = _arr
		init()
	}
	
	return _controller
}

/// @param _arr -> an array of an array Animations
function polarca_sequence_start(_arr){
	var _controllers = []
	var _len = array_length_1d(_arr)
	for (var i = 0; i < _len; ++i) {
	    var _subarr = _arr[i]
		
		var _controller = polarca_animation_start(_subarr)
		instance_deactivate_object(_controller)
		_controllers[i] = _controller
	}
	
	with(instance_create_depth(0,0,0,o_polarca_sequence_controller)){
		controllers = _controllers
		init()
	}
}
