$fn=120;

translate([0,0,-7])scale([1,1,-1])lower_plate();
translate([0,0,45])scale([1,-1,1])upper_plate();
translate([0,-0.5,3])motor_support();
#translate([20.5,-11.2,3])motorandwheel();
#scale([-1,1,1])translate([20.5,-11.2,3])motorandwheel();
   
translate([44,34,3])pillar();    
translate([-44,34,3])pillar();    
translate([44,-34,3])pillar();    
translate([-44,-34,3])pillar();

#translate([25,35,67])rotate([0,0,150])
rotate([-90,0,0])us_support();
#translate([-25,35,67])rotate([0,0,210])
rotate([-90,0,0])us_support();

module lower_plate(){
$fn=120;
translate([0,-50,2.3])ballcaster();
rotate([0,0,15])translate([0,44,6.5])irshade();
rotate([0,0,-15])translate([0,44,6.5])irshade();
 
difference(){
cylinder(d=120,h=3);
translate([39,-27.5,-1])cube(55);
scale([-1,1,1])translate([39,-27.5,-1])cube(55);
translate([44,34,-1])cylinder(d=3.2,h=5);    
translate([-44,34,-1])cylinder(d=3.2,h=5);    
translate([44,-34,-1])cylinder(d=3.2,h=5);    
translate([-44,-34,-1])cylinder(d=3.2,h=5); 
translate([0,-5,0])cylinder(d=16,h=5);
translate([15,11.5,0])cylinder(d=3.2,h=30);    
translate([-15,11.5,0])cylinder(d=3.2,h=30); 
rotate([0,0,15])translate([0,39.5,0])cylinder(d=2.8,h=30); 
rotate([0,0,-15])translate([0,39.5,0])cylinder(d=2.8,h=30); 
}

module ballcaster(){
difference(){
union(){
cylinder(d=14,h=10);
translate([0,0,10])cylinder(r1=7, r2=6, h=1);
}
translate([0,0,7])cylinder(d=9.8,h=25);
translate([0,0,7.9])sphere(d=10.8);
translate([0,0,12])cube(size=[3,15,16],center=true);
}
}

module irshade(){
difference(){
minkowski(){
cube([10,28,9],center=true);
cylinder(d=3,h=0.001,$fn=12);
}
translate([0,-1,1])cube([10.25,30,9],center=true);
translate([0,-15,1])cube([15,30,9],center=true);
translate([0,-4,0])
    cylinder(d=3.2,h=20,center=true,$fn=12);
}

difference()
{
translate([0,-4.5,-4.5])cylinder(d=10,h=2,$fn=30);
translate([0,-4.5,-4.5])cylinder(d=2.8,h=2,$fn=12);
}
}
}

module upper_plate(){
difference(){
union(){
cylinder(d=120,h=3);
translate([-26.5,55,0])rotate([0,0,-90]){
translate([13.97,2.5,0])cylinder(d=8,h=6);
translate([15.24,50.7,0])cylinder(d=8,h=6);
translate([66.04,7.6,0])cylinder(d=8,h=6);
translate([66.04,35.5,0])cylinder(d=8,h=6);
}
}

translate([39,-27.5,-1])cube(55);
scale([-1,1,1])translate([39,-27.5,-1])cube(55);
translate([44,34,-1])cylinder(d=3.2,h=5);    
translate([-44,34,-1])cylinder(d=3.2,h=5);    
translate([44,-34,-1])cylinder(d=3.2,h=5);    
translate([-44,-34,-1])cylinder(d=3.2,h=5);
translate([0,-25,-1])cylinder(d=20,h=5);
translate([0,-42,-1])cylinder(d=3.2,h=5);
rotate([0,0,35])translate([0,-42,-1])cylinder(d=3.2,h=5);    
rotate([0,0,-35])translate([0,-42,-1])cylinder(d=3.2,h=5);  

translate([-26.5,55,0])rotate([0,0,-90]){
translate([13.97,2.5,0])cylinder(d=2.9,h=10);
translate([15.24,50.7,0])cylinder(d=2.9,h=10);
translate([14.24,46.2,5])cube(6);
translate([66.04,7.6,0])cylinder(d=2.9,h=10);
translate([66.04,35.5,0])cylinder(d=2.9,h=10);
}
}
}

module motor_support(){
$fn=30;

difference(){
translate([-20.5,6,0])cube([41,20,22.35]);
translate([-12.5,15,-10])cube([25,12,50]);
translate([0,19.1,2.465])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
translate([0,19.1,19.885])rotate([0,90,0])
cylinder(d=2.8,h=50,center=true,$fn=30);
translate([15,12,0])cylinder(d=2.8,h=30);    
translate([-15,12,0])cylinder(d=2.8,h=30);    
}
}

module motorandwheel(){
    difference(){
        union(){
        cube([18.7,37,22.3]);
        intersection(){
        translate([9.35,37,11.15])
        rotate([-90,0,0])cylinder(d=22.3,h=27.5);
        cube([18.7,65,22.3]);
        }
    }    
        translate([0,30.3,2.4])rotate([0,90,0])
        cylinder(d=3,h=20);
        translate([0,30.3,19.9])rotate([0,90,0])
        cylinder(d=3,h=20);
    }
    translate([35.7,11.2,11.15])rotate([0,-90,0])
    wheel();
}

module wheel(){
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
}
difference(){
translate([0,0,0.001])cylinder(d=11,h=17.5);
translate([0,0,9.05])
scale(1.05)    // ajustar según impresora
    intersection(){
cylinder(d=5.35,h=9);
translate([0,0,4])cube([3.7,6,9],center=true);
    }
}
}

module pillar(){
    $fn=30;
difference(){
cylinder(d=7,h=32);
cylinder(d=2.8,h=10);
translate([0,0,22])cylinder(d=2.8,h=10);
}
}

module us_support(){
difference()
{
minkowski($fn=30){
cube([45.5,20,6],center=true);
cylinder(d=4,h=0.000001);
}
translate([0,0,2])cube([45.6,25,5],center=true);
    
translate([13,0,-5])cylinder(d=17,h=5,$fn=60);
translate([-13,0,-5])cylinder(d=17,h=5,$fn=60);
hull(){
translate([-3.5,7.5,-5])cylinder(d=4,h=5,$fn=60);
translate([3.5,7.5,-5])cylinder(d=4,h=5,$fn=60);
}
hull(){
translate([-3.5,-8,-5])cylinder(d=4,h=5,$fn=60);
translate([3.5,-8,-5])cylinder(d=4,h=5,$fn=60);
}
}
hull(){
translate([23,9,1.9])sphere(0.8,$fn=20);
translate([23,-9,1.9])sphere(0.8,$fn=20);
}
hull(){
translate([-23,9,1.9])sphere(0.8,$fn=20);
translate([-23,-9,1.9])sphere(0.8,$fn=20);
}
translate([9.5,14,-2.5])rotate([0,0,180])acuerdo();
translate([-9.5,14,-2.5])rotate([0,0,-90])acuerdo();

translate([-7.5,12,-3])cube([15,7,2.5]);
difference(){
translate([-7.5,17,-3])cube([15,2.5,11]);
translate([0,0,4])rotate([-90,0,0])
cylinder(d=3.2,h=20,$fn=30);
}
translate([-7.5,15,1.5])scale([7.5,1,1])
rotate([0,90,0])acuerdo();

module acuerdo(){
difference(){
cube(2);
cylinder(d=4,h=2,$fn=30);
}
}
}