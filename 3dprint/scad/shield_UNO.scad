shield_UNO();

module shield_UNO(){
difference(){
union(){
cube([66.04,50.5+2.54,1.5]);
translate([65.04,2,0])hull(){
cube([1,37.85,1.5]);
translate([1,2.54,0])cube([2.54,32.77,1.5]);
}
}
$fn=12;
translate([13.97,2.54,-1])cylinder(d=3.2,h=4);
translate([15.25,50.5,-1])cylinder(d=3.2,h=4);
translate([66.04,35.56,-1])cylinder(d=3.2,h=4);
translate([66.04,7.62,-1])cylinder(d=3.2,h=4);


translate([32,2.54,0])pin20mil(6,1.5,4);
translate([49.78,2.54,0])pin20mil(6,1.5,4);
translate([23.64,50.5,0])pin20mil(8,1.5,4);
translate([45.48,50.5,0])pin20mil(8,1.5,4);
}
}

module pin20mil(n,d_paso,h_paso)
{
for (i=[1:n]){
     translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso);
}
}
