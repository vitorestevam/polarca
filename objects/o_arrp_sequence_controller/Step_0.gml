if(controller_index == length-1){
	instance_destroy()
	show_debug_message("arrp -> all animation ended. killing sequence controller "+string(id))
	}
	
if(!actual_controller_exists()){
	controller_index++
	activate_actual()
}

