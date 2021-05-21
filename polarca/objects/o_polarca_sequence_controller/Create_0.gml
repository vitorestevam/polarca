controllers = []
controller_index = 0
length=0

init= function(){
	activate_actual()
	length = array_length_1d(controllers)
}

activate_actual = function(){
	var _controller = controllers[controller_index]
	_controller.init()
	instance_activate_object(_controller)
}

actual_controller_exists = function(){
	return instance_exists(controllers[controller_index])
}
