translate([0,0,10]) rotate([0,0,180]) difference() {
    translate([0,0,-5]) sphere(r=1.8, $fn=100);
    translate([0,2.2,-6]) cube([4.6, 4.4, 6], center=true);
}
difference() {
    union() 
    {
        cylinder(h=10, r2=1.8, r1=1.8, $fn=100, center=true);
        translate([0,0,-5]) sphere(r=1.8, $fn=100);
    }
    translate([0,2.2,-6]) cube([4.6, 4.4, 6], center=true);
}


translate([0,0,5]) union() {
    rotate([90,90,0]) cylinder(h=2.5, r=1.8, $fn=100);
    translate([-1.8,-2.5,-2]) cube([3.6,2.5,2]);
    translate([0,0,-2]) rotate([90,90,0]) cylinder(h=2.5, r=1.8, $fn=100);

}