syms theta phi psi

%syms phi
%syms omega
R_x = [1 0 0; 0 cos(phi) -sin(phi); 0 sin(phi) cos(phi)];
R_y = [cos(theta) 0 sin(theta); 0 1 0; -sin(theta) 0 cos(theta)];
R_z = [cos(psi) -sin(psi) 0; sin(psi) cos(psi) 0; 0 0 1];
R=R_z*R_y*R_x

J = [1 sin(phi)*tan(theta) cos(phi)*tan(theta); 0 cos(phi) -sin(phi); 0 sin(phi)/cos(theta) cos(phi)/cos(theta)];

d = det(J)
Y = inv(J)

e =   1/cos(theta)
solve(e ==1, theta)

syms t

a_x=1
a_y=-1
b_x=1
b_y=1
psi_0=1
psi_dot=1

x_dot = a_x*cos(psi_dot*t+psi_0)+b_x*sin(psi_dot*t+psi_0)
y_dot = a_y*cos(psi_dot*t+psi_0)+b_y*sin(psi_dot*t+psi_0)
z_dot = psi_0*t

ezplot3(x_dot,y_dot,z_dot, [0 20] , 'animate')

%[x_dot y_dot]=[a_x b_x; -b_x a_x]*[cos((psi_dot)*(t+psi_0))); (sin((psi_dot*t)+(psi_0))]