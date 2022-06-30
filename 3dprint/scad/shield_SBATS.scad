rotate([90,0,180]){
$fn=12;

difference(){
shield_UNO(1.2);

translate([2.54,5,-1])rotate([0,0,90])pin20mil(3,1.5,3);
translate([2.54,28,-1])rotate([0,0,90])pin20mil(5,1.5,3);
translate([2.54,43,-1])rotate([0,0,90])pin20mil(3,1.5,3);

translate([42,42,-1])rotate([0,0,90])pin20mil(3,1.5,3);
translate([48,42,-1])rotate([0,0,90])pin20mil(3,1.5,3);
translate([54,42,-1])rotate([0,0,90])pin20mil(3,1.5,3);
translate([42,34.5,-1])pin20mil(1,1.5,3);
translate([48,34.5,-1])pin20mil(1,1.5,3);
translate([54,34.5,-1])pin20mil(1,1.5,3);

translate([59,37,-1])rotate([0,0,90])pin20mil(4,1.5,3);
translate([63.5,37,-1])rotate([0,0,90])pin20mil(4,1.5,3);

translate([39,15+15.24,-1])pin20mil(8,1.5,10);
translate([39,15,-1])pin20mil(8,1.5,10);
translate([66,16,-1])rotate([0,0,90])pin20mil(3,1.5,3);
translate([66,26,-1])rotate([0,0,90])pin20mil(3,1.5,3);
translate([61,16,-1])rotate([0,0,90])pin20mil(3,1.5,3);
translate([61,26,-1])rotate([0,0,90])pin20mil(3,1.5,3);

translate([50.5,6,-1])pin20mil(6,1.5,10);
translate([50.5,6+2.54,-1])pin20mil(6,1.5,10);
translate([50.5,6+5.08,-1])pin20mil(6,1.5,10);

translate([28.7,42,-1])pin20mil(4,1.5,10);
translate([28.7,42+2.54,-1])pin20mil(4,1.5,10);
translate([28.7,42+5.08,-1])pin20mil(4,1.5,10);

translate([9,44,-1])cylinder(d=1.5,h=5);
translate([15.9,44,-1])cylinder(d=1.5,h=5);
translate([21,41.5,-1])rotate([0,0,90])pin20mil(3,1.5,10);

translate([9,34,-1])pin20mil(3,1.5,10);
translate([11.54,31.45,-1])pin20mil(1,1.5,10);
translate([9,27,-1])pin20mil(3,1.5,10);

translate([21,34,-1])pin20mil(3,1.5,10);
translate([23.54,31.45,-1])pin20mil(1,1.5,10);
translate([21,27,-1])pin20mil(3,1.5,10);

translate([9,14,-1])cylinder(d=1.5,h=5);
translate([9,18.5,-1])cylinder(d=1.5,h=5);
translate([15.5,14,-1])cylinder(d=1.5,h=5);
translate([15.5,18.5,-1])cylinder(d=1.5,h=5);

translate([20,14,-1])cylinder(d=1.5,h=5);
translate([20,18.5,-1])cylinder(d=1.5,h=5);
translate([26.5,14,-1])cylinder(d=1.5,h=5);
translate([26.5,18.5,-1])cylinder(d=1.5,h=5);

translate([31,27,-1])cylinder(d=1.5,h=5);
translate([33.5,27,-1])cylinder(d=1.5,h=5);
translate([31,19.5,-1])cylinder(d=1.5,h=5);
translate([33.5,19.5,-1])cylinder(d=1.5,h=5);

translate([39,25,-1])cylinder(d=1.5,h=5);
translate([39,18,-1])cylinder(d=1.5,h=5);

translate([9,5,-1])cylinder(d=1.5,h=5);
translate([9,8,-1])cylinder(d=1.5,h=5);
translate([15.6,5,-1])cylinder(d=1.5,h=5);
translate([15.6,8,-1])cylinder(d=1.5,h=5);

}    
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
