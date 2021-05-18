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

/// @param inst -> instance reference that animation
/// @param animcurv_asset -> Animation curve asset index
/// @param step -> step 
/// @param animcurve_verbs -> parse verbs only one or array of verbs
/// @param amount -> Amount only on or array (case array SAME AS Anim curve verbs)
function anim_curve_start(inst, animcurv_asset, step, animcurve_verbs, amounts){
	if(!animcurve_exists(animcurv_asset)) return noone;
	var _anim_controller = instance_create_depth(0, 0, 0, o_anim_curve_controller);
	
	with(_anim_controller){
		instance_refecence = inst; 
		animcurve_index = animcurv_asset;
		animcurve_struct = animcurve_get(animcurv_asset)		
		animcurve_step = step;
		animcurve_amount = amounts;
		
		if(is_array(animcurve_verbs)){
			verbs_amount = array_length(animcurve_verbs);	
			array_copy(animcurve_verbs_array, 0, animcurve_verbs, 0, verbs_amount);
		}
		else {
			animcurve_verbs_array[0] = animcurve_verbs;
			verbs_amount = 1;
		}
		
		if(is_array(amounts)){
			var _len = array_length(amounts);
			animcurve_amount = array_create(_len);
			array_copy(animcurve_amount, 0, amounts, 0, _len);
		}
		else {
			animcurve_amount[0] = amounts;
		}
		
		animcurve_channels = array_create(verbs_amount);

		var _i = 0;
		repeat(verbs_amount){
			animcurve_channels[_i] = animcurve_get_channel(animcurve_struct, _i);
			_i++;
		}
	}
	
	return _anim_controller;
}