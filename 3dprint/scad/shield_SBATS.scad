
$fn=12;

difference(){
shield_UNO(1.2);

translate([2.54,5,-1])rotate([0,0,90])pin20mil(3,1.5,3);
translate([2.54,28,-1])rotate([0,0,90])pin20mil(5,1.5,3);
translate([2.54,43,-1])rotate([0,0,90])pin20mil(3,1.5,3);

translate([43,42,-1])rotate([0,0,90])pin20mil(3,1.5,3);
translate([49,42,-1])rotate([0,0,90])pin20mil(3,1.5,3);
translate([55,42,-1])rotate([0,0,90])pin20mil(3,1.5,3);
translate([43,34.5,-1])rotate([0,0,90])pin20mil(1,1.5,3);
translate([49,34.5,-1])rotate([0,0,90])pin20mil(1,1.5,3);
translate([55,34.5,-1])rotate([0,0,90])pin20mil(1,1.5,3);

translate([42,15+15.24,-1])pin20mil(8,1.5,10);
translate([42,15,-1])pin20mil(8,1.5,10);
translate([66,15,-1])rotate([0,0,90])pin20mil(3,1.5,3);
translate([66,25,-1])rotate([0,0,90])pin20mil(3,1.5,3);

translate([50.5,6,-1])pin20mil(6,1.5,10);
translate([50.5,6+2.54,-1])pin20mil(6,1.5,10);
translate([50.5,6+5.08,-1])pin20mil(6,1.5,10);

translate([28.7,42,-1])pin20mil(4,1.5,10);
translate([28.7,42+2.54,-1])pin20mil(4,1.5,10);
translate([28.7,42+5.08,-1])pin20mil(4,1.5,10);

translate([8,45,-1])cylinder(d=1.5,h=5);
translate([14.9,45,-1])cylinder(d=1.5,h=5);
translate([19,45,-1])pin20mil(3,1.5,10);
}    

module shield_UNO(h){
difference(){
union(){
cube([66.04,50.5+2.54,h]);
translate([65.04,2,0])hull(){
cube([1,37.85,h]);
translate([1,2.54,0])cube([2.54,32.77,h]);
}
}
$fn=12;
translate([32.75,2.54,-1])pin20mil(6,1.5,h+2);
translate([50.5,2.54,-1])pin20mil(6,1.5,h+2);
translate([18.56,50.5,-1])pin20mil(10,1.5,h+2);
translate([45.48,50.5,-1])pin20mil(8,1.5,h+2);
}
}

module pin20mil(n,d_paso,h_paso)
{
for (i=[1:n]){
     translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso);
}
}
