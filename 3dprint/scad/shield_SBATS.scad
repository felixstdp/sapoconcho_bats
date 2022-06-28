$fn=12;

difference(){
shield_UNO();

translate([2,10,0])rotate([0,0,90])pin20mil(3,1.5,3);
translate([2,30,0])rotate([0,0,90])pin20mil(3,1.5,3);
translate([2,40,0])rotate([0,0,90])pin20mil(3,1.5,3);

translate([50,42,0])rotate([0,0,90])pin20mil(3,1.5,3);
translate([55,42,0])rotate([0,0,90])pin20mil(3,1.5,3);
translate([45,42,0])rotate([0,0,90])pin20mil(3,1.5,3);
translate([50,34.5,0])rotate([0,0,90])pin20mil(1,1.5,3);
translate([55,34.5,0])rotate([0,0,90])pin20mil(1,1.5,3);
translate([45,34.5,0])rotate([0,0,90])pin20mil(1,1.5,3);

translate([44,15+15.24,-1])pin20mil(8,1.5,10);
translate([44,15,-1])pin20mil(8,1.5,10);
translate([66.5,15,0])rotate([0,0,90])pin20mil(3,1.5,3);
translate([66.5,25,0])rotate([0,0,90])pin20mil(3,1.5,3);

translate([50.5,6,-1])pin20mil(6,1.5,10);
translate([50.5,6+2.54,-1])pin20mil(6,1.5,10);
translate([50.5,6+5.08,-1])pin20mil(6,1.5,10);

translate([28.7,42,-1])pin20mil(4,1.5,10);
translate([28.7,42+2.54,-1])pin20mil(4,1.5,10);
translate([28.7,42+5.08,-1])pin20mil(4,1.5,10);

}    

module shield_UNO(){
difference(){
union(){
cube([66.04,50.5+2.54,0.8]);
translate([65.04,2,0])hull(){
cube([1,37.85,0.8]);
translate([1,2.54,0])cube([2.54,32.77,0.8]);
}
}
$fn=12;
//translate([13.97,2.54,-1])cylinder(d=3.2,h=4);
//translate([15.25,50.5,-1])cylinder(d=3.2,h=4);
//translate([66.04,35.56,-1])cylinder(d=3.2,h=4);
//translate([66.04,7.62,-1])cylinder(d=3.2,h=4);


translate([32.75,2.54,0])pin20mil(6,1.5,4);
translate([50.5,2.54,0])pin20mil(6,1.5,4);
translate([18.56,50.5,0])pin20mil(10,1.5,4);
translate([45.48,50.5,0])pin20mil(8,1.5,4);
}
}

module pin20mil(n,d_paso,h_paso)
{
for (i=[1:n]){
     translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso);
}
}
