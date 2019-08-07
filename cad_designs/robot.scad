module body() {
    include <body.scad>;
}

module leg() {
    include <leg_and_servo.scad>;
}

module servo() {
    include <9g_servo.scad>;
}

body();

translate([-12.7,12,-12]) leg();
translate([-12.7,-12,-12]) leg();
translate([12.7,12,-12]) rotate([0,0,180]) leg();
translate([12.7,-12,-12]) rotate([0,0,180]) leg();

translate([-6.2,12,2]) rotate([180,270,180]) scale([0.1,0.1,0.1]) servo();
translate([-6.2,-12,2]) rotate([180,270,180]) scale([0.1,0.1,0.1]) servo();
translate([6.2,12,2]) rotate([180,270,0]) scale([0.1,0.1,0.1]) servo();
translate([6.2,-12,2]) rotate([180,270,]) scale([0.1,0.1,0.1]) servo();

