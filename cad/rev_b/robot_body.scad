bearing_608_height = 6.8;
epsilon = .001;

supports = 0;
mocks = 0;
shaft_mock = 0;
robot_top = 0;
robot_bot = 0;
magnet_shaft = 0;
wheel = 0;
motor_gear = 1;

d_diag_magnet_diam = 5.4;
d_axial_magnet_diam = 5.5;
m_axial_magnet_width = 3;
d_motor_shaft = 5.3;
d_shaft = 8.10;
d_m3 = 3.5;
d_bearing_608 = 22.5;
m_shaft_to_back_holes = 31.8  - 11.2;
m_shaft_to_front_hole = 2.5 + 11.2;
m_shaft_duel_hole_gap = 17.5;
m_as5600_screw_gap = 17;
m_as5600_outer_size = 23;
m_as5600_wall_clearence = 1.5;
//m_nut_m3 = 5.65;
m_nut_m3 = 5.85;
m_trap_m3 = m_nut_m3/cos(30); // 5.5 = measured across nut


x_shaft_center = 0;
y_shaft_center = 0;

m_extra_corner = 4;
m_bearing_holder_gap = 5;
m_as5600_gap = .3;

x_left_hole = x_shaft_center - m_shaft_to_front_hole;
x_right_hole = x_shaft_center + m_shaft_to_front_hole;
x_right_bearing_edge = x_shaft_center + d_bearing_608/2;
x_right_support_edge = x_right_bearing_edge - m_extra_corner;
y_hole_down = y_shaft_center - m_shaft_duel_hole_gap / 2;
y_hole_up   = y_shaft_center + m_shaft_duel_hole_gap / 2;
x_left_corner = x_left_hole - m_extra_corner;
x_left_support = x_left_hole + m_extra_corner;
x_right_corner = x_right_hole + m_extra_corner;
y_down_corner = y_hole_down - m_extra_corner;
y_up_corner = y_hole_up + m_extra_corner+2;

x_as5600_platform_screw_left = x_shaft_center - m_as5600_screw_gap/2;
x_as5600_platform_screw_right = x_shaft_center + m_as5600_screw_gap/2;
y_as5600_platform_screw_down = y_shaft_center - m_as5600_screw_gap/2;
y_as5600_platform_screw_up = y_shaft_center + m_as5600_screw_gap/2;

x_as5600_indent_left = x_shaft_center - m_as5600_outer_size/2 -m_as5600_gap;
x_as5600_indent_right = x_shaft_center + m_as5600_outer_size/2+m_as5600_gap;
y_as5600_indent_down = y_shaft_center - m_as5600_outer_size/2 -m_as5600_gap;
y_as5600_indent_up = y_shaft_center + m_as5600_outer_size/2+m_as5600_gap;

// HERE
assembly_wall = 5.2;
x_left_assembly_support = x_left_corner + assembly_wall;

x_as5600_eindent0_l = x_as5600_indent_left + 2;
x_as5600_eindent0_r = x_as5600_indent_left + 9;
x_as5600_eindent1_l = x_as5600_indent_right - 9;
x_as5600_eindent1_r = x_as5600_indent_right - 2;
y_as5600_eindent01_d = y_as5600_indent_down + 4;
y_as5600_eindent01_u = y_as5600_indent_up - 4;

x_as5600_eindent23_l = x_as5600_indent_left  + 5;
x_as5600_eindent23_r = x_as5600_indent_right - 5;
y_as5600_eindent2_d  = y_as5600_indent_down + 1;
y_as5600_eindent2_u  = y_as5600_indent_down + 10;
y_as5600_eindent3_u  = y_as5600_indent_up - 2;
y_as5600_eindent3_d  = y_as5600_indent_up - 10;

x_as5600_platform_left = x_as5600_platform_screw_left - m_extra_corner;
x_as5600_platform_right = x_as5600_platform_screw_right + m_extra_corner;
//y_as5600_platform_up = y_as5600_platform_screw_up + m_extra_corner;
//y_as5600_platform_down = y_as5600_platform_screw_down - m_extra_corner;

y_as5600_platform_up = y_up_corner;
y_as5600_platform_down = y_down_corner;

z_motor_level = 0;
z_cap_bot = z_motor_level + 0;
z_toy_motor_shaft_top = z_motor_level + 10;
z_shaft_start = z_motor_level;
z_lower_shaft_end = z_motor_level + 22;
z_real_shaft_end = z_lower_shaft_end - 1.0;
z_upper_start = z_lower_shaft_end + bearing_608_height * 2 + m_bearing_holder_gap;

//z_shaft_end = z_lower_shaft_end + 5;

z_near_bearing_end = z_lower_shaft_end + bearing_608_height;
z_as5600_platform_start = z_upper_start + bearing_608_height * 1.5;
z_as5600_platform_holder = z_as5600_platform_start + 5;
z_as5600_platform_indent    = z_as5600_platform_holder -2;
z_as5600_platform_eindent = z_as5600_platform_indent - 2;
z_assembly_end = z_as5600_platform_holder + 25;

echo(["spoon", z_as5600_platform_holder ] );

z_as5600_assembly_start = z_as5600_platform_holder;
z_as5600_assembly_end   = z_assembly_end;
m_nut_trap_width = 2.7;

//z_shaft_end = z_as5600_platform_indent - 3;
//z_shaft_end = z_as5600_platform_indent - 1;
z_shaft_end = z_as5600_platform_indent - 2;
z_magnet_bot = z_shaft_end - d_diag_magnet_diam;

z_trap_down = z_motor_level + 7;
z_trap_up = z_trap_down + m_nut_trap_width;
z_bearing_gap_start = z_trap_up + 2;

echo(z_lower_shaft_end - z_bearing_gap_start);

thread_width = 2;

d_motor_shaft_extra = .375;
d_motor_coupler_inner_wall = d_motor_shaft + d_motor_shaft_extra;

//d_lower_shaft = d_shaft - thread_width*2;
d_lower_shaft = d_shaft - thread_width*2+.25;
d_upper_holder = 10;
d_shaft_hole = 12.5;

thread_gap = .75;
d_cap_lower_shaft = d_lower_shaft + thread_gap + thread_width*2;

// @brief Create a hollow cylinder (ring)
//
// @param depth
//      The depth (or height) of the ring.
// @param inner_diam
//      The inner diameter of the cylinder
// @param wall
//      The size of the cylinder's wall
// @param fn
//      The fn used to create the cylinder.  Higher fn
//      is smoother, but more computationally expensive
//
module ring_fn( depth, inner_diam, wall, fn ) {
    rotate_extrude($fn=fn) polygon( points=[
        [inner_diam/2, 0 ],
        [inner_diam/2, depth],
        [inner_diam/2+wall, depth ],
        [inner_diam/2+wall, 0 ]]);

}

