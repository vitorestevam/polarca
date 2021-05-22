image_blend = c_blue
scaley = image_yscale
scalex = image_xscale
image_yscale = 0
image_xscale = 1

ya = new polarca_animation("image_yscale",scaley,ac1,1,0.005)
xa = new polarca_animation("image_xscale",scalex,ac1,0,0.005)
polarca_sequence_start([
[ya],
[xa]
])