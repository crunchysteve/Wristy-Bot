//  polygon([[0,0],[5,0],[5,5*tan(30)]]);

ang = 30;
adj = 5.25;
opp = 5*tan(ang);
hyp = sqrt(pow(adj,2) + pow(opp,2));
echo(ang, adj, opp, hyp);

difference(){
    linear_extrude(height=10) difference(){
        union(){
            circle(10);
            hull(){
                translate([10,0]) square([10,12],center=true);
                translate([25,0]) circle(6);
            }
        }
        rotate([0,0,30]) polygon([[adj,opp],[0,hyp],[-adj,opp],
                 [-adj,-opp],[0,-hyp],[adj,-opp]]);
        translate([26,0]) circle(2.2);
    }
    translate([8,-13,4]) cube(26);
}
translate([7.7,0,4]) rotate([90,0,0]) 
        rotate([0,0,45]) cube([3,3,12],center=true);

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