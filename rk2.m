function y = rk2(f, x, y, dx)
%y = RK2(f, x, y, dx)
%   Runge-Kutta 2nd-order integration
%   dy/dx = f(x, y)
%   
%   Inputs:
%   - f = Derivative function
%   - y = Current output
%   - dx = Input delta
%   
%   Outputs:
%   - y = Next output

k1 = dx*f(x, y);
k2 = dx*f(x + 0.5*dx, y + 0.5*k1);
y = y + k2;

end