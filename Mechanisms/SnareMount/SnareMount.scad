use<./standoff.scad>

//color("red") translate([64,0,0]) circle(90);

$fn=120;
translate([0,-3,42]) mirror([0,0,1]) 
        rotate([90,0,0]) brktHook();
translate([30,-3,0]) rotate([0,0,-90]) standoff();
translate([124,-3,42]) mirror([0,0,1]) 
        mirror([1,0,0]) rotate([90,0,0]) brktHook();

linear_extrude(height=4) translate([3,3]) difference(){
    offset(3) offset(-3) square([120,42]);
    translate([104,10]) circle(1.8);
    hull(){
        translate([10,10]) circle(1.8);
        translate([26,10]) circle(1.8);
    }
    hull(){
        translate([40,13]) circle(2.5);
        translate([56,13]) circle(2.5);
    }
    hull(){
        translate([40,29]) circle(2.5);
        translate([56,29]) circle(2.5);
    }
    hull(){
        translate([75,13]) circle(2.5);
        translate([90,13]) circle(2.5);
    }
    hull(){
        translate([75,29]) circle(2.5);
        translate([90,29]) circle(2.5);
    }
    hull(){
        translate([10,32]) circle(1.8);
        translate([26,32]) circle(1.8);
    }
    translate([104,32]) circle(1.8);
}

module brktHook() difference(){
    rotate([0,90,0]) translate([-147.2,0,0]) difference(){
        union(){
            linear_extrude(height=26) difference(){
                translate([127.2,3]) square([20,39]);
                circle(137);
            }
            translate([137,3.2,3]) 
                    rotate([0,90,0]) cylinder(r=3,h=10.2);
            translate([136.9,0.2,3]) cube([10.3,3,23]);
            translate([0,0,3]){
                difference(){
                    hull(){
                        translate([0,0,-3]){
                            linear_extrude(height=6) difference(){
                                translate([122,3]) square([20,36]);
                                circle(128);
                                translate([128,0,0]) 
                                        rotate([0,90,0]) 
                                                cylinder(r=3,h=12);
                            }
                        }
                        rotate([0,0,17.33]) translate([128,0,0]) 
                                rotate([0,90,0]) cylinder(r=3,h=12);
                    }
                    translate([0,0,-1]) cylinder(r=128,h=14);
                    translate([120,42,-6]) cube([40,10,14]);
                    translate([134,0,6]) sphere(3);
                }
                rotate([0,0,1.33]) translate([128,0,0]) 
                        rotate([0,90,0]) cylinder(r=3,h=12);
                rotate([0,0,1.33]) rotate_extrude(angle=16){
                    translate([128,0]) circle(3);
                }
                rotate([0,0,1.33]) translate([128,0]) sphere(3);
                rotate([0,0,17.33]) translate([128,0]) sphere(3);
            }
        }
        translate([0,0,7]) rotate_extrude(angle=19){
            translate([132,0]) scale([1.4,1]) circle(3.5);
        }
    }
    translate([16,10,-1]) cylinder(r=1.5,h=9);
    translate([16,10,3]) cylinder(r=3.3,h=9);
    translate([16,32,-1]) cylinder(r=1.5,h=9);
    translate([16,32,3]) cylinder(r=3.3,h=12);
}