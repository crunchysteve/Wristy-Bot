translate([-13.5,0,100]) rotate([26.7,0,0]) rotate([0,90,0]){
    beaterAdapter();
    translate([-160,0,14]) rotate([0,90,0]) beater();
}
translate([-88.5,0,100]) rotate([0,90,0]) motorType775();
beaterRiser();
beaterRest();
drumFoot();
backFoot();
translate([-100,28,3]) woodPad();
translate([40,28,3]) woodPad();
drumClamp();
mirror([1,0,0]) drumClamp();

color("silver") translate([-17,-25,3]) difference(){
    union(){
        cube([47,50,3]);
        translate([0,47,0]) cube([47,3,50]);
    }
    for(x=[10,37]) for(y=[10,37]){
        translate([x,y,-1]) cylinder(r=2,h=5);
    }
    for(x=[10,37]) for(z=[10,37]){
        translate([x,46,z]) rotate([-90,0,0]) cylinder(r=2,h=5);
    }
}

module drumClamp() color("silver") translate([40,28,15]){
    difference(){
        union(){
            cube([60,40,1.6]);
        translate([0,38.4,-10.4]) cube([60,1.6,12]);
        }
        translate([25,17,-1]) cylinder(r=3,h=5);
    }
}

module woodPad() color("wheat") cube([60,12,12]);

module backFoot() color("silver") translate([-20,-75,0]){
    difference(){
        union(){
            cube([3,100,50]);
            cube([50,100,3]);
        }
        for(y=[60,90]) for(z=[13,40]){
            translate([-1,y,z]) rotate([0,90,0]) cylinder(r=2,h=5);
        }
        translate([25,20,-1]) cylinder(r=3,h=5);
    }
}

module drumFoot() color("lightgray") translate([-100,25,0]){
    difference(){
        union(){
            cube([200,3,50]);
            cube([60,50,3]);
            translate([140,0,0]) cube([60,50,3]);
        }
        for(x=[40,70]) for(z=[10,40]){
            translate([x,4,z]) rotate([90,0,0]) cylinder(r=2,h=5);
        }
        for(x=[93,120]) for(z=[13,40]){
            translate([x,-1,z]) rotate([-90,0,0]) cylinder(r=2,h=5);
        }
        translate([35,20,-1]) cylinder(r=3,h=5);
        translate([165,20,-1]) cylinder(r=3,h=5);
    }
}

module beaterRest() color("gray"){
    translate([-21.5,-15,120]) rotate([0,90,0]) cylinder(r=2,h=40);
}

module beaterRiser() color("lightgray"){
    translate([-70,-25,0]) difference(){
        cube([50,50,130]);
        for(x=[10,40]) for(z=[10,40]){
            translate([x,51,z]) rotate([90,0,0]) cylinder(r=2,h=5);
        }
        for(y=[13,40]) for(z=[10,40]){
            translate([48,y,z]) rotate([0,90,0]) cylinder(r=2,h=6);
        }
        translate([1.5,1.5,-1]) cube([47,47,132]);
        translate([48,25,100]) rotate([0,90,0]) cylinder(r=9,h=10);
        translate([48,25,85.5]) rotate([0,90,0]) cylinder(r=2,h=10);
        translate([-1,25,100]) rotate([0,90,0]) cylinder(r=21,h=10);
        translate([48,25,114.5]) rotate([0,90,0]) cylinder(r=2,h=10);
        translate([48,10,120]) rotate([0,90,0]) cylinder(r=2,h=10);
    }
}

module beaterAdapter() color("silver") difference(){
    cylinder(r=10,h=20);
    translate([0,0,-1]) cylinder(r=2.5,h=22);
    translate([0,0,14]) rotate([0,90,0]) cylinder(r=2.75,h=22);
    translate([0,11,6]) rotate([90,0,0]) cylinder(r=2,h=22);
    translate([0,11,14]) rotate([90,0,0]) cylinder(r=2,h=22);
    rotate_extrude() translate([10,0]){
        rotate([0,0,45]) square(1.5,center=true);
    }
    translate([0,0,20]) rotate_extrude() translate([10,0]){
        rotate([0,0,45]) square(1.5,center=true);
    }
}

module beater(){
    color("gray") translate([0,0,-0.1]) cylinder(r=12,h=1);
    color("wheat") cylinder(r=25,h=32);
    color("gray") translate([0,0,31.1]) cylinder(r=12,h=1);
    color("lightgray") translate([0,0,-5]) cylinder(r=2.5,h=200);
}

module motorType775() color("silver") difference(){
    union(){
        cylinder(r=21,h=66);
        translate([0,0,-5]) cylinder(r=8.75,h=76);
        translate([0,0,-9.8]) cylinder(r=2.5,h=95);
        translate([0,0,24]) cylinder(r=22,h=36);
        translate([0,0,66]) hull(){
            rotate_extrude() translate([20,0]) circle(1);
        }
    }
    translate([-14.5,0,60]) cylinder(r=2,h=10);
    translate([14.5,0,60]) cylinder(r=2,h=10);
}