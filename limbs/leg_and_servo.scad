module servo() {
    include <9g_servo.scad>
}

module upperleg() {
    include <upper_leg.scad>
}  

module lowerleg() {
    
    include <lower_leg.scad>
}



union() {
    lowerleg();
    translate([0.15,0,6.6]) rotate([0,270,0]) scale([0.1, 0.1, 0.1]) servo();
    translate([-2,0,10.6]) rotate([0,0,270]) upperleg();
}