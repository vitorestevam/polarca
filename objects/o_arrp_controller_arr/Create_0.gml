animations = []
len = 0
objects = []

init = function(){
	len = array_length_1d(animations)
	for (var i = 0; i < len; ++i) {
	    objects[i] = {
			position: 0,
			animation: animations[i]
		}
	}

}