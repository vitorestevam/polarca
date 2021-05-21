// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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