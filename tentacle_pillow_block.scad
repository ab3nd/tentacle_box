pipe_dia = 28;
difference(){
    difference(){
        difference(){
            cube([60,25,55]);
            translate([30, 27, 30]){
                rotate([90,0,0]){
                    cylinder(30, pipe_dia/2, pipe_dia/2, $fn=150);
                }
            }
        }
        translate([8, 25/2, -8]){
            screwhole();
        }
    }
    translate([ 60-8, 25/2, -8]){
        screwhole();
    }
}

module screwhole(){
    union(){
        cylinder(r=3.3, h=60);
        translate([0,0,60]){
            cylinder(r1=2.5, r2=6, h=4);
        }
    }
}