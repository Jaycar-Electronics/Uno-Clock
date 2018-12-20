module cbox(x,y,z,c){       //curved box template
    minkowski(){
cube([x-2*c,y-2*c,z-2*c]);
    translate([c,c,c])
    sphere(r=c,$fn=12);
}
}

module pillar(){                //standoff pillar template
translate([0,0,-3])
    cylinder(r=3,h=7.5);
    translate([0,0,1]);
    cylinder(r=1,h=7);
}


difference(){                   //hollow box
cbox(65,90,50,2.5);
translate([2.5,2.5,2.5])            //hollow interior
    cube([60,85,50]);

translate([-5,-5,5])             //flat top
    cube([120,120,100]);

translate([52.4,2.6,1])
    cube([10,16,10]);            //notch for pot
    
translate([23,7,-1])
    cube([25,73,10]);            //cutout for display
    


}

translate([20,6.5,3.5])           //pillars
pillar();
translate([51,6.5,3.5])
pillar();
translate([20,81.5,3.5])
pillar();
translate([51,81.5,3.5])
pillar();

translate([2.5,30,1])           //catch for body
    cube([2,30,7]);

translate([60.5,30,1])           //catch for body
    cube([2,30,7]);

translate([25,2.5,1])           //catch for body
    cube([20,2,7]);

translate([25,85.5,1])           //catch for body
    cube([20,2,7]);
