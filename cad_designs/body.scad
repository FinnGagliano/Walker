difference() {
    cube([15,20,1], center=true);
    translate([2.4,2.9,-0.6]) cylinder(r=0.15, h=1.2, $fn=40);
    translate([2.4,-2.9,-0.6]) cylinder(r=0.15, h=1.2, $fn=40);
    translate([-2.4,2.9,-0.6]) cylinder(r=0.15, h=1.2, $fn=40);
    translate([-2.4,-2.9,-0.6]) cylinder(r=0.15, h=1.2, $fn=40);
}
translate([6,6.3,0.75]) difference() {
cube([1.2,2,0.5], center=true);
rotate([270,90,0]) cylinder(h=2, r=0.07, $fn=40);
}

translate([-6,6.3,0.75]) difference() {
cube([1.2,2,0.5], center=true);
rotate([270,90,0]) cylinder(h=2, r=0.07, $fn=40);
}
translate([6,-6.3,0.75]) rotate([0,0,180]) difference() {
cube([1.2,2,0.5], center=true);
rotate([270,90,0]) cylinder(h=2, r=0.07, $fn=40);
}
translate([-6,-6.3,0.75]) rotate([0,0,180]) difference() {
cube([1.2,2,0.5], center=true);
rotate([270,90,0]) cylinder(h=2, r=0.07, $fn=40);
}
