
// Arctic P140 dimensions:
FAN_CASE_Y = 140; 
FAN_CASE_X = 140; 
FAN_DIAM = 134.2; 
FAN_SCREW_X = 125.; 
FAN_SCREW_Y = 125.;
FAN_SCREW_OD = 4.3; 

// Filter dimensions
// 20x20x2
// 508 x 508 x 50.8
// 508/3 = 169.3

// Plate dimensions
PLATE_Z = 5; // Thickness
PLATE_X = FAN_CASE_X + 20; 
PLATE_Y = FAN_CASE_Y + 20; 

// infinitedistance
INFINITY = 1000000; 

// create the plate
difference(){
    cube([PLATE_X, PLATE_Y, PLATE_Z], true);
    cylinder(h=INFINITY, r=FAN_DIAM/2., center=true );
    for (ii=[-1,1]){
        for (jj=[-1,1]) {
            translate([ii*FAN_SCREW_X/2, jj*FAN_SCREW_Y/2, 0,]) cylinder(h=INFINITY, r=FAN_SCREW_OD/2, center=true);
        }
    }
}

