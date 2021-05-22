<img src="docs/img_header.png"  />
<div align="right">
     <a href="https://github.com/VitorEstevam/polarca/raw/master/polarca.yymps">
         download package
     </a>
</div>

# Interpolate anything using animation curves with just a few lines 🐻‍❄️
___
# why polarca?

## Polarca is the simplest way to use animation curves to interpolate values in game maker studio 2
### you just need to create some polarca_animation instances and run it:

     //create
     xa = new polarca_animation("x",x+400,ac,0,0.005)
     polarca_animation_start([xa])

### With this lib you can also create sequential animation in the simplest way ever! Just pass some arrays of arrays and see the magic happening:

     //create
     ya = new polarca_animation("image_yscale",8,ac1,1,0.005)
     xa = new polarca_animation("image_xscale",8,ac1,0,0.005)
     polarca_sequence_start([
     [ya],
     [xa]
     ])


<div align="center">
     <a href="https://github.com/VitorEstevam/polarca/blob/master/details.md">
          Want to know more details about each function? Click here.
     </a>
</div>

___
# examples

<div align="center">
     <img src="docs/examples.gif"  />
</div>

