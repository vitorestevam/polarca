image_blend = c_red
full_scale = image_xscale
image_xscale = 0.1

xa = new polarca_animation("image_xscale",full_scale,ac2,0,0.01)
xa2 = new polarca_animation("image_xscale",0.1,ac2,1,0.01)

polarca_sequence_start([
[xa],
[xa2],
[xa],
[xa2],
[xa]
])