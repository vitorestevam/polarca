image_blend = c_green
a1 = new polarca_animation("x",x+400,ac,0,0.01)
a2 = new polarca_animation("y",y+200,ac,0,0.01)
alpha1 = new polarca_animation("image_alpha",0.25,ac,0,0.01)
alpha2 = new polarca_animation("image_alpha",1,ac,0,0.01)
polarca_sequence_start(
	[[a1,alpha1],
	[a2,alpha2]]
)