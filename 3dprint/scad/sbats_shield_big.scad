rotate([0,0,0]){
$fn=12;

difference(){
shield_UNO(1.2);

// conectores de alimentación e interruptor
translate([2.54,5,-1])rotate([0,0,90])pin20mil(3,1.2,3);
translate([2.54,28,-1])rotate([0,0,90])pin20mil(5,1.2,3);
translate([2.54,43,-1])rotate([0,0,90])pin20mil(3,1.2,3);

// LEDs semáforo
translate([43.5,42,-1])rotate([0,0,90])pin20mil(3,1.2,3);
translate([49.5,42,-1])rotate([0,0,90])pin20mil(3,1.2,3);
translate([55.5,42,-1])rotate([0,0,90])pin20mil(3,1.2,3);
translate([43.5,34.5,-1])pin20mil(1,1.2,3);
translate([49.5,34.5,-1])pin20mil(1,1.2,3);
translate([55.5,34.5,-1])pin20mil(1,1.2,3);

// neopixel THT
translate([33,27,-1])rotate([0,0,90])pin20mil(4,1.2,3);

// conector bluetooth
translate([62.5,37,-1])rotate([0,0,90])pin20mil(4,1.2,3);

// driver TB6612/DVR8833
translate([39,15+15.24,-1])pin20mil(8,1.2,10);
translate([39,15,-1])pin20mil(8,1.2,10);

// conexión de motores y condensadores
translate([66,16,-1])rotate([0,0,90])pin20mil(3,1.2,3);
translate([66,26,-1])rotate([0,0,90])pin20mil(3,1.2,3);
translate([61,16,-1])rotate([0,0,90])pin20mil(3,1.2,3);
translate([61,26,-1])rotate([0,0,90])pin20mil(3,1.2,3);

// pines analógicos
translate([50.5,6,-1])pin20mil(6,1.2,10);
translate([50.5,6+2.54,-1])pin20mil(6,1.2,10);
translate([50.5,6+5.08,-1])pin20mil(6,1.2,10);

// pines digitales
translate([28.7,42,-1])pin20mil(4,1.2,10);
translate([28.7,42+2.54,-1])pin20mil(4,1.2,10);
translate([28.7,42+5.08,-1])pin20mil(4,1.2,10);

// buzzer
translate([9,44,-1])cylinder(d=1.2,h=5);
translate([15.9,44,-1])cylinder(d=1.2,h=5);
translate([21,41.2,-1])rotate([0,0,90])pin20mil(3,1.2,10);

// potenciómetro 1
translate([9,34,-1])pin20mil(3,1.2,10);
translate([11.24,31.45,-1])pin20mil(1,1.2,10);
translate([9,26,-1])pin20mil(3,1.2,10);

// potenciómetro 2
translate([21,34,-1])pin20mil(3,1.2,10);
translate([23.54,31.45,-1])pin20mil(1,1.2,10);
translate([21,26,-1])pin20mil(3,1.2,10);

// pulsador 1
translate([5,14,-1])cylinder(d=1.2,h=5);
translate([5,19,-1])cylinder(d=1.2,h=5);
translate([17.5,14,-1])cylinder(d=1.2,h=5);
translate([17.5,19,-1])cylinder(d=1.2,h=5);

// pulsador 2
translate([21,14,-1])cylinder(d=1.2,h=5);
translate([21,19,-1])cylinder(d=1.2,h=5);
translate([33.5,14,-1])cylinder(d=1.2,h=5);
translate([33.5,19,-1])cylinder(d=1.2,h=5);

// resistencias pulsadores
translate([7,22,-1])cylinder(d=1.2,h=5);
translate([15,22,-1])cylinder(d=1.2,h=5);
translate([23,22,-1])cylinder(d=1.2,h=5);
translate([31,22,-1])cylinder(d=1.2,h=5);

// fusible motores
translate([39,25,-1])cylinder(d=1.2,h=5);
translate([39,18,-1])cylinder(d=1.2,h=5);

// fusible +5V
translate([41.24,12.2,-1])cylinder(d=1.2,h=5);
translate([41.24,5.2,-1])cylinder(d=1.2,h=5);

// LDR
translate([9,5,-1])cylinder(d=1.2,h=5);
translate([9,8,-1])cylinder(d=1.2,h=5);
translate([15.6,5,-1])cylinder(d=1.2,h=5);
translate([15.6,8,-1])cylinder(d=1.2,h=5);
translate([18,8,-1])pin20mil(3,1.2,10);

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
}
}

module pin20mil(n,d_paso,h_paso)
{
for (i=[1:n]){
     translate([(i-1)*2.54,0,0])cylinder(d=d_paso,h=h_paso);
}
}
