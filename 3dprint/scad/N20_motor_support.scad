$fn=18;
difference(){
translate([0,-13,0])cube([14,31,19]);
translate([0,0.5,11.1])rotate([0,90,0])
difference(){
    translate([0,0,-40])cylinder(d=12.2,h=80,$fn=60);
    translate([6.1,0,0])cube([2,16,80],center=true);
    translate([-6.1,0,0])cube([2,16,80],center=true);
}

translate([-40,-20,10.1])cube([80,20,2]);

translate([7,12,-1])cylinder(d=2.8,h=32);    
translate([7,-9,11])cylinder(d=2.8,h=12);
translate([7,-9,-1])cylinder(d=3.2,h=12);
}
