difference() {
    union(){
        cylinder(h=10, r2=1.3, r1=1.1, center=true, $fn=40);
        translate([0,0,-5]) resize([3,4,2]) sphere(r=2, $fn=40);
        difference() {
            translate([0,0,5.25]) cube([2,1.2,0.5], center=true);
            translate([0,0,5.25]) rotate([0,90,0]) cylinder(h=2, r=0.07, $fn=40);
        }
    }
    cylinder(h=8, r2=1, r1=0.5, center=true, $fn=40);
}