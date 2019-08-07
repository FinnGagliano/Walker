cube([15,30,1], center=true);

translate([6,12,0.75]) difference() {
cube([2,1.2,0.5], center=true);
rotate([0,90,0]) cylinder(h=2, r=0.07, $fn=40);
}
translate([6,-12,0.75]) difference() {
cube([2,1.2,0.5], center=true);
rotate([0,90,0]) cylinder(h=2, r=0.07, $fn=40);
}
translate([-6,12,0.75]) difference() {
cube([2,1.2,0.5], center=true);
rotate([0,90,180]) cylinder(h=2, r=0.07, $fn=40);
}
translate([-6,-12,0.75]) difference() {
cube([2,1.2,0.5], center=true);
rotate([0,90,180]) cylinder(h=2, r=0.07, $fn=40);
}

