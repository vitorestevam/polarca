var _index = 0
var _ended = true

repeat(len){
	//setup
	var _obj = objects[_index]
	var _pos = _obj.position
	var _animation = _obj.animation
	
	//work
	with(_animation){
		instance_update(_pos)
		_pos+=curve_speed
	}
	
	//endup
	_pos = clamp(_pos,0,1)
	_obj.position = _pos
	_index++
	
	//check if is over
	if(_pos != 1) _ended = false 
}

if(_ended){
	show_debug_message("arrp -> animation ended. killing controller")
	instance_destroy()
}



