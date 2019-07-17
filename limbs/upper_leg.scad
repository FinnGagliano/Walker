// Rounding of hip attchment
translate([0,0,10]) rotate([0,0,180]) difference() {
    translate([0,0,-5]) sphere(r=1.8, $fn=40);
    translate([0,2.2,-6]) cube([4.6, 4.4, 6], center=true);
}

// The top hip attachment
translate([0,0,5]) union() {
    rotate([90,90,0]) cylinder(h=2.5, r=1.8, $fn=40);
    translate([-1.8,-2.5,-2]) cube([3.6,2.5,2]);
    translate([0,0,-2]) rotate([90,90,0]) cylinder(h=2.5, r=1.8, $fn=40);

}

// Main leg part & lower knee attachment
difference() {
    union() 
    {
        cylinder(h=10, r2=1.8, r1=1.8, $fn=40, center=true);
        translate([0,0,-5]) sphere(r=1.8, $fn=40);
    }
    // Removes hemisphere from bottom of leg
    translate([-1.8,0,-7]) cube([3.6, 4.4, 5]);
    // Holes for servo screws
    translate([0,-0.1,-4.2]) rotate([90,0,0]) cylinder(h=1.8, r=0.3, $fn=40);
    translate([0,0.1,-4.2]) rotate([90,0,0]) cylinder(h=1.8, r=0.15, $fn=40);
    translate([0,-0.1,-2.8]) rotate([90,0,0]) cylinder(h=1.8, r=0.3, $fn=40);
    translate([0,0.1,-2.8]) rotate([90,0,0]) cylinder(h=1.8, r=0.15, $fn=40);


}
