small_width =15;
length = 165;
thick = 4;
large_width = 3*25.4;

difference(){
cube([small_width, length,small_width,], center=true);
translate([thick, 0, thick])cube([small_width+1, length+1,small_width+1,], center=true);
}


translate([10+large_width/2,0,0])difference(){
cube([large_width, length,small_width,], center=true);
translate([thick, 0, thick])cube([large_width+1, length+1,small_width+1,], center=true);
}