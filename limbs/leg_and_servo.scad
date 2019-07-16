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
    translate([0,0,7]) rotate([0,270,0]) scale([0.1, 0.1, 0.1]) servo();
    translate([-1.8,0,13]) rotate([0,0,270]) upperleg();
}