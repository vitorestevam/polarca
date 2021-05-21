<img src="docs/img_header.png"  />

<br/>

# structs and functions details

___

# polarca_animation

## that is a struct that stores all the important information about our animation

     /// @param _attribute -> name of the attribute you like do change
     /// @param _value -> Value that you want to attribute reach
     /// @param _animcurv -> animation curve that controller should use
     /// @param _channel_index -> channel index from animation curve that controller should use 
     /// @param _curve_speed -> animation speed

     polarca_animation(_attribute,_value, _animcurv, _channel_index, _curve_speed)

# polarca_animation_start

## here we have a function that receives an array of animations and creates a o_polarca_animation_controller that does runs all of them simultaneously for you.
     /// @param _arr -> an array of Animations

     polarca_animation_start(_arr)


# polarca_sequence_start

## This one receives an array of arrays of Animations, creates a o_polarca_sequence_controller that manages some animation controllers and runs all the animations, but one each time.

     /// @param _arr -> an array of an array of Animations

     polarca_sequence_start(_arr)

