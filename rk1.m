function y = rk1(f, x, y, dx)
%y = RK1(f, x, y, dx)
%   Runge-Kutta 1st-order integration
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
y = y + k1;

end