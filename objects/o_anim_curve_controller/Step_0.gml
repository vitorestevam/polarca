/// @description Apply Animations
var _i = 0;
var _value = 0;
repeat(verbs_amount){
	_value = animcurve_channel_evaluate(animcurve_channels[_i], animcurve_pos) * animcurve_amount[_i];	
	switch(animcurve_verbs_array[_i]){
		case ANIM_CURVE_VERBS.X: instance_refecence.x = _value; break;
		case ANIM_CURVE_VERBS.Y: instance_refecence.y = _value; break;
	}
	
	_i++;
}

animcurve_pos += animcurve_step;