// @brief Creae a thread
// 
// The thread is centered at x=0, y=0, and goes along the z axis
//
// @param thread_z_per_rotation
//      How much does the thread go up with each rotation, in mm
// @param thread_width
//      How thick is each thread, in mm
// @param cylinder_radius
//      The radius of the cylinder that the thread wraps. A "thread"
//      object and a cylinder gives you a screw
// @param thread_top_height
//      The thread starts at "z=thread_top_height" and goes down,
//      depending on how many rotations the caller wants.

module thread( 
    thread_z_per_rotation,
    thread_width,
    cylinder_radius,
    thread_top_height,
    thread_rotations_arg 
)
{
    thread_rotations = thread_rotations_arg;
    
    // We need to have our threads on 45 degree angles so
    // we don't need supports, so the thread depth always
    // has to be half the width
    
    thread_depth = thread_width/2;
    
    // The actual side of the cube is the thread width
    // is rotated 45 degrees
    //  ___
    //   |                   /\                       
    //   |                  /90\
    //  thread_depth      /    \
    // =thread_width/2   /      \ thread_cube_side
    //   |                /        \
    //   |               /          \
    //   |              / 45      45 \
    //  ---             ---------------                  
    //                 | thread_width |
    //
    // thread_cube_side * cos( 45 ) = thread_depth
    // thread_cube_side = thread_depth / cos( 45 )
    //
    
    thread_cube_side = thread_depth / cos(45);

    // We'll want to know the radius of the thread
    outer_thread_radius = cylinder_radius + thread_depth;    
    
    // We'll make our thread usign a for loop, using cubes.
    // This means I plan to lay down a cube every 5 degrees
    step_angle = 5;

    PI =  3.1415;
    
    // Figure out the length of the thread after one rotation,
    // along the outer radius of the thread.
    one_rotation_length = outer_thread_radius * PI * 2;
    
    // I want to rotate the cubes I'll be making so they're
    // pitched very slightly down.  If I make a triangle with
    // the length of the thread for one rotation on the bottom
    // and the amunt the thread dropped on the side, the
    // angle I rotate to rotate my cubes is shown below.  I can
    // compute that angle with an arc tangent
    //
    //
    //                      XXXXXXX        ---
    //               XXXXXXX           |    | thread_z_per_rotation
    //        XXXXXXX                  |    |
    // XXXXXXX <- pitch_down_angle  |   ---
    // ----------------------------
    // |    one_rotation_length    |
    
    pitch_down_angle = atan( thread_z_per_rotation / one_rotation_length );    
   
    
    intersection() {
        // I'm going to use a big cylinder to clip the thread
        // that I'm making.  Multiplying the cylinder_radius by
        // 2 should be enough.
        
        cylinder( thread_top_height, 
            cylinder_radius * 2, cylinder_radius * 2 );        
        
        // Now start laying down cubes usign a for loop
        
        for ( angle = [0 : step_angle : 360 * thread_rotations ] ) {
            
            //                 --|--------________
            //                   |                --------________
            // segment_length  |                                --------
            //                   |                ________--------
            //                 --|________--------
            //           outer_thread_radius
            
            segment_length = outer_thread_radius * sin( step_angle / 2 ) * 2;
            
            cube_length =  
                segment_length * 
                // Increase the length a bit to adjust for the pitch
                // down (we effectively lose a bit of length here )
                ( 1 / cos( pitch_down_angle ));
        
            rotate( -angle, [0, 0, 1 ] )
            translate( [ cylinder_radius, 0, 
                thread_top_height - angle /360 * thread_z_per_rotation + thread_width/2 ] )
            rotate( pitch_down_angle, [ 1, 0, 0 ] )
            rotate( 45, [ 0, 1, 0 ])
                cube([thread_cube_side,
                    cube_length, thread_cube_side  ], center=true );
        }

    }
}

/*
    linear_extrude( height = z_motor_coupler_height ) polygon( points=[
        [ x_motor_coupler_flat_edge, -r_motor_coupler_inner_wall ],
        [ x_motor_coupler_flat_edge,  r_motor_coupler_inner_wall ],
        [ r_motor_coupler_inner_wall,                 r_coupler_inner_wall ],
        [ r_motor_coupler_inner_wall,                -r_coupler_inner_wall ]
    ]);    
    linear_extrude( height = z_motor_coupler_height ) polygon( points=[
        [ -x_motor_coupler_flat_edge, -r_motor_coupler_inner_wall ],
        [ -x_motor_coupler_flat_edge,  r_motor_coupler_inner_wall ],
        [ -r_motor_coupler_inner_wall,                 r_coupler_inner_wall ],          [ -r_motor_coupler_inner_wall,                -r_coupler_inner_wall ]       
    ]);
 */


module negativez_box( x0, x1, y0, y1, z0, z1 ) {
    translate([0, 0, z0 - epsilon ] ) {
        linear_extrude( z1-z0 + epsilon * 2 ) polygon([
            [ x0, y0 ],
            [ x1, y0 ],
            [ x1, y1 ],
            [ x0, y1 ]
        ]);
    }
}

module negativex_box( x0, x1, y0, y1, z0, z1 ) {
    translate([0, 0, z0 ] ) {
        linear_extrude( z1-z0 ) polygon([
            [ x0 - epsilon, y0 ],
            [ x1, y0 ],
            [ x1, y1 ],
            [ x0 - epsilon, y1 ]
        ]);
    }
}

module shaft_neg() {
  //  translate([0, 0, z_upper_start ])    
 //   cylinder( d = d_motor_coupler_inner_wall, h = z_shaft_end - //z_upper_start + epsilon, $fn=25 );
    
//    translate([0, 0, z_magnet_bot ] )
//    cylinder( d = d_magnet_diam, h = z_shaft_end - z_magnet_bot + //epsilon, $fn=25 );     
    
    negativez_box( -d_axial_magnet_diam/2, d_axial_magnet_diam/2,
        -m_axial_magnet_width/2, m_axial_magnet_width/2,
        z_magnet_bot, z_shaft_end );
}

module shaft_pos() {
    //coupler_outer_wall = (d_lower_shaft - d_motor_coupler_inner_wall)/2;
    translate([0, 0, z_shaft_start ])
    cylinder( d = d_lower_shaft, h = z_shaft_end - z_shaft_start, $fn=25 );
    //ring_fn( z_shaft_end - z_shaft_start, d_motor_coupler_inner_wall, coupler_outer_wall, 25 );
    translate([0, 0, z_upper_start ])
    cylinder( d = d_upper_holder, h = z_shaft_end - z_upper_start, $fn=25 );
    translate([0, 0, z_real_shaft_end ])
    cylinder( d = d_shaft, h = z_shaft_end - z_real_shaft_end, $fn=25 );    
    
    translate( [0, 0, z_shaft_start ] )
        thread( thread_width, 3, d_lower_shaft/2, z_real_shaft_end - z_shaft_start, 12 );
}

module shaft() {
    difference() {
        shaft_pos();
        shaft_neg();
    }
}


