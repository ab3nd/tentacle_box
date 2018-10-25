module latch_shaft(){
   difference(){
      union(){
         cylinder(r=5.25, h=12, $fn=50);
         for(rot = [0:45:360-45]){
            rotate([0,0,rot]){
               translate([0,0,4.5]){
                  cube([2.18, 13.4, 9], center=true);
               }
            }
         }
      }

      rotate([0,0,45]){
         translate([0,0,3]){
            cube([5.01, 5.01, 21], center=true);
         }
      }
         
      translate([0,0,3]){
         cube([5.01, 5.01, 21], center=true);
      }
   }
}

module pipe_slot(){
   difference(){
      cylinder(r=13.235, h=30, $fn=60);
      translate([0,0,-1]){
         cylinder(r=11.22, h=32, $fn=60);
      }
   }
}

difference(){
   cylinder(r=18, h=35, $fn=60);
   //Slot for the pipe
   translate([0,0,-1]){
      pipe_slot();
   }
   //shaft adapter for annoying motors
   rotate([0,180,0]){
      translate([0,0,-35.01]){
         latch_shaft();
      }
   }

   //screw holes
   translate([0,20,10]){
      rotate([90,0,0]){
         cylinder(r=1.5, h=40, $fn=50);
      }
   }
}

