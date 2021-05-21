<img src="docs/img_header.png"  />

# Interpolate anything using animation curves with just a few lines 🐻‍❄️
___
# why polarca?

## Polarca is the simplest way to use animation curves to interpolate values in game maker studio 2
### you just need to create some polarca_animation instances and run it:

     //create
     a1 = new polarca_animation("x",800,ac,0,0.005)
     polarca_animation_start([a1,a2])

### Whit this lib you can also create sequential animation in the simplest way ever! Just pass some arrays of arrays and see the magic happening:

     //create
     a1 = new polarca_animation("x",x+200,ac,0,0.01)
     a2 = new polarca_animation("y",y+200,ac,0,0.01)
     alpha1 = new polarca_animation("image_alpha",0.25,ac,0,0.01)
     alpha2 = new polarca_animation("image_alpha",1,ac,0,0.01)
     polarca_sequence_start(
          [[a1,alpha1],
          [a2,alpha2]]
     )


<div align="center">
     <a href="https://github.com/VitorEstevam/polarca/blob/master/details.md">
          Want to know more details about each function? Click here.
     </a>
</div>