module cap_pos() {
    intersection() {

    translate([0, 0, z_shaft_start ])
    cylinder( d = d_upper_holder, h = z_shaft_end - z_shaft_start, $fn=25 );    
                                
    union() {
        wall = ( d_upper_holder - d_cap_lower_shaft )/2;
        translate([0,0,z_shaft_start])
        ring_fn( z_lower_shaft_end - z_shaft_start, d_cap_lower_shaft+.1, wall, 25 );
        thread( thread_width, 3, d_cap_lower_shaft/2, z_lower_shaft_end, 12 );
    } 
    }

    translate([0, 0, z_cap_bot ])
    cylinder( d = d_upper_holder, h = z_shaft_start - z_cap_bot, $fn=25 );
        
//    translate( [0, 0, 0 ] )
//    thread( thread_width, 3, d_lower_shaft/2, z_lower_shaft_end, 8 );
}

module cap_neg() {

    
    translate([0, 0, z_cap_bot - epsilon ])    
    cylinder( d = d_motor_coupler_inner_wall, h = z_toy_motor_shaft_top - z_cap_bot + epsilon, $fn=25 );    
}

module cap() {
    difference() {
        cap_pos();
        cap_neg();
    }
}


module holder_neg() {
    translate([0, 0, z_bearing_gap_start ] )
    cylinder( d = d_bearing_608, h=z_near_bearing_end - z_bearing_gap_start );
    translate([0, 0, z_upper_start - bearing_608_height] )
    cylinder( d = d_bearing_608, h=bearing_608_height + epsilon );   
    translate([0, 0, z_lower_shaft_end - epsilon ] )
    cylinder( d = d_shaft_hole - epsilon, h=z_upper_start - z_lower_shaft_end + epsilon * 2 );    
    translate([ x_left_hole, y_hole_down, z_motor_level - epsilon ] )
    cylinder( d = d_m3, h=z_as5600_platform_holder - z_motor_level + epsilon * 2, $fn=20 );  
    translate([ x_left_hole, y_hole_up, z_motor_level - epsilon ] )
    cylinder( d = d_m3, h=z_as5600_platform_holder - z_motor_level + epsilon * 2, $fn=20 );      
    translate([ x_right_hole, 0, z_motor_level - epsilon ] )
    cylinder( d = d_m3, h=z_as5600_platform_holder - z_motor_level + epsilon * 2, $fn=20 );    
    
    translate([ x_right_hole, 0, z_trap_down ] )
    cylinder( d = m_trap_m3, h = z_trap_up - z_trap_down, $fn = 6 );    
    negativez_box( x_right_hole,       x_right_corner+epsilon,
                   -m_nut_m3/2,       m_nut_m3/2,
                   z_trap_down, z_trap_up );

    translate([ x_left_hole, y_hole_up, z_trap_down ] )
    cylinder( d = m_trap_m3, h = z_trap_up - z_trap_down, $fn = 6 );    
    negativez_box( x_left_corner-epsilon, x_left_hole,
                   y_hole_up-m_nut_m3/2,  y_hole_up+m_nut_m3/2,
                   z_trap_down, z_trap_up );

    translate([ x_left_hole, y_hole_down, z_trap_down ] )
    cylinder( d = m_trap_m3, h = z_trap_up - z_trap_down, $fn = 6 );    
    negativez_box( x_left_corner-epsilon, x_left_hole,
                   y_hole_down-m_nut_m3/2,  y_hole_down+m_nut_m3/2,
                   z_trap_down, z_trap_up );
    
    translate([x_as5600_platform_screw_left, y_as5600_platform_screw_up, z_as5600_platform_start - epsilon ] )   
    cylinder( d = d_m3, h= z_as5600_platform_holder - z_as5600_platform_start + epsilon * 2, $fn=20 ); 
    translate([x_as5600_platform_screw_right, y_as5600_platform_screw_up, z_as5600_platform_start - epsilon ] )   
    cylinder( d = d_m3, h= z_as5600_platform_holder - z_as5600_platform_start + epsilon * 2, $fn=20 );     
    translate([x_as5600_platform_screw_left, y_as5600_platform_screw_down, z_as5600_platform_start - epsilon ] )   
    cylinder( d = d_m3, h= z_as5600_platform_holder - z_as5600_platform_start + epsilon * 2, $fn=20 );        
    translate([x_as5600_platform_screw_right, y_as5600_platform_screw_down, z_as5600_platform_start - epsilon ] )   
    cylinder( d = d_m3, h= z_as5600_platform_holder - z_as5600_platform_start + epsilon * 2, $fn=20 );  
    translate([0, 0, z_as5600_platform_start - epsilon ] )       
    cylinder( d = d_shaft_hole, h = z_as5600_platform_holder - z_as5600_platform_start + epsilon * 2 );   

    translate([0, 0, z_as5600_platform_indent ] )
    linear_extrude( z_as5600_platform_holder - z_as5600_platform_indent + epsilon ) polygon([
        [ x_as5600_indent_left,  y_as5600_indent_up ],
        [ x_as5600_indent_right, y_as5600_indent_up ],
        [ x_as5600_indent_right, y_as5600_indent_down ],
        [ x_as5600_indent_left,  y_as5600_indent_down ],        
    ]);
    
    negativez_box( x_as5600_eindent0_l,       x_as5600_eindent0_r,
                   y_as5600_eindent01_d,      y_as5600_eindent01_u,
                   z_as5600_platform_eindent, z_as5600_platform_indent );

    negativez_box( x_as5600_eindent1_l,       x_as5600_eindent1_r,
                   y_as5600_eindent01_d,      y_as5600_eindent01_u,
                   z_as5600_platform_eindent, z_as5600_platform_indent );
                   
    negativez_box( x_as5600_eindent23_l,      x_as5600_eindent23_r,
                   y_as5600_eindent2_d,       y_as5600_eindent2_u,
                   z_as5600_platform_eindent, z_as5600_platform_indent );

    negativez_box( x_as5600_eindent23_l,      x_as5600_eindent23_r,
                   y_as5600_eindent3_d,       y_as5600_eindent3_u,
                   z_as5600_platform_eindent, z_as5600_platform_indent );

//x_as5600_eindent0_l = x_as5600_indent_left + 2;
//x_as5600_eindent0_r = x_as5600_indent_left + 9;
//x_as5600_eindent1_l = x_as5600_indent_right - 9;
//x_as5600_eindent1_r = x_as5600_indent_right -2;
//y_as5600_eindent01_d = x_as5600_indent_down + 4;
//y_as5600_eindent01_u = x_as5600_indent_up - 4;
}

