function y = rk4(f, x, y, dx)
%y = RK4(f, x, y, dx)
%   Runge-Kutta 4th-order integration
%   dy/dx = f(x, y)
%   
%   Inputs:
%   - f = Derivative function
%   - y = Current output
%   - dx = Input delta
%   
%   Outputs:
%   - y = Next output

% Constants for speed
persistent inv_3 inv_6
if isempty(inv_3), inv_3 = 1/3; end
if isempty(inv_6), inv_6 = 1/6; end

% RK4 integration
x_half = x + 0.5*dx;
k1 = dx*f(x, y);
k2 = dx*f(x_half, y + 0.5*k1);
k3 = dx*f(x_half, y + 0.5*k2);
k4 = dx*f(x + dx, y + k3);
y = y + inv_6*(k1 + k4) + inv_3*(k2 + k3);

end