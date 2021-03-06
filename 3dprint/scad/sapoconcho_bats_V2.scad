rotate([0,0,0]){
$fn=12;

difference(){
shield_UNO(1.2);

// conectores de alimentación e interruptor
translate([2.54,5,-1])cylinder(d=1.5,h=5);
translate([2.54,10.08,-1])cylinder(d=1.5,h=5);    
translate([2.54,28,-1])rotate([0,0,90])pin20mil(5,1.2,3);
translate([2.54,43,-1])cylinder(d=1.5,h=5);
translate([2.54,48.08,-1])cylinder(d=1.5,h=5);
    
//// LEDs semáforo
translate([-15,0,0])
{
translate([45,43.5,-1])rotate([0,0,90])pin20mil(2,1.2,3);
translate([51,43.5,-1])rotate([0,0,90])pin20mil(2,1.2,3);
translate([57,43.5,-1])rotate([0,0,90])pin20mil(2,1.2,3);
}
translate([39,34,-1])cylinder(d=1.2,h=5);
translate([47.5,34,-1])cylinder(d=1.2,h=5);
translate([39,36.54,-1])cylinder(d=1.2,h=5);
translate([47.5,36.54,-1])cylinder(d=1.2,h=5);
translate([39,39.08,-1])cylinder(d=1.2,h=5);
translate([47.5,39.08,-1])cylinder(d=1.2,h=5);

// neopixel THT
translate([33,27,-1])rotate([0,0,90])pin20mil(4,1.2,3);

// conector bluetooth
translate([62.5,37,-1])rotate([0,0,90])pin20mil(4,1.2,3);

// driver TB6612/DVR8833
translate([39,15+15.24,-1])pin20mil(8,1.2,10);
translate([39,15,-1])pin20mil(8,1.2,10);

// conexión de motores y condensadores
translate([66,16,-1])cylinder(d=1.5,h=5);
translate([66,21.08,-1])cylinder(d=1.5,h=5);
translate([66,26,-1])cylinder(d=1.5,h=5);
translate([66,31.04,-1])cylinder(d=1.5,h=5);
translate([60.5,16,-1])cylinder(d=1.2,h=5);
translate([60.5,21.08,-1])cylinder(d=1.2,h=5);
translate([60.5,26,-1])cylinder(d=1.2,h=5);
translate([60.5,31.04,-1])cylinder(d=1.2,h=5);

// pines analógicos
translate([50.5,6,-1])pin20mil(6,1.2,10);
translate([50.5,6+2.54,-1])pin20mil(6,1.2,10);
translate([50.5,6+5.08,-1])pin20mil(6,1.2,10);

// pines digitales
translate([21.9,0,0])
{
translate([28.7,42,-1])pin20mil(4,1.2,10);
translate([28.7,42+2.54,-1])pin20mil(4,1.2,10);
translate([28.7,42+5.08,-1])pin20mil(4,1.2,10);
}
// buzzer
translate([9,45,-1])cylinder(d=1.2,h=5);
translate([15.9,45,-1])cylinder(d=1.2,h=5);
translate([21,41.2,-1])rotate([0,0,90])pin20mil(3,1.2,10);

// potenciómetro 1
translate([9,34,-1])cylinder(d=1.2,h=5);
translate([14.08,34,-1])cylinder(d=1.2,h=5);
translate([11.54,31.45,-1])cylinder(d=1.2,h=5);
translate([9,26.5,-1])pin20mil(3,1.2,10);

// potenciómetro 2
translate([21,34,-1])cylinder(d=1.2,h=5);
translate([26.08,34,-1])cylinder(d=1.2,h=5);
translate([23.54,31.45,-1])cylinder(d=1.2,h=5);
translate([21,26.5,-1])pin20mil(3,1.2,10);

// pulsador 1
translate([7,13,-1])cylinder(d=1.2,h=5);
translate([7,18,-1])cylinder(d=1.2,h=5);
translate([19.5,13,-1])cylinder(d=1.2,h=5);
translate([19.5,18,-1])cylinder(d=1.2,h=5);

// pulsador 2
translate([23,13,-1])cylinder(d=1.2,h=5);
translate([23,18,-1])cylinder(d=1.2,h=5);
translate([35.5,13,-1])cylinder(d=1.2,h=5);
translate([35.5,18,-1])cylinder(d=1.2,h=5);

// resistencias pulsadores
translate([9,22.5,-1])cylinder(d=1.2,h=5);
translate([17.5,22.5,-1])cylinder(d=1.2,h=5);
translate([25,22.5,-1])cylinder(d=1.2,h=5);
translate([33.5,22.5,-1])cylinder(d=1.2,h=5);

// fusible motores
translate([39,24.5,-1])cylinder(d=1.2,h=5);
translate([39,18,-1])cylinder(d=1.2,h=5);

// fusible +5V
translate([41.24,11.7,-1])cylinder(d=1.2,h=5);
translate([41.24,5.2,-1])cylinder(d=1.2,h=5);

// LDR
translate([9,4,-1])cylinder(d=1.2,h=5);
translate([9,7,-1])cylinder(d=1.2,h=5);
translate([15.6,4,-1])cylinder(d=1.2,h=5);
translate([15.6,7,-1])cylinder(d=1.2,h=5);
translate([18,7,-1])pin20mil(3,1.2,10);

// diodo
translate([20,2.5,-1])cylinder(d=1.2,h=5);
translate([27.6,2.5,-1])cylinder(d=1.2,h=5);

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
translate([32.75,2.54,-1])pin20mil(6,1.2,h+2);
translate([50.5,2.54,-1])pin20mil(6,1.2,h+2);
translate([18.56,50.5,-1])pin20mil(10,1.2,h+2);
translate([45.48,50.5,-1])pin20mil(8,1.2,h+2);
translate([66.04,53.04,-1])cylinder(d=4,h=5,$fn=4);
}
}

module pin20mil(n,d_paso,h_paso)
{
for (i=[1:n]){
     translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso);
}
}
