// Aluminium Drum Robot Parts

translate([0,0,160]) rotate([0,10,0]) cradle();
translate([-10,18,0]) rotate([90,0,0]) side();
translate([-10,-15,0]) rotate([90,0,0]) side();
translate([0,0,10]) longSpacer();
translate([0,0,70]) longSpacer();
translate([0,0,160]) spacer();
translate([0,0,160]) mirror([0,1,0]) spacer();
translate([-5,0,0]) bracket();
translate([-15,0,0]) mirror([0,1,0]) bracket();

translate([50,0,-3.5]) mirror([1,0,0]) actuator(act=0);
translate([160,0,120.7]) rotate([0,-170,0]) stick();

/*
    MATERIALS
    2x 1m lengths of 60x3 aluminium flatbar will build 10 (2x sides)
    1x 1m length of 40x20x2   "     square tube will build 10 (rocker)
    1x 1m length of 10mm aluminium 
                    round bar (will build enough spacers)
            -   centre drill 3mm hole with lathe for all spacers
                cut 2 to 30mm lengths
                cut 2 to 4mm lengths after lathing outer to 5mm
    1x 1m length of 40x12x1.6 aluminium 
                angle will easily build brackets for 10 units.
    1x car door linear actuator
*/

module bracket() color("lightgray"){
    translate([-10,18,0]) difference(){
        union(){
            cube([40,1.6,80]);
            cube([1.6,12,80]);
        }
        hull(){
            translate([7,2,10]) rotate([90,0,0]) cylinder(r=2,h=4);
            translate([33,2,10]) rotate([90,0,0]) cylinder(r=2,h=4);
        }
        hull(){
            translate([7,2,70]) rotate([90,0,0]) cylinder(r=2,h=4);
            translate([33,2,70]) rotate([90,0,0]) cylinder(r=2,h=4);
        }
        translate([-1,7,10]) rotate([0,90,0]) cylinder(r=2.5,h=4);
        translate([-1,7,70]) rotate([0,90,0]) cylinder(r=2.5,h=4);
    }
}

module side() color("silver"){
    linear_extrude(height=3) difference(){
        offset(9.9) offset(-9.9){
            polygon([[0,0],[60,0],[60,100],[17,170],[0,170]]);
        }
        hull(){
            translate([10,10]) circle(2);
            translate([10,30]) circle(2);
        }
        hull(){
            translate([45,10]) circle(2);
            translate([45,30]) circle(2);
        }
        hull(){
            translate([45,68]) circle(2);
            translate([45,88]) circle(2);
        }
        hull(){
            translate([10,70]) circle(2.5);
            translate([10,90]) circle(2.5);
        }
        translate([10,160]) circle(2.5);
    }
}

module cradle() color("silver") difference(){
    translate([20,0,-5]) cube([80,20,30],center=true);
    translate([20,0,-0.5]) cube([82,16,36],center=true);
    translate([-41,-11,-4]) cube([31,22,37]);
    translate([10,-11,-4]) cube([51,22,37]);
    translate([0,11,0]) rotate([90,0,0]) cylinder(r=4,h=22);
    translate([-20,0,-4]) rotate([90,0,0]) 
            rotate([0,0,45]) cube([4,4,22],center=true);
    hull(){
        translate([-12,11,0]) rotate([90,0,0]) 
                rotate([0,0,45]) cylinder(r=2,h=22);
        translate([-12,11,-12]) rotate([90,0,0]) 
                rotate([0,0,45]) cylinder(r=2,h=22);
    }
    translate([-10,0,10]) rotate([90,0,0]) 
            rotate([0,0,45]) cube([4,4,22],center=true);
    translate([60,0,-4]) rotate([90,0,0]) 
            rotate([0,0,45]) cube([4,4,22],center=true);
    hull(){
        translate([45,11,0]) rotate([90,0,0]) 
                rotate([0,0,45]) cylinder(r=2,h=22);
        translate([45,11,-12]) rotate([90,0,0]) 
                rotate([0,0,45]) cylinder(r=2,h=22);
    }
    translate([10,0,10]) rotate([90,0,0]) 
            rotate([0,0,45]) cube([4,4,22],center=true);
}

module spacer() color("lightgray"){
    translate([0,15,0]) rotate([90,0,0]) difference(){
        cylinder(r=3,h=4);
        translate([0,0,-1]) cylinder(r=2.5,h=7);
    }
}

module longSpacer() color("lightgray"){
    translate([0,15,0]) rotate([90,0,0]) difference(){
        cylinder(r=5,h=30);
        translate([0,0,-1]) cylinder(r=1.3,h=33);
    }
}

module actuator(act=0) color("gray"){
    cylinder(r=11,h=98);
    cube([10,14,10],center=true);
    translate([0,0,act]) difference(){
        union(){
            cylinder(r=6,h=128);
            translate([0,0,128]) sphere(6);
        }
        translate([-7,2.5,122]) cube([14,7,26]);
        translate([0,10,128]) rotate([90,0,0]) cylinder(r=2.5,h=20);
        translate([-7,-9.5,122]) cube([14,7,26]);
    }
    translate([0,0,47]) rotate([0,90,0]) cylinder(r=14.5,h=44);
    translate([-12.5,-12.5,0]) cube([25,25,82]);
    difference(){
        translate([15.5,14.5,23]) 
                rotate([90,0,0]) cylinder(r=4,h=29);
        translate([15,14.5,23]) 
                rotate([90,0,0]) cylinder(r=1.8,h=30);
    }
    difference(){
        translate([15.5,14.5,81]) 
                rotate([90,0,0]) cylinder(r=4,h=29);
        translate([15,14.5,81]) 
                rotate([90,0,0]) cylinder(r=1.8,h=30);
    }
}

module stick(r=7.5,l=320) color("tan") translate([7.5,0,0]){
    sphere(r);
    rotate([0,90,0]) cylinder(r=r,h=l/2-2*r);
    translate([l/2-2*r,0,0]) 
            rotate([0,90,0]) cylinder(r1=r,r2=3*r/5,h=l/2);
    translate([l-10-2*r,0,0]) scale([7*r/18,1,1]) sphere(r);
}
