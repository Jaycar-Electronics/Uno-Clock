module cbox(x,y,z,c){       //curved box template
    minkowski(){
cube([x-2*c,y-2*c,z-2*c]);
    translate([c,c,c])
    sphere(r=c,$fn=12);
}
}

module pillar(){                //standoff pillar template
translate([0,0,0.5])
    cylinder(r=3,h=4);
    translate([0,0,1])
    cylinder(r=1,h=6);
}

difference(){                   //hollow box
union(){
    
cbox(65,90,50,2.5);             //main body

rotate([0,-23.5,0])
translate([0.7,20,1.8])
cube([30,5,37]);             //legs (so they get carved away right)

rotate([0,-23.5,0])
translate([0.7,65,1.8])
cube([30,5,37]);             //legs (so they get carved away right)
}
translate([2.5,2.5,2.5])            //hollow interior
    cube([60,85,50]);

translate([-5,-5,42.5])             //flat top
    cube([120,120,100]);

translate([35,80,4.5])      //square cutout for USB
  cube([15,20,13]);
//translate([42.5,80,11])     //round cutout for USB
  //  rotate([270,0,0])
    //cylinder(r=8,h=20);

translate([15,80,12])     //round cutout for dc jack
    rotate([270,0,0])
    cylinder(r=6,h=20);

}

translate([13.5,7.5,0])           //pillars
pillar();
translate([41,7.5,0])
pillar();
translate([8.5,59.5,0])
pillar();
translate([57,59.5,0])
pillar();


