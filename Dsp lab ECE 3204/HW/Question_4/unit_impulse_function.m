function y = unit_impulse_function(n)
y = 0 * n;
y(find(n == 0)) = 1;