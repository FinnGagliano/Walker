module servo() {
    include <9g_servo.scad>;
}

union() {
    translate([0,0.25,0]) difference() {
        cube([3.2,1.5,1.8]);
        translate([0.45,0.1,-0.1]) cube([2.3,1.3,2]);
    }
    translate([3.2,0,]) difference() {
        translate([0,0,-1.8]) cube([1.7,2,3.6]);
        translate([0.1,-0.1,-1.7]) cube([1.5,2.2,2.2]);
        translate([1.3,1,-1.4]) rotate([90,0,90]) cylinder(h=0.5, r=0.15, $fn=40);
        translate([1.3,1,0]) rotate([90,0,90]) cylinder(h=0.5, r=0.15, $fn=40);
        //dent
        translate([1.3,1,-0.7]) rotate([90,0,90]) cylinder(h=0.5, r=0.15, $fn=40);

    }    
}