module holder_pos() {
    translate([0, 0, z_lower_shaft_end ] )
    linear_extrude( z_upper_start - z_lower_shaft_end ) polygon( [
        [ x_left_corner, y_down_corner ],
        [ x_left_corner, y_up_corner ],
        [ x_right_corner, y_up_corner ],
        [ x_right_corner, y_down_corner ]
    ] );
    // z_lower_shaft_end
    translate([0, 0, z_lower_shaft_end ] )
    linear_extrude( z_upper_start - z_lower_shaft_end ) polygon( [
        [ x_right_support_edge, y_down_corner ],
        [ x_right_support_edge, y_up_corner ],
        [ x_right_corner, y_up_corner ],
        [ x_right_corner, y_down_corner ]
    ] );    
    translate([0, 0, z_lower_shaft_end ] )
    linear_extrude( z_upper_start - z_lower_shaft_end ) polygon( [
        [ x_left_support, y_down_corner ],
        [ x_left_support, y_up_corner ],
        [ x_left_corner, y_up_corner ],
        [ x_left_corner, y_down_corner ]
    ] );      
    translate([0, 0, z_as5600_platform_start ] )
    linear_extrude( z_as5600_platform_holder - z_as5600_platform_start ) polygon([
        [ x_as5600_platform_left,  y_as5600_platform_up ],
        [ x_as5600_platform_right, y_as5600_platform_up ],
        [ x_as5600_platform_right, y_as5600_platform_down ],
        [ x_as5600_platform_left,  y_as5600_platform_down ],        
    ]);
    translate([0, 0, z_lower_shaft_end ] )
    linear_extrude( z_as5600_platform_holder - z_lower_shaft_end ) polygon( [
        [ x_left_corner, y_down_corner ],
        [ x_left_corner, y_up_corner ],
        [ x_as5600_platform_left, y_up_corner ],
        [ x_as5600_platform_left, y_down_corner ]
    ] );    
    translate([0, 0, z_lower_shaft_end ] )
    linear_extrude( z_as5600_platform_holder - z_lower_shaft_end ) polygon( [
        [ x_right_corner, y_down_corner ],
        [ x_right_corner, y_up_corner ],
        [ x_as5600_platform_right, y_up_corner ],
        [ x_as5600_platform_right, y_down_corner ]
    ] );   
    translate([0, 0, z_as5600_assembly_start ] ) 
    linear_extrude( z_as5600_assembly_end - z_as5600_assembly_start )
    polygon( [
        [ x_right_corner, y_down_corner ],
        [ x_right_corner, y_up_corner ],
        [ x_as5600_platform_right, y_up_corner ],
        [ x_as5600_platform_right, y_down_corner ]
    ] );        
    translate([0, 0, z_as5600_assembly_start ] ) 
    linear_extrude( z_as5600_assembly_end - z_as5600_assembly_start )
    polygon( [
        [ x_left_corner, y_down_corner ],
        [ x_left_corner, y_up_corner ],
        [ x_left_assembly_support, y_up_corner ],
        [ x_left_assembly_support, y_down_corner ]
    ] );        
}

echo( x_as5600_platform_right - x_right_corner );

module holder() {
    difference() {
        holder_pos();
        holder_neg();
    }
}


module all() {
    shaft();
    cap();
    holder();
}

//d_pingpong = 41;   
d_pingpong = 42;    
z_pingpong_height = 7;
z_pingpong_holder_bot = y_down_corner;
z_pingpong_holder_top = y_up_corner;
z_pingpong_center = z_pingpong_holder_bot + z_pingpong_height;

m_holder_wall = 2;
d_pingpong_outer = d_pingpong + m_holder_wall*2;
z_pingpong_bot = z_pingpong_center - d_pingpong_outer/2;
z_pingpong_top = z_pingpong_center + d_pingpong_outer/2;
z_pingpong_grove = z_pingpong_center+10;
m_pingpong_grove = 6;

module pingpong_holder_neg()
{
    // Void for pingpong ball
    translate([0, 0, z_pingpong_center ] )
    sphere( d = d_pingpong, $fn=100 );
    
    // void a cylinder at the top so the pingpong
    // ball can be popped out
    cylinder( d = 30, h = d_pingpong_outer/2 + epsilon );    
    
    // Void bottom of holder so it aligns with
    // the bottom of the robot
    negativez_box( 
        -d_pingpong_outer/2 - epsilon, d_pingpong_outer/2+epsilon,
        -d_pingpong_outer/2 - epsilon, d_pingpong_outer/2+epsilon,
        z_pingpong_bot, z_pingpong_holder_bot );
    
    // Void top of the holder so the battery can
    // slide in
    negativez_box( 
        -d_pingpong_outer/2 - epsilon, d_pingpong_outer/2+epsilon,
        -d_pingpong_outer/2 - epsilon, d_pingpong_outer/2+epsilon,
        z_pingpong_holder_top, z_pingpong_top + epsilon );    
    
    // Gaps so the pingpong ball can slide in
    for( angle = [60: 60: 360])
    rotate(angle+90, [0, 0, 1 ])
    negativez_box(
        -d_pingpong_outer/2 - epsilon, 0,
        -m_pingpong_grove/2, m_pingpong_grove/2,
        z_pingpong_bot, z_pingpong_grove );

    rotate(60*2+90, [0, 0, 1 ])
    negativez_box(
        -d_pingpong_outer/2 - epsilon, 0,
        -m_pingpong_grove/2, m_pingpong_grove/2,
        z_pingpong_bot, z_pingpong_grove );
   
}

holder_tri_angle = 40;
m_to_center = 31;
echo(["m_to_center", m_to_center]);
m_to_back = m_to_center / tan(holder_tri_angle/2);

module pingpong_holder_pos(wall_target)
{
    translate([0, 0, z_pingpong_center ] )
    sphere( d = d_pingpong_outer, $fn=100 );
    r_support = sqrt((d_pingpong_outer/2)^2 - (z_pingpong_grove - z_pingpong_center)^2 );
    translate([0, 0, z_pingpong_grove] )
    cylinder( r = r_support, h = z_pingpong_top - z_pingpong_grove, $fn=100 );
    
    m_to_back_wall = m_to_back - wall_target;
    support_length = m_to_back_wall / cos(holder_tri_angle/2);
    
    translate([ 0, 0, z_pingpong_holder_bot ] ) 
    rotate(holder_tri_angle/2, [0, 0, 1 ])
    linear_extrude( z_pingpong_holder_top - z_pingpong_holder_bot ) polygon([
        [ 0,  -assembly_wall/2 ],
        [ 0,   assembly_wall/2 ],
        [ support_length + assembly_wall/2*sin(holder_tri_angle/2),  assembly_wall/2 * cos(holder_tri_angle/2) ],
        [ support_length - assembly_wall/2*sin(holder_tri_angle/2), -assembly_wall/2 * cos(holder_tri_angle/2) ] 
    ]);   

