$fn=120;
difference(){
union(){
cylinder(h=2.5,d1=45,d2=50);
translate([0,0,2.5])cylinder(d=50,h=10);
translate([0,0,12.5])cylinder(h=2.5,d2=45,d1=50);
}
translate([0,0,7.5])
rotate_extrude(angle = 360, convexity = 2) {
translate([25.5,0,0])circle(1.6);
}
translate([0,0,3])cylinder(d=42,h=15);

for (i=[0:72:350]){
rotate([0,0,i])
translate([13,0,-1])cylinder(d=12,h=15,$fn=5);
}
scale(1.05)    // ajustar según impresora
intersection(){
translate([0,0,-1])cylinder(d=3,h=12);
translate([-1.5,-1,-1])cube([3,3,12]);
}
}
difference(){
cylinder(d=13,h=10);
scale(1.05)    // ajustar según impresora
intersection(){
translate([0,0,-1])cylinder(d=3,h=12);
translate([-1.5,-1,-1])cube([3,3,12]);
}
translate([0,0,7])rotate([90,0,0])
    cylinder(d=1.9,h=10);
}
