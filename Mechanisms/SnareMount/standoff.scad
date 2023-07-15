// 16 x 34
standoff();

module standoff() difference(){
    union(){
        cube([20,50,42]);
        translate([20,16,0]) cube([20,50,42]);
    }
    translate([20,0,21])  
            rotate([0,0,45]) cube([3,3,44],center=true);
    translate([20,66,21])  
            rotate([0,0,45]) cube([3,3,44],center=true);
    translate([-1,8,13]) rotate([0,90,0]) cylinder(r=1.7,h=42);
    translate([8,8,13]) rotate([0,90,0]) cylinder(r=4,h=42);
    translate([-1,43,13]) rotate([0,90,0]) cylinder(r=1.7,h=42);
    translate([8,43,29]) rotate([0,90,0]) cylinder(r=4,h=42);
    translate([-1,43,29]) rotate([0,90,0]) cylinder(r=1.7,h=42);
    translate([8,43,13]) rotate([0,90,0]) cylinder(r=4,h=42);    translate([-1,23,13]) rotate([0,90,0]) cylinder(r=1.7,h=42);
    translate([-8,23,13]) rotate([0,90,0]) cylinder(r=4,h=42);
    translate([-1,58,13]) rotate([0,90,0]) cylinder(r=1.7,h=42);
    translate([-8,58,13]) rotate([0,90,0]) cylinder(r=4,h=42);
    translate([-1,8,29]) rotate([0,90,0]) cylinder(r=1.7,h=42);
    translate([8,8,29]) rotate([0,90,0]) cylinder(r=4,h=42);    translate([-1,23,29]) rotate([0,90,0]) cylinder(r=1.7,h=42);
    translate([-8,23,29]) rotate([0,90,0]) cylinder(r=4,h=42);
    translate([-1,58,29]) rotate([0,90,0]) cylinder(r=1.7,h=42);
    translate([-8,58,29]) rotate([0,90,0]) cylinder(r=4,h=42);
}