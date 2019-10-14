module body() {
    include <body.scad>;
}

module leg() {
    include <leg_and_servo.scad>;
}

module servo() {
    include <9g_servo.scad>;
}

module hip() {
    include <hip_socket.scad>;
}
body();

translate([14.5,12,-12.5]) rotate([0,0,180]) leg();
translate([6,6.5,2.15]) rotate([180,270,90]) scale([0.1,0.1,0.1]) servo();
translate([6.7,13.5,3.75]) rotate([-90,0,270]) hip();

translate([-14.5,12,-12.4]) leg();
translate([-6,6.5,2.15]) rotate([180,270,90]) scale([0.1,0.1,0.1]) servo();
translate([-6.7,13.5,2]) rotate([90,0,270]) hip();

translate([14.5,-12,-12.4]) rotate([0,0,180]) leg();
translate([6,-6.5,2.15]) rotate([0,270,90]) scale([0.1,0.1,0.1]) servo();
translate([6.7,-13.5,1.75]) rotate([90,0,90]) hip();



translate([-14.5,-12,-12.4]) leg();
translate([-6,-6.5,2.15]) rotate([0,270,90]) scale([0.1,0.1,0.1]) servo();
translate([-6.85,-13.5,3.75]) rotate([270,0,90]) hip();

