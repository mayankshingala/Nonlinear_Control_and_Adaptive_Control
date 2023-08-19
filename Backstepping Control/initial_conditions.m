%% initial_conditions

J = diag([2 3 1]);          % Inertia matrix
K = diag([0.2 0.2 0.2]);

d0 = [0.1; 0.2; -0.2];      % Initial Rodrigues parameters
w0 = [0.3; 0.1; -0.4];      % Initial Angular velocities

y0 = [d0; w0];              % Combined matrix of Rodrigues parameters & Angular velocities