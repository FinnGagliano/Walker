difference() {
    union() {
        // Rounding of hip attchment
        translate([0,0,10]) rotate([0,0,180]) difference() {
            translate([0,0,-5]) sphere(r=1.8, $fn=40);
            translate([0,2.2,-6]) cube([4.6, 4.4, 6], center=true);
        }

        // The top hip attachment
        translate([0,0,5]) union() {
            rotate([90,90,0]) cylinder(h=2.5, r=1.8, $fn=40);
            translate([-1.8,-2.5,-2]) cube([3.6,2.5,2]);
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
        }
    }
    // Hip screw holes
    translate([0,1.9,5.4]) rotate([90,0,0]) cylinder(h=4.3, r=0.35, $fn=40);
    translate([0,1.7,5.4]) rotate([90,0,0]) cylinder(h=4.3, r=0.15, $fn=40);
    translate([0,1.9,4]) rotate([90,0,0]) cylinder(h=4.3, r=0.35, $fn=40);
    translate([0,1.7,4]) rotate([90,0,0]) cylinder(h=4.3, r=0.15, $fn=40);
    // dent
    translate([0,-2.1,4.7]) rotate([90,0,0]) cylinder(h=0.5, r=0.15, $fn=40);

    
    // Knee screw holes
    translate([0,-0.1,-4.2]) rotate([90,0,0]) cylinder(h=1.8, r=0.35, $fn=40);
    translate([0,0.1,-4.2]) rotate([90,0,0]) cylinder(h=1.8, r=0.15, $fn=40);
    translate([0,-0.1,-2.8]) rotate([90,0,0]) cylinder(h=1.8, r=0.35, $fn=40);
    translate([0,0.1,-2.8]) rotate([90,0,0]) cylinder(h=1.8, r=0.15, $fn=40);
    // dent
    translate([0,0.1,-3.5]) rotate([90,0,0]) cylinder(h=0.5, r=0.15, $fn=40);

}