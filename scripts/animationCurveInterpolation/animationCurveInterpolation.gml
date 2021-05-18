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