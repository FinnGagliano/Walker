translate([0,0,]) difference() {
    translate([-0.29,0,-1.8]) cube([1.4,3.6,3.2]);
    translate([-0.3,-0.1,-1.9]) cube([1.2,1.7,3.4]);

    translate([-0.3,1.9,-1.3]) cube([1.2,1.72,2.2]);
    translate([-0.3,1.59,-1.9]) cube([1.2,1.4,3.4]);

    
    // Drill holes
    translate([0.8,1,-0.9]) rotate([90,0,90]) cylinder(h=0.5, r=0.15, $fn=40);
    translate([0.8,1,0.5]) rotate([90,0,90]) cylinder(h=0.5, r=0.15, $fn=40);
    //dent
    translate([0.8,1,-0.2]) rotate([90,0,90]) cylinder(h=0.5, r=0.2, $fn=40);
    
    // Screw holes
    translate([0.3,3.7,1.2]) rotate([90,0,0]) cylinder(h=0.5, r=0.07, $fn=40);
    translate([0.3,3.7,-1.6]) rotate([90,0,0]) cylinder(h=0.5, r=0.07, $fn=40);



}