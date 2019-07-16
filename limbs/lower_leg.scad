difference() {
    union(){
        cylinder(h=10, r2=1.8, r1=1.3, center=true, $fn=100);
        translate([0,0,-6]) sphere(r=1.8, $fn=100);
        difference() {
            translate([0,0,5]) cube([0.8,1.2,2], center=true);
            rotate([0,90,0]) cylinder(r=1.4);
        }
    }
    cylinder(h=8, r2=1, r1=0.5, center=true, $fn=100);
}