    translate([ 0, 0, z_pingpong_holder_bot ] )     
    rotate(-holder_tri_angle/2, [0, 0, 1 ])
    linear_extrude( z_pingpong_holder_top - z_pingpong_holder_bot ) polygon([
        [ 0,  -assembly_wall/2 ],
        [ 0,   assembly_wall/2 ],
        [ support_length - assembly_wall/2 * sin(holder_tri_angle/2),  assembly_wall/2 * cos(holder_tri_angle/2) ],
        [ support_length + assembly_wall/2 * sin(holder_tri_angle/2), -assembly_wall/2 * cos(holder_tri_angle/2) ] 
    ]);       
}

module pingpong_mock()
{
    color([1,1,1])
    translate([0, 0, z_pingpong_center ] )
    sphere( d = d_pingpong, $fn=100 );
}

echo(["Pingpong Bottom", z_pingpong_center, d_pingpong ]);

module pingpong_holder(wall_target) {
    rotate(-90,[1,0,0])
    difference() {
        pingpong_holder_pos(wall_target);
        pingpong_holder_neg();
    }
    
    if (mocks) {
        rotate(-90,[1,0,0])    
        pingpong_mock();
    }
}

module print_shaft() {
    translate([0,0, z_shaft_end - z_cap_bot ])  
    rotate(180, [1,0,0]) shaft();

    translate([0,0, z_lower_shaft_end - z_cap_bot ])    
    translate([14,0,0])
    rotate(180, [1,0,0]) cap();
}

module holder_at_0() {
    translate([0, 0, -z_as5600_assembly_end - epsilon ] )
    holder();
}

module double_holder() {
    holder_at_0();
    rotate(180, [1, 0, 0 ] )
    holder_at_0();   
}

battery_width = 65;
battery_length = 106;
battery_height = 16;

module battery_mock2() {
    linear_extrude( battery_height ) polygon( [
        [ -battery_width/2, -battery_length/2 ],
        [  battery_width/2, -battery_length/2 ],
        [  battery_width/2,  battery_length/2 ],
        [ -battery_width/2,  battery_length/2 ]
        ]);
}

module battery_mock() {
    color([.4, .4, .4 ] )
    translate([0, y_up_corner, 0 ] )
    rotate(90,[0,1,0])
    rotate(-90, [1, 0, 0 ] )
    battery_mock2();
}

module pos_box( x0, x1, y0, y1, z0, z1 ) {
    translate([ 0, 0, z0 ])
    linear_extrude( z1-z0 ) polygon([
        [ x0, y0 ],
        [ x1, y0 ],
        [ x1, y1 ],
        [ x0, y1 ]
    ]);
}

z_circuit_bot = -92/2;
z_circuit_top = 92/2;
holder_width = 3;
y_battery_start = y_up_corner;
y_battery_end = y_battery_start + battery_height+.5;
z_battery_bhold_top = -battery_width/2 - .5;
//z_battery_bhold_bot = z_battery_bhold_top - holder_width;
z_battery_thold_bot =  battery_width/2 + .5;
//z_battery_thold_top = z_battery_thold_bot + holder_width;
z_battery_bhold_bot = z_circuit_bot;
z_battery_thold_top = z_circuit_top;
x_battery_start = -battery_length/2 - .5;
x_battery_end = battery_length/2 + .5;
x_battery_hold_end = x_battery_end + holder_width;

m_circuit_board_width = 60;
circuit_screw_width = 51.08;
circuit_screw_length = 82.485;
circuit_support_offset = 13;

circuit_support_width = (m_circuit_board_width - circuit_screw_width );

y_circuit_support_bot = y_battery_end;
y_circuit_support_top = y_circuit_support_bot + 5;
y_circuit_mount_top = y_circuit_support_top + 3;

x_circuit_lsupport_s = -m_circuit_board_width/2 + circuit_support_offset;
x_circuit_lsupport_e = x_circuit_lsupport_s + circuit_support_width;
x_circuit_rsupport_e = m_circuit_board_width/2 + circuit_support_offset;
x_circuit_rsupport_s = x_circuit_rsupport_e - circuit_support_width;

z_screw_0 = -circuit_screw_length/2;
z_screw_1 =  circuit_screw_length/2;
x_screw_0 = -circuit_screw_width/2 + circuit_support_offset;
x_screw_1 =  circuit_screw_width/2 + circuit_support_offset;

m_led_gap  = 1.5;
m_led_wall = 3;
x_led_holder_start   = x_battery_hold_end + m_led_gap; // 1.5mm gap
x_led_holder_end     = x_led_holder_start + m_led_wall;

m_near_to_near_gap = 27;
m_far_to_far_gap = 39;
m_led_size =5;
m_led_to_led = 33.3;

y_led_end  = y_battery_start + 11;

m_led_wiggle = 1;

z_fled0_start = -m_led_size/2-m_led_wiggle - m_led_to_led/2;
z_fled0_end = m_led_size/2+m_led_wiggle - m_led_to_led/2;

z_fled1_start = z_fled0_start - m_led_to_led;
z_fled1_end = z_fled0_end - m_led_to_led;

z_fled2_start = z_fled0_start + m_led_to_led;
z_fled2_end = z_fled0_end + m_led_to_led;

z_fled3_start = z_fled0_start + m_led_to_led * 2;
z_fled3_end = z_fled0_end + m_led_to_led * 2;

z_led_bot_gap_start = z_battery_bhold_bot - m_led_gap;
z_led_bot_wall_start = z_led_bot_gap_start - m_led_wall;

z_led_top_gap_end = z_battery_thold_top + m_led_gap;
z_led_top_wall_end = z_led_top_gap_end + m_led_wall;

to_end = z_led_top_gap_end + m_led_gap/2 - z_fled2_start;
x_fled4_start = x_led_holder_start - m_led_gap/2 - (m_led_to_led - to_end );
x_fled4_end = x_fled4_start - m_led_size - m_led_wiggle*2;

x_fled5_start = x_fled4_start - m_led_to_led;
x_fled5_end = x_fled4_end - m_led_to_led;

module screw_pos(x,z)
{
    translate([x, y_circuit_support_top, z ] )
    rotate(-90,[1,0,0])
    cylinder( d = 7, h = y_circuit_mount_top - y_circuit_support_top, $fn=25 );

    
}

module screw_neg(x,z, zdir)
{
    y_nut_end = y_circuit_mount_top - 6;
    y_nut_start = y_nut_end - m_nut_trap_width;
    y_screw_start = y_battery_start + 1;
    
    translate([x, y_screw_start, z ] )
    rotate(-90,[1,0,0])          
    cylinder( d = 3.6, h = y_circuit_mount_top - y_screw_start + epsilon, $fn=25 );

    
    translate([ x,y_nut_start, z ] )
    rotate(-90,[1,0,0])       
    rotate(-30,[0,0,1])      
    cylinder( d = m_trap_m3, h = y_nut_end - y_nut_start, $fn = 6 );    
    
    z_min = min( z, z + 20 * zdir );
    z_max = max( z, z + 20 * zdir );
    
    pos_box( x - m_nut_m3/2, x + m_nut_m3/2,
        y_nut_start, y_nut_end,
        z_min, z_max );
//    negativez_box( x_left_corner-epsilon, x_left_hole,
//                   y_hole_down-m_nut_m3/2,  y_hole_down+m_nut_m3/2,
//                   z_trap_down, z_trap_up );

  //  pos_box( 
    
}

module xsupport( x0, x1, y, z )
{
    pos_box( x0, x1, y_down_corner, y-1, z-1, z+1 );
    pos_box( x0, x1, y-1, y-.1, z-.3, z+.3 );    
}

module zsupport( x, y, z0, z1 )
{
    pos_box( x-1, x+2, y_down_corner, y-1, z0, z1 );
    pos_box( x-.3, x+.3, y-1, y-.1, z0, z1 );    
}

module level2_pos() {
    pos_box( x_battery_start, x_battery_end,
             y_battery_start, y_circuit_support_top,
             z_battery_thold_bot, z_battery_thold_top );
    pos_box( x_battery_start, x_battery_end,
             y_battery_start, y_circuit_support_top,
             z_battery_bhold_bot, z_battery_bhold_top );
    
    // Makes sure battery doesn't slide forward
    pos_box( x_battery_end, x_battery_hold_end,
             y_battery_start, y_circuit_support_top,
             z_battery_bhold_bot, z_battery_thold_top );   
    
    // Front LED holder
    pos_box( x_led_holder_start, x_led_holder_end,
             y_battery_start, y_led_end,
             z_led_bot_wall_start, z_led_top_wall_end );     

    pos_box( x_led_holder_start, x_fled5_start,
             y_battery_start, y_led_end,
             z_led_bot_wall_start, z_led_bot_gap_start);

    pos_box( x_led_holder_start, x_fled5_start,
             y_battery_start, y_led_end,
             z_led_top_gap_end, z_led_top_wall_end );
    
    pos_box( x_circuit_lsupport_s, x_circuit_lsupport_e,
             y_circuit_support_bot, y_circuit_support_top,
             z_circuit_bot, z_circuit_top );
    pos_box( x_circuit_rsupport_s, x_circuit_rsupport_e,
             y_circuit_support_bot, y_circuit_support_top,
             z_circuit_bot, z_circuit_top );  
             
    if ( supports ) {
           
    xsupport( x_circuit_lsupport_s, x_circuit_lsupport_e,
             y_circuit_support_bot,
             -20);
    xsupport( x_circuit_lsupport_s, x_circuit_lsupport_e,
             y_circuit_support_bot,
             -10);
     xsupport( x_circuit_lsupport_s, x_circuit_lsupport_e,
             y_circuit_support_bot,
             0);                        
     xsupport( x_circuit_lsupport_s, x_circuit_lsupport_e,
             y_circuit_support_bot,
             10);  
     xsupport( x_circuit_lsupport_s, x_circuit_lsupport_e,
             y_circuit_support_bot,
             20);                            

     xsupport( x_circuit_rsupport_s, x_circuit_rsupport_e,
             y_circuit_support_bot,
             -20);              
     xsupport( x_circuit_rsupport_s, x_circuit_rsupport_e,
             y_circuit_support_bot,
             -10);              
     xsupport( x_circuit_rsupport_s, x_circuit_rsupport_e,
             y_circuit_support_bot,
             0);                
     xsupport( x_circuit_rsupport_s, x_circuit_rsupport_e,
             y_circuit_support_bot,
             10);   
     xsupport( x_circuit_rsupport_s, x_circuit_rsupport_e,
             y_circuit_support_bot,
             20);               



     zsupport( x_battery_start+30, y_battery_start,
        z_battery_thold_bot, z_battery_thold_top );

     zsupport( x_battery_start+30, y_battery_start,
        z_battery_bhold_bot, z_battery_bhold_top );

     zsupport( x_battery_start+20, y_battery_start,
        z_battery_thold_bot, z_battery_thold_top );

     zsupport( x_battery_start+20, y_battery_start,
        z_battery_bhold_bot, z_battery_bhold_top );

     zsupport( x_battery_start+10, y_battery_start,
        z_battery_thold_bot, z_battery_thold_top );

     zsupport( x_battery_start+10, y_battery_start,
        z_battery_bhold_bot, z_battery_bhold_top );

     zsupport( x_battery_start+0, y_battery_start,
        z_battery_thold_bot, z_battery_thold_top );

     zsupport( x_battery_start+0, y_battery_start,
        z_battery_bhold_bot, z_battery_bhold_top );

     zsupport( x_battery_start+40, y_battery_start,
        z_battery_thold_top-5, z_battery_thold_top );

     zsupport( x_battery_start+40, y_battery_start,
        z_battery_bhold_bot, z_battery_bhold_bot+5 );

     zsupport( x_battery_start+55, y_battery_start,
        z_battery_thold_bot, z_battery_thold_bot+5 );

     zsupport( x_battery_start+55, y_battery_start,
        z_battery_bhold_top-5, z_battery_bhold_top );


     zsupport( x_battery_start+65, y_battery_start,
        z_battery_thold_bot, z_battery_thold_top );

     zsupport( x_battery_start+65, y_battery_start,
        z_battery_bhold_bot, z_battery_bhold_top );
         
     }
         
    screw_pos( x_screw_0, z_screw_0 );
    screw_pos( x_screw_1, z_screw_0 );
    screw_pos( x_screw_1, z_screw_1 );
    screw_pos( x_screw_0, z_screw_1 ); 
}

module level2_neg() {
    screw_neg( x_screw_0, z_screw_0, -1 );
    screw_neg( x_screw_1, z_screw_0, -1 );
    screw_neg( x_screw_1, z_screw_1, 1  );
    screw_neg( x_screw_0, z_screw_1, 1 ); 

    pos_box( x_led_holder_start - epsilon, x_led_holder_end + epsilon,
         y_battery_start, y_circuit_support_top + epsilon,
         z_fled0_start, z_fled0_end );
    pos_box( x_led_holder_start - epsilon, x_led_holder_end + epsilon,
         y_battery_start, y_circuit_support_top + epsilon,
         z_fled1_start, z_fled1_end );    
    pos_box( x_led_holder_start - epsilon, x_led_holder_end + epsilon,
         y_battery_start, y_circuit_support_top + epsilon,
         z_fled2_start, z_fled2_end );     
    pos_box( x_led_holder_start - epsilon, x_led_holder_end + epsilon,
         y_battery_start, y_circuit_support_top + epsilon,
         z_fled3_start, z_fled3_end );     
    
    pos_box( x_fled4_start, x_fled4_end,
         y_battery_start, y_circuit_support_top + epsilon,
         z_led_bot_wall_start - epsilon, z_led_bot_gap_start + epsilon );    
    
    pos_box( x_fled4_start, x_fled4_end,
         y_battery_start, y_circuit_support_top + epsilon,
         z_led_top_gap_end - epsilon, z_led_top_wall_end + epsilon  );    

    pos_box( x_fled5_start, x_fled5_end,
         y_battery_start, y_circuit_support_top + epsilon,
         z_led_bot_wall_start - epsilon, z_led_bot_gap_start + epsilon );    
    
    pos_box( x_fled5_start, x_fled5_end,
         y_battery_start, y_circuit_support_top + epsilon,
         z_led_top_gap_end - epsilon, z_led_top_wall_end + epsilon  );         
    
}

module level2() {
    difference() {
        level2_pos();
        level2_neg();
    }
}


m_rng_width = 45.7+1;
m_rng_circuit = 2;
m_rng_height = 21.3+1;
m_rng_wall = 4;
z_rng_slot = 1;

x_rng_start = x_right_corner;
x_rng_circuit_start = x_rng_start + 5;
x_rng_circuit_end = x_rng_circuit_start + m_rng_circuit;
x_rng_end = x_rng_circuit_start + 10;
z_rng_circuit_start = -m_rng_width/2;
z_rng_start = z_rng_circuit_start- m_rng_wall;
z_rng_circuit_end = m_rng_width/2;
z_rng_end = z_rng_circuit_end + m_rng_wall;
z_rng_void_start = z_rng_circuit_start + z_rng_slot;
z_rng_void_end = z_rng_circuit_end - z_rng_slot;
x_rng_void_start = x_rng_start;
x_rng_void_end = x_rng_start + 10;
y_rng_floor_start = y_down_corner;
y_rng_floor_end = y_rng_floor_start + m_rng_wall;
y_rng_end = y_rng_floor_end + m_rng_height;
z_rng_upper = (41.5/2-10.5/2)-3;
z_rng_lower = -z_rng_upper;
y_circuit_half = y_rng_floor_end + m_rng_height/2;
d_rng = 18;

module rng_neg()
{
    pos_box( x_rng_circuit_start, x_rng_circuit_end,
        y_rng_floor_end, y_rng_end+epsilon,
        z_rng_circuit_start, z_rng_circuit_end );    
    pos_box( x_rng_void_start, x_rng_void_end,
        y_rng_floor_end, y_rng_end+epsilon,
        z_rng_void_start, z_rng_void_end ); 

    translate( [x_rng_circuit_start, y_circuit_half, z_rng_lower ] )
    rotate(90,[0,1,0])
        cylinder( d = d_rng, h = (x_rng_end - x_rng_circuit_start ) + epsilon*2, $fn=30 ); 

    translate( [x_rng_circuit_start, y_circuit_half, z_rng_upper ] )
    rotate(90,[0,1,0])
        cylinder( d = d_rng, h = (x_rng_end - x_rng_circuit_start ) + epsilon*2, $fn=30 );

    pos_box( x_rng_circuit_start, x_rng_end + epsilon,
            y_circuit_half, y_rng_end + epsilon,    
            z_rng_lower - d_rng/2, z_rng_upper + d_rng/2 );
}

module rng_pos()
{
    pos_box( x_rng_start, x_rng_end,
        y_rng_floor_start, y_rng_end,
        z_rng_start, z_rng_end );
   
}

module rng() 
{
    difference() {
        rng_pos();
        rng_neg();
    }
}




module double_holder() {
    translate([0, 0, epsilon ] )
    holder_at_0();   
    mirror([0,0,1])
    translate([0, 0, epsilon ] )     
    holder_at_0();   
}

module gear_with_motor()
{
    color([1,0,0])
   // rotate(180,[0,0,1])
    rotate(180,[1,0,0])
    union() {
        import("gear_with_motor.stl", convexity=3);
        translate([0,20,0])
        rotate(90,[1,0,0])
        cylinder( r = 3, h = 40 );
    }
}

module ball_neg() {
  //  rotate(90,[1,0,0])
    translate([-m_to_back, 0, 0 ])
    pingpong_holder_neg( );
}

module holder_and_ball() {
    double_holder();
    translate([-m_to_back, 0, 0 ])
    pingpong_holder( -x_left_corner - epsilon );
 //   translate([m_to_back, 0, 0 ])
  //  rotate(180,[0,1,0])
  //  pingpong_holder( x_right_corner - epsilon );    
    if ( robot_top ) {
        translate([-44,0,0])
        level2();
    }
}

module shaft_mock() {
    shaft();
    cap();    
}



// gear = 15mm rad max
// max = 94mm diam

x_motor_shaft = -40;
y_motor_center = z_assembly_end - z_lower_shaft_end - 9;
y_motor_end = y_motor_center - 9;
y_motor_start = -y_motor_end;
x_front_holes = x_motor_shaft - m_shaft_to_back_holes;
x_l_motor_support = x_front_holes - assembly_wall;
x_r_motor_support = x_front_holes + assembly_wall;

z_hole_down = - m_shaft_duel_hole_gap / 2;
z_hole_up   = + m_shaft_duel_hole_gap / 2;
z_motor_sup_down = z_hole_down - m_extra_corner;
z_motor_sup_up  = z_hole_up + m_extra_corner+2;

module motor_support_pos() {
    translate([0,0, z_motor_sup_down ] ) {
        linear_extrude( z_motor_sup_up - z_motor_sup_down ) polygon([
            [ x_l_motor_support, y_motor_start ],
            [ x_r_motor_support, y_motor_start ],
            [ x_r_motor_support, y_motor_end ],
            [ x_l_motor_support, y_motor_end ]]);
    }
}

module x_cylinder( rad, height, fn ) {
    rotate( -90,[1,0,0]){
        cylinder( r = rad, h = height, $fn = fn );
    }
}


module x_nut_trap( x, y, z ) {
    translate([ x, y, z ] )
    x_cylinder( m_trap_m3/2, z_trap_up - z_trap_down, 6 );
    negativez_box( x-10,  x,
                   y, y + z_trap_up - z_trap_down,
                   z - m_nut_m3/2, z + m_nut_m3/2 );    
}

module motor_support_neg() {
    translate([ x_front_holes, y_motor_start - epsilon, z_hole_down ] )
    x_cylinder( d_m3/2, y_motor_end - y_motor_start + epsilon*2, 20 );
    translate([ x_front_holes, y_motor_start - epsilon, z_hole_up ] )
    x_cylinder( d_m3/2, y_motor_end - y_motor_start + epsilon*2, 20 );
    
    x_nut_trap( x_front_holes, y_motor_start + 5, z_hole_up );
    x_nut_trap( x_front_holes, y_motor_start + 5, z_hole_down );
    x_nut_trap( x_front_holes, y_motor_end - 5 - (z_trap_up - z_trap_down), z_hole_up );
    x_nut_trap( x_front_holes, y_motor_end - 5- (z_trap_up - z_trap_down), z_hole_down );;
        ball_neg();    
}

module motor_support() {
    difference() {
        motor_support_pos();
        motor_support_neg();
    }
}

module lower_body() {
    motor_support();
    //pingpong_holder(40);
    rotate(90,[1,0,0]) {
        union() {    
            holder_and_ball();
            rng();
            if ( shaft_mock ) {
                translate([0, 0, -z_as5600_assembly_end - epsilon ] )    
                shaft_mock();
                rotate(180,[0,1,0])
                translate([0, 0, -z_as5600_assembly_end - epsilon ] )    
                shaft_mock();    
            }
        }
    }
}

wheel_h = 10;
reinforce=1;

//wheel_diam = 47.3;
//wheel_diam = 48;
//wheel_diam = 49.25;
//wheel_diam = 49.5;
//wheel_diam = 55 + 9.35*2;
//wheel_diam = 55 + 9.35;

// new wheel
//wheel_diam = 36.25;
wheel_diam = 45;

d_coupler_shaft = 6;         // encoder shafe daimater.                  measured
r_coupler_shaft = d_coupler_shaft/2;
m_coupler_shaft_extra = .375;     // extra space for shaft hole.              estimated
m_coupler_side_extra_gap = 1.1;
to_flat_bit = 4.45;     // distance from edge to flat bit on shaft  measured
coupler_outer_wall = 2; // amount of meaterial around the shaft. 

r_motor_coupler_inner_wall = d_motor_coupler_inner_wall / 2;
//z_motor_coupler_height = wheel_h + 6.5 + reinforce;
z_motor_coupler_height = wheel_h + 10 + reinforce;
//x_motor_coupler_flat_edge = 2.5;
//x_motor_coupler_flat_edge = 2.25;  // samples
//x_motor_coupler_flat_edge = 2.15;  // viable
//x_motor_coupler_flat_edge = 2.05;  // viable
//x_motor_coupler_flat_edge = 1.95;  // viable
x_motor_coupler_flat_edge = 1.85;  // viable

z_shaft_height = 13;    // measured

d_coupler_inner_wall = d_coupler_shaft + m_coupler_shaft_extra;
r_coupler_inner_wall = d_coupler_inner_wall / 2;
x_coupler_flat_edge = -r_coupler_shaft + to_flat_bit + m_coupler_side_extra_gap;



module ring( depth, inner_diam, wall ) {
    rotate_extrude($fn=75) polygon( points=[
        [inner_diam/2, 0 ],
        [inner_diam/2, depth],
        [inner_diam/2+wall, depth ],
        [inner_diam/2+wall, 0 ]]);
}

module encoder_coupler()
{
    ring( z_shaft_height, d_coupler_inner_wall, coupler_outer_wall );
    linear_extrude( height = z_shaft_height ) polygon( points=[
        [ x_coupler_flat_edge, -r_coupler_inner_wall ],
        [ x_coupler_flat_edge,  r_coupler_inner_wall ],
        [ r_coupler_inner_wall,                 r_coupler_inner_wall ],
        [ r_coupler_inner_wall,                -r_coupler_inner_wall ]    
    ]);
}

module motor_coupler()
{
    ring( z_motor_coupler_height, d_motor_coupler_inner_wall, coupler_outer_wall );    

    linear_extrude( height = z_motor_coupler_height ) polygon( points=[
        [ x_motor_coupler_flat_edge, -r_motor_coupler_inner_wall ],
        [ x_motor_coupler_flat_edge,  r_motor_coupler_inner_wall ],
        [ r_motor_coupler_inner_wall,                 r_coupler_inner_wall ],
        [ r_motor_coupler_inner_wall,                -r_coupler_inner_wall ]    
    ]);    
    linear_extrude( height = z_motor_coupler_height ) polygon( points=[
        [ -x_motor_coupler_flat_edge, -r_motor_coupler_inner_wall ],
        [ -x_motor_coupler_flat_edge,  r_motor_coupler_inner_wall ],
        [ -r_motor_coupler_inner_wall,                 r_coupler_inner_wall ],
        [ -r_motor_coupler_inner_wall,                -r_coupler_inner_wall ]    
    ]);    
    
}


wheel_rim_h = 1.35;
wheel_rim_w = 2;

wheel_wall=2;

include <wheel_gear.scad>

module style_pulley() {
        ring( wheel_rim_h, wheel_diam-4, wheel_rim_w+2 );
    intersection() {
    wheel_pulley();   
ring( wheel_h + reinforce+6, wheel_diam - wheel_wall*2, wheel_wall+10 );  
    }
for( zup = [ 0 : .15 : 1 ] ) {
translate([0,0,9 + zup])
ring( .2, wheel_diam-4, 2+wheel_rim_w * (zup + .2) / 1.2 );
}    
}

module plastic_wheel()
{
    style_pulley();
    cap();
    translate([0,0,10])
    union() {   
        ring( wheel_h + reinforce, wheel_diam - wheel_wall*2, wheel_wall );
        ring( wheel_rim_h, wheel_diam, wheel_rim_w );
        for( zup = [ 0 : .15 : 1 ] ) {
            translate([0,0,wheel_h-wheel_rim_h + zup])
            ring( .2, wheel_diam, wheel_rim_w * (zup + .2) / 1.2 );
        }
        translate([0,0,wheel_h-wheel_rim_h+1])
        ring( wheel_rim_h-1+reinforce, wheel_diam, wheel_rim_w );
//motor_coupler();
    }

for( angle = [ 0 : 60 : 360 ] )
{
    rotate( angle, [0, 0, 1 ] ) {
      linear_extrude( height = wheel_h*2 ) polygon( points=[
        [ d_motor_coupler_inner_wall/2+2, -1 ],
        [ wheel_diam/2-1, -1 ],
        [ wheel_diam/2-1, 1 ],
        [ d_motor_coupler_inner_wall/2+2, 1 ] ]
        );          
    }
}
}

module rubber_wheel_pos()
{
    zbot = wheel_rim_h;
    ztop = wheel_h-wheel_rim_h+1-.2;
    zdiff = ztop - zbot;
    
    for ( z = [ zbot : .2 : ztop ] ) {
        range = ( z - zbot ) / zdiff;
        extra = sin( range * 180 ) * 2;
        translate( [0, 0, z ] )
        ring( .2, wheel_diam + extra*2, 2  );         
    }
}

module rubber_wheel()
{
    difference() {
        rubber_wheel_pos();
        plastic_wheel();
    }
}

//intersection() {
//plastic_wheel();
// translate([0,0,-1])
// cylinder( r = 10, h = 50 );   
//}
//color([.5,.5,.5])
//rubber_wheel();


if ( robot_bot ) {
    lower_body();
}

if ( magnet_shaft ) {
    rotate(180,[1,0,0])
    shaft();
}
//translate([35,0,0])

if ( wheel ) {
    plastic_wheel();
}

if ( motor_gear ) {
    motor_pulley();
}

if ( mocks ) {
    translate([x_motor_shaft, -y_motor_center, 0])
    gear_with_motor();

    translate([x_motor_shaft, y_motor_center,0])
    gear_with_motor();
}

//battery_mock();
//cap();

