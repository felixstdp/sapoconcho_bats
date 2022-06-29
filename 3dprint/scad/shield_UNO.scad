shield_UNO(1.5);

module shield_UNO(h)
{
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
     translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso,$fn=12);
}
}
