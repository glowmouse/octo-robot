m_length = 20.8;
m_width = 15.7;
m_screw_gap = 15.3;
m_edge_to_screw = (20.8-15.3)/2;
m_screw = 3.5;
m_dupont_width = 2.54;
m_gap = .5;
epsilon = .0001;
m_nut_m3 = 5.9;
m_trap_m3 = m_nut_m3/cos(30); // 5.5 = measured across nut
m_m3_nut_height = 2.8;
m_y_bonus = 2;

z_circuit = 0;
z_gyro = 12;
z_d_trap = z_circuit + 8;
z_u_trap = z_d_trap + m_m3_nut_height;

x_l_edge = -m_width/2;
x_r_edge = m_width/2-m_dupont_width-m_gap;
y_b_edge = -m_length/2 - m_y_bonus;
y_t_edge = m_length/2 + m_y_bonus;

x_l_screw = x_l_edge + m_edge_to_screw;
y_t_screw = y_t_edge - m_edge_to_screw - m_y_bonus;
y_b_screw = y_b_edge + m_edge_to_screw + m_y_bonus;

module box( x0, x1, y0, y1, z0, z1 ) {
    translate([0, 0, z0 ] ) {
        linear_extrude( z1-z0 ) polygon([
            [ x0, y0 ],
            [ x1, y0 ],
            [ x1, y1 ],
            [ x0, y1 ]
        ]);
    }
}

module my_cylinder( x, y, z0, z1, diameter, fna ) {
    translate([ x, y, z0 ] ) {
        cylinder( d = diameter, h = z1-z0, $fn = fna );
    }
}

module screw_neg( x, y) {
    my_cylinder( x, y, z_circuit - epsilon, z_gyro + epsilon, m_screw, 20 );
    my_cylinder( x, y, z_d_trap, z_u_trap, m_trap_m3, 6 );
    y_trap = ( y < 0 ) ? y - 10 : y + 10;
    box( x_l_edge - epsilon, x, y - m_nut_m3/2, y + m_nut_m3/2, z_d_trap, z_u_trap );
}


module holder_neg() {
    screw_neg( x_l_screw, y_t_screw );
    screw_neg( x_l_screw, y_b_screw );
}

module holder_pos() {
    box( x_l_edge, x_r_edge, y_b_edge, y_t_edge, z_circuit, z_gyro );
}

module holder() {
    difference() {
        holder_pos();
        holder_neg();
    }
}


holder();

