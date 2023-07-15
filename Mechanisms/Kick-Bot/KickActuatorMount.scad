difference(){
    union(){
        rotate([0,-90,0]) riser();
        translate([30,0,0]) 
                mirror([1,0,0]) rotate([0,-90,0]) riser();
        translate([-4,-4,0]) cube([38,4,25]);
    }
    translate([6,1,17]) rotate([90,0,0]) cylinder(r=2.8,h=6);
    translate([24,1,17]) rotate([90,0,0]) cylinder(r=2.8,h=6);
}

module riser() linear_extrude(height=4) difference(){
    hull(){
        square([25,1]);
        translate([6,20]) circle(6);
    }
    translate([6,20]) circle(2.4);